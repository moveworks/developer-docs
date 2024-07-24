from fastapi import FastAPI, HTTPException, Path
from fastapi.responses import JSONResponse
import requests
from datetime import datetime, timedelta
from pydantic import BaseModel
from typing import List, Optional
import httpx

app = FastAPI()


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


AUTH_URL = (
    "https://wd2-impl-services1.workday.com/ccx/oauth2/{workday_instance_id}/token"
)
# Basic Auth credentials should be securely managed, not hard-coded
BASIC_AUTH_HEADER = "Basic REDACTED" # Replace with your base64 encoded username and password
REFRESH_TOKEN = "REDACTED" # Replace with your refresh token
WORKER_DETAILS_URL = "https://wd2-impl-services1.workday.com/ccx/api/wql/v1/{workday_instance_id}/data"
PTO_REQUEST_URL_TEMPLATE = "https://wd2-impl-services1.workday.com/ccx/api/absenceManagement/v1/{workday_instance_id}/workers/{worker_id}/requestTimeOff"


@app.get("/auth")
async def auth():
    payload = "grant_type=refresh_token&refresh_token=" + REFRESH_TOKEN
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        "Authorization": BASIC_AUTH_HEADER,
    }
    response = requests.post(AUTH_URL, headers=headers, data=payload)
    if response.status_code != 200:
        raise HTTPException(
            status_code=response.status_code, detail="Failed to authenticate"
        )
    return response.json()


@app.get("/workers/{email}/time-off", response_model=WorkerQueryResponse)
async def get_worker_details(email: str):
    auth_response = await auth()
    access_token = auth_response.get("access_token")

    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {access_token}",
    }
    query = (
        f"SELECT workdayID, fullName, email_PrimaryWork, position, allEligibleTimeOffsForWorker "
        f"FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = false, isActive = false) "
        f"WHERE email_PrimaryWork = '{email}'"
    )
    response = requests.post(
        WORKER_DETAILS_URL, headers=headers, json={"query": query}
    )
    if response.status_code != 200:
        raise HTTPException(
            status_code=response.status_code,
            detail="Failed to retrieve worker details",
        )
    return response.json()


async def request_time_off(
    email: str,
    start_date: str,
    time_off_type_id: str,
    end_date: str = None,
    start_time: str = None,
    end_time: str = None,
    comment: str = None,
):
    # Step 1: Authenticate and get access token
    async with httpx.AsyncClient() as client:
        auth_response = await client.get(
            "https://socially-active-unicorn.ngrok-free.app/auth"
        )
        access_token = auth_response.json().get("access_token")

        # Step 2: Fetch worker details
        time_off_headers = {"Authorization": f"Bearer {access_token}"}
        worker_response = await client.get(
            f"https://socially-active-unicorn.ngrok-free.app/workers/{email}/time-off",
            headers=time_off_headers,
        )
        worker_response_data = worker_response.json()["data"]
        if not worker_response_data:
            raise HTTPException(status_code=404, detail="Worker not found")

        # Proceed with the first worker if the list is not empty
        worker_data = worker_response_data[0]
        worker_id = worker_data["workdayID"]
        position_id = worker_data["position"]["id"]
        position_descriptor = worker_data["position"]["descriptor"]

        # Steps 3 and 4: Construct the days array and make the request to the time off API
        # (Remain unchanged, except for using `await client.post` instead of `requests.post`)
        start_date_obj = datetime.strptime(start_date, "%Y-%m-%d")
        end_date_obj = (
            datetime.strptime(end_date, "%Y-%m-%d")
            if end_date
            else start_date_obj
        )
        days = []
        delta = timedelta(days=1)
        while start_date_obj <= end_date_obj:
            day = {
                "date": start_date_obj.strftime("%Y-%m-%d"),
                "dailyQuantity": 8,  # Assuming a full day's quantity here; adjust as necessary
                "timeOffType": {"id": time_off_type_id},
                "position": {
                    "id": position_id,
                    "descriptor": position_descriptor,
                },
            }
            if comment:
                day["comment"] = comment
            days.append(day)
            start_date_obj += delta

        time_off_payload = {"days": days}
        time_off_url = f"https://wd2-impl-services1.workday.com/ccx/api/absenceManagement/v1/{workday_instance_id}/workers/{worker_id}/requestTimeOff"

        time_off_response = await client.post(
            time_off_url, headers=time_off_headers, json=time_off_payload
        )

    return time_off_response.json()


@app.post("/workers/{email}/time-off")
async def create_time_off_request(
    email: str = Path(..., description="The email of the worker"),
    time_off_request: TimeOffRequest = None,
):
    try:
        # Use the provided email and details from the request body
        response = await request_time_off(
            email=email,
            start_date=time_off_request.start_date,
            time_off_type_id=time_off_request.time_off_type_id,
            end_date=time_off_request.end_date,
            comment=time_off_request.comment,
        )
        return response
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


@app.get("/")
async def root():
    # Add return headers to enable CORS
    content = {"text": "Hello World"}
    headers = {"Content-Type": "application/json"}
    return JSONResponse(content=content, headers=headers)
    content = {"text": "Hello World"}
    headers = {"Content-Type": "application/json"}
    return JSONResponse(content=content, headers=headers)

