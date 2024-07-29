from fastapi import FastAPI, HTTPException, Path
from fastapi.responses import JSONResponse
import requests
from datetime import datetime, timedelta
from pydantic import BaseModel
from typing import List, Optional
import httpx

# Create an instance of the FastAPI application
app = FastAPI()

# Define data models using Pydantic

class AuthResponse(BaseModel):
    """Model for authentication response"""
    access_token: str
    token_type: str
    refresh_token: str

class WorkerQueryRequest(BaseModel):
    """Model for worker query request"""
    query: str

class Worker(BaseModel):
    """Model representing a worker's details"""
    workdayID: str
    fullName: str
    email_PrimaryWork: str
    position: dict
    allEligibleTimeOffsForWorker: List[dict]

class WorkerQueryResponse(BaseModel):
    """Model for worker query response"""
    total: int
    data: List[Worker]

class TimeOffDay(BaseModel):
    """Model for a single day of time off"""
    date: str
    dailyQuantity: int
    comment: str
    timeOffType: dict
    position: dict

class TimeOffRequest(BaseModel):
    """Model for a time off request"""
    start_date: str
    time_off_type_id: str
    end_date: Optional[str] = None
    comment: Optional[str] = None

class TimeOffResponseDay(BaseModel):
    """Model for a single day in the time off response"""
    id: str
    descriptor: str
    dailyQuantity: str
    comment: str
    position: dict
    date: str
    timeOffType: dict

class TimeOffResponse(BaseModel):
    """Model for the time off response"""
    businessProcessParameters: dict
    days: List[TimeOffResponseDay]

# Constants for API URLs and authentication. Please store username and password securely inside environment variables.
AUTH_URL = "https://{tenant}.workday.com/ccx/oauth2/{org}/token"  # Replace with your Workday org id and tenant
BASIC_AUTH_HEADER = "Basic REDACTED"  # Replace with your base64 encoded username:password. You can use tools like https://mixedanalytics.com/tools/basic-authentication-generator/ to generate the base64 encoded string.
REFRESH_TOKEN = "REDACTED"  # Replace with your refresh token
WORKER_DETAILS_URL = "https://{tenant}.workday.com/ccx/api/wql/v1/{org}/data"  # Replace with your Workday org id and tenant
PTO_REQUEST_URL_TEMPLATE = "https://{tenant}.workday.com/ccx/api/absenceManagement/v1/{org}/workers/{worker_id}/requestTimeOff"  # Replace with your Workday org id and tenant

@app.get("/auth")
async def auth():
    """
    Authenticate with the Workday API using a refresh token.
    
    Returns:
        JSON response containing the access token if successful.
    """
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
    """
    Retrieve worker details including their eligible time offs using their email.
    
    Args:
        email (str): The email of the worker.
    
    Returns:
        JSON response containing worker details.
    """
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
    """
    Request time off for a worker.
    
    Args:
        email (str): The email of the worker.
        start_date (str): The start date of the time off.
        time_off_type_id (str): The ID of the time off type.
        end_date (str, optional): The end date of the time off.
        start_time (str, optional): The start time of the time off.
        end_time (str, optional): The end time of the time off.
        comment (str, optional): Additional comments for the time off request.
    
    Returns:
        JSON response from the time off request API.
    """
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
        time_off_url = PTO_REQUEST_URL_TEMPLATE

        time_off_response = await client.post(
            time_off_url, headers=time_off_headers, json=time_off_payload
        )

    return time_off_response.json()

@app.post("/workers/{email}/time-off")
async def create_time_off_request(
    email: str = Path(..., description="The email of the worker"),
    time_off_request: TimeOffRequest = None,
):
    """
    Endpoint to create a time off request for a worker.
    
    Args:
        email (str): The email of the worker.
        time_off_request (TimeOffRequest): The time off request details.
    
    Returns:
        JSON response from the time off request API.
    """
    try:
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
    """
    Root endpoint to test the API.
    
    Returns:
        JSON response which validates the API is working.
    """
    content = {"text": "Hello World"}
    headers = {"Content-Type": "application/json"}
    return JSONResponse(content=content, headers=headers)

