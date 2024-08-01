import os
from datetime import datetime, timedelta
from typing import List, Optional
from fastapi import FastAPI, HTTPException, Path, Response
from fastapi.responses import JSONResponse
from pydantic import BaseModel
import requests
import httpx
import logging
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Initialize FastAPI application
app = FastAPI()

# Initialize logger
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)
console_handler = logging.StreamHandler()
console_handler.setLevel(logging.DEBUG)
formatter = logging.Formatter(
    "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
)
console_handler.setFormatter(formatter)
logger.addHandler(console_handler)

# Configuration constants
AUTH_URL = (
    "https://wd2-impl-services1.workday.com/ccx/oauth2/baincapital_gms4/token"
)
BASIC_AUTH_HEADER = os.getenv("BASIC_AUTH_HEADER")
REFRESH_TOKEN = os.getenv("REFRESH_TOKEN")
WORKER_DETAILS_URL = "https://wd2-impl-services1.workday.com/ccx/api/wql/v1/baincapital_gms4/data"
PTO_REQUEST_URL_TEMPLATE = "https://wd2-impl-services1.workday.com/ccx/api/absenceManagement/v1/baincapital_gms4/workers/{worker_id}/requestTimeOff"


# Models
class AuthResponse(BaseModel):
    access_token: str
    token_type: str
    refresh_token: str


class WorkerQueryRequest(BaseModel):
    query: str


class Worker(BaseModel):
    workdayID: str
    fullName: str
    email_PrimaryWork: str
    position: dict
    allEligibleTimeOffsForWorker: List[dict]


class WorkerQueryResponse(BaseModel):
    total: int
    data: List[Worker]


class FlattenedWorkerDetail(BaseModel):
    workdayID: str
    fullName: str
    email_PrimaryWork: str
    position_descriptor: str
    position_id: str
    timeOff_descriptor: str
    timeOff_id: str


class FlattenedWorkerQueryResponse(BaseModel):
    total: int
    data: List[FlattenedWorkerDetail]


class TimeOffDay(BaseModel):
    date: str
    dailyQuantity: int
    comment: str
    timeOffType: dict
    position: dict


class TimeOffRequest(BaseModel):
    start_date: str
    time_off_type_id: str
    end_date: Optional[str] = None
    comment: Optional[str] = None


class TimeOffResponseDay(BaseModel):
    id: str
    descriptor: str
    dailyQuantity: str
    comment: str
    position: dict
    date: str
    timeOffType: dict


class TimeOffResponse(BaseModel):
    businessProcessParameters: dict
    days: List[TimeOffResponseDay]


# Helper functions
def authenticate() -> dict:
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        "Authorization": BASIC_AUTH_HEADER,
    }
    payload = f"grant_type=refresh_token&refresh_token={REFRESH_TOKEN}"

    response = requests.post(AUTH_URL, headers=headers, data=payload)
    response.raise_for_status()

    return response.json()


def construct_query(email: str) -> str:
    return f"""
        SELECT workdayID, fullName, email_PrimaryWork, position, allEligibleTimeOffsForWorker
        FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = false, isActive = false)
        WHERE email_PrimaryWork = '{email}'
    """


async def fetch_worker_details(email: str, access_token: str) -> List[Worker]:
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {access_token}",
    }
    query = construct_query(email)

    async with httpx.AsyncClient() as client:
        response = await client.post(
            WORKER_DETAILS_URL, headers=headers, json={"query": query}
        )
        response.raise_for_status()
        return response.json()["data"]


def flatten_worker_data(data: List[Worker]) -> List[FlattenedWorkerDetail]:
    flattened_data = []

    for worker in data:
        worker_info = {
            "workdayID": worker["workdayID"],
            "fullName": worker["fullName"],
            "email_PrimaryWork": worker["email_PrimaryWork"],
            "position_descriptor": worker["position"]["descriptor"],
            "position_id": worker["position"]["id"],
        }
        for time_off in worker.get("allEligibleTimeOffsForWorker", []):
            flattened_data.append(
                {
                    **worker_info,
                    "timeOff_descriptor": time_off["descriptor"],
                    "timeOff_id": time_off["id"],
                }
            )

    return flattened_data


async def request_time_off(
    email: str,
    start_date: str,
    time_off_type_id: str,
    end_date: str = None,
    comment: str = None,
) -> dict:
    try:
        async with httpx.AsyncClient() as client:
            # Step 1: Authenticate and get access token
            auth_response = await client.get(
                "https://socially-active-unicorn.ngrok-free.app/auth"
            )
            auth_response.raise_for_status()
            access_token = auth_response.json().get("access_token")

            # Step 2: Fetch worker details
            worker_response = await client.get(
                f"https://socially-active-unicorn.ngrok-free.app/workers/{email}/time-off",
                headers={"Authorization": f"Bearer {access_token}"},
            )
            worker_response.raise_for_status()
            worker_response_data = worker_response.json()["data"]
            if not worker_response_data:
                raise HTTPException(status_code=404, detail="Worker not found")

            worker_data = worker_response_data[0]
            worker_id = worker_data["workdayID"]
            position_id = worker_data["position_id"]
            position_descriptor = worker_data["position_descriptor"]

            # Create time-off days array
            days = create_time_off_days(
                start_date,
                end_date,
                time_off_type_id,
                position_id,
                position_descriptor,
                comment,
            )

            # Make the request to the time-off API
            time_off_payload = {"days": days}
            time_off_url = PTO_REQUEST_URL_TEMPLATE.format(worker_id=worker_id)
            time_off_response = await client.post(
                time_off_url,
                headers={"Authorization": f"Bearer {access_token}"},
                json=time_off_payload,
            )
            time_off_response.raise_for_status()

        return time_off_response.json()
    except Exception as e:
        logger.exception("Failed to request time off")
        raise HTTPException(status_code=500, detail=str(e))


def create_time_off_days(
    start_date: str,
    end_date: Optional[str],
    time_off_type_id: str,
    position_id: str,
    position_descriptor: str,
    comment: Optional[str],
) -> List[dict]:
    start_date_obj = datetime.strptime(start_date, "%Y-%m-%d")
    end_date_obj = (
        datetime.strptime(end_date, "%Y-%m-%d") if end_date else start_date_obj
    )
    delta = timedelta(days=1)
    days = []

    while start_date_obj <= end_date_obj:
        day = {
            "date": start_date_obj.strftime("%Y-%m-%d"),
            "dailyQuantity": 8,  # Assuming a full day's quantity here; adjust as necessary
            "timeOffType": {"id": time_off_type_id},
            "position": {"id": position_id, "descriptor": position_descriptor},
            "comment": comment or "Time off request submitted by Moveworks 🤖",
        }
        days.append(day)
        start_date_obj += delta

    return days


# Endpoint handlers
@app.get("/auth")
async def auth():
    try:
        response = authenticate()
        return response
    except requests.exceptions.RequestException as e:
        logger.exception("Failed to authenticate")
        raise HTTPException(status_code=500, detail=str(e))


@app.get(
    "/workers/{email}/time-off", response_model=FlattenedWorkerQueryResponse
)
async def get_worker_details(email: str):
    try:
        auth_response = authenticate()  # Synchronous call
        access_token = auth_response["access_token"]

        worker_data = await fetch_worker_details(email, access_token)
        flattened_data = flatten_worker_data(worker_data)

        content = {"total": len(flattened_data), "data": flattened_data}
        return JSONResponse(
            content=content,
            headers={"Content-Type": "application/json"},
            status_code=200,
        )
    except Exception as e:
        logger.exception("Failed to get worker details")
        raise HTTPException(status_code=500, detail=str(e))


@app.post("/workers/{email}/time-off")
async def create_time_off_request(
    email: str, time_off_request: TimeOffRequest
):
    try:
        response = await request_time_off(
            email=email,
            start_date=time_off_request.start_date,
            time_off_type_id=time_off_request.time_off_type_id,
            end_date=time_off_request.end_date,
            comment=time_off_request.comment,
        )
        return JSONResponse(
            content=response,
            headers={"Content-Type": "application/json"},
            status_code=201,
        )
    except HTTPException as e:
        raise HTTPException(status_code=e.status_code, detail=e.detail)
    except Exception as e:
        logger.exception("Failed to create time off request")
        raise HTTPException(status_code=500, detail=str(e))


@app.get("/")
async def root():
    return JSONResponse(
        content={"text": "Hello World"},
        headers={"Content-Type": "application/json"},
        status_code=200,
    )
    headers = {"Content-Type": "application/json"}
    return JSONResponse(content=content, headers=headers, status_code=200)
