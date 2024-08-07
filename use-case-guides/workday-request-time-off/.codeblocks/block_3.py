import os
from datetime import date, timedelta
from typing import List, Optional, Dict
import base64
import httpx
from fastapi import FastAPI, HTTPException
from fastapi.responses import JSONResponse
from pydantic import BaseModel, Field
from dotenv import load_dotenv

load_dotenv()

app = FastAPI()

# Sets up configuration variables. You will need to specify these variables in your middleware tool.
# 1. Client ID
# 2. Client Secret
# 3. Refresh Token
# 4. Workday Instance (e.g. wd2-impl-services1)
# 5. Organization (e.g. acme)
class Config:
    CLIENT_ID = os.getenv("CLIENT_ID")
    CLIENT_SECRET = os.getenv("CLIENT_SECRET")
    REFRESH_TOKEN = os.getenv("REFRESH_TOKEN")
    INSTANCE = os.getenv("INSTANCE")
    ORG = os.getenv("ORG")
    AUTH_URL = f"https://{INSTANCE}.workday.com/ccx/oauth2/{ORG}/token"
    WORKER_DETAILS_URL = (
        f"https://{INSTANCE}.workday.com/ccx/api/wql/v1/{ORG}/data"
    )
    PTO_REQUEST_URL_TEMPLATE = f"https://{INSTANCE}.workday.com/ccx/api/absenceManagement/v1/{ORG}/workers/{worker_id}/requestTimeOff"

    @property
    def basic_auth_header(self) -> str:
        credentials = f"{self.CLIENT_ID}:{self.CLIENT_SECRET}"
        b64_credentials = base64.b64encode(credentials.encode("utf-8")).decode(
            "utf-8"
        )
        return f"Basic {b64_credentials}"


config = Config()

# Data Models of API Requests and Responses for Input Validation
class WorkerDetail(BaseModel):
    workday_id: str
    full_name: str
    email: str
    position_descriptor: str
    position_id: str
    time_off_descriptor: str
    time_off_id: str


class WorkerResponse(BaseModel):
    total: int
    data: List[WorkerDetail]


class TimeOffRequest(BaseModel):
    start_date: date
    time_off_type_id: str
    end_date: Optional[date] = None
    comment: Optional[str] = None

    def __post_init__(self):
        if self.end_date is None:
            self.end_date = self.start_date

# Helper functions
async def get_access_token() -> str:
    async with httpx.AsyncClient() as client:
        response = await client.post(
            config.AUTH_URL,
            headers={
                "Content-Type": "application/x-www-form-urlencoded",
                "Authorization": config.basic_auth_header,
            },
            data=f"grant_type=refresh_token&refresh_token={config.REFRESH_TOKEN}",
        )
        response.raise_for_status()
        return response.json()["access_token"]


def create_worker_query(email: str) -> str:
    return f"""
        SELECT workdayID, fullName, email_PrimaryWork, position, allEligibleTimeOffsForWorker
        FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = false, isActive = false)
        WHERE email_PrimaryWork = '{email}'
    """


async def fetch_worker_details(email: str, access_token: str) -> List[Dict]:
    async with httpx.AsyncClient() as client:
        response = await client.post(
            config.WORKER_DETAILS_URL,
            headers={
                "Content-Type": "application/json",
                "Authorization": f"Bearer {access_token}",
            },
            json={"query": create_worker_query(email)},
        )
        response.raise_for_status()
        return response.json()["data"]


def process_worker_data(raw_data: List[Dict]) -> List[WorkerDetail]:
    return [
        WorkerDetail(
            workday_id=worker["workdayID"],
            full_name=worker["fullName"],
            email=worker["email_PrimaryWork"],
            position_descriptor=worker["position"]["descriptor"],
            position_id=worker["position"]["id"],
            time_off_descriptor=time_off["descriptor"],
            time_off_id=time_off["id"],
        )
        for worker in raw_data
        for time_off in worker.get("allEligibleTimeOffsForWorker", [])
    ]


def create_time_off_days(
    request: TimeOffRequest, position_id: str, position_descriptor: str
) -> List[Dict]:
    return [
        {
            "date": current_date.isoformat(),
            "dailyQuantity": 8,
            "timeOffType": {"id": request.time_off_type_id},
            "position": {"id": position_id, "descriptor": position_descriptor},
            "comment": request.comment
            or "Time off request submitted by Moveworks 🤖",
        }
        for current_date in (
            request.start_date + timedelta(n)
            for n in range((request.end_date - request.start_date).days + 1)
        )
    ]


async def submit_time_off_request(
    worker_id: str, days: List[Dict], access_token: str
) -> Dict:
    async with httpx.AsyncClient() as client:
        response = await client.post(
            config.PTO_REQUEST_URL_TEMPLATE.format(worker_id=worker_id),
            headers={"Authorization": f"Bearer {access_token}"},
            json={"days": days},
        )
        response.raise_for_status()
        return response.json()

# HTTP Routes
@app.get("/auth")
async def auth_endpoint():
    try:
        access_token = await get_access_token()
        return {"access_token": access_token}
    except httpx.HTTPError as e:
        raise HTTPException(
            status_code=500, detail=f"Authentication failed"
        ) from e


@app.get("/workers/{email}/time-off", response_model=WorkerResponse)
async def get_worker_details_endpoint(email: str):
    try:
        access_token = await get_access_token() # Remove this line if you are using the auth_endpoint
        raw_data = await fetch_worker_details(email, access_token)
        processed_data = process_worker_data(raw_data)
        return WorkerResponse(total=len(processed_data), data=processed_data)
    except httpx.HTTPError as e:
        raise HTTPException(
            status_code=500, detail="Failed to fetch worker details"
        ) from e


@app.post("/workers/{email}/time-off")
async def create_time_off_request_endpoint(
    email: str, request: TimeOffRequest
):
    try:
        access_token = await get_access_token() # Remove this line if you are using the auth_endpoint
        worker_data = await fetch_worker_details(email, access_token)
        if not worker_data:
            raise HTTPException(status_code=404, detail="Worker not found")

        worker = worker_data[0]
        days = create_time_off_days(
            request, worker["position"]["id"], worker["position"]["descriptor"]
        )
        response = await submit_time_off_request(
            worker["workdayID"], days, access_token
        )
        return JSONResponse(content=response, status_code=201)
    except httpx.HTTPError as e:
        raise HTTPException(
            status_code=500, detail="Failed to create time off request"
        ) from e


@app.get("/")
async def root():
    return {"message": "Time Off Request API"}
