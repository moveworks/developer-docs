import os
import time
from xml.etree import ElementTree
from lxml.etree import XMLParser
from fastapi import FastAPI, HTTPException, Request, BackgroundTasks
from fastapi.responses import JSONResponse
from pydantic import BaseModel, Field
from collections import UserDict
from typing import Any, Dict, Iterable, Optional, Tuple, Union, List
from urllib.parse import urlencode
import sqlite3
from datetime import datetime, timezone
from contextlib import asynccontextmanager
import asyncio
import httpx
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Config
SAILPOINT_CLIENT_ID = os.getenv("sailpoint_client_id")
SAILPOINT_CLIENT_SECRET = os.getenv("sailpoint_client_secret")
SAILPOINT_BASE_URL = os.getenv("sailpoint_base_url")
MOVEWORKS_BASE_URL = "https://api.moveworks.ai"
DATABASE_NAME = "pending_approvals.db"
EVENT_ID = os.getenv("event_id")
EVENT_API_KEY = os.getenv("event_api_key")
POLLING_INTERVAL = 60  # number of seconds to wait between polling

# Global variable to store the token and its expiration time
oauth_token = None
token_expiration_time = 0

# Database setup
def init_db():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        """
        CREATE TABLE IF NOT EXISTS pending_approvals (
            approval_id TEXT PRIMARY KEY,
            submit_date TEXT
        )
    """
    )
    conn.commit()
    conn.close()

init_db()

# Pydantic models for request validation
class NotificationContext(BaseModel):
    approval_id: str

class NotificationRequest(BaseModel):
    message: str = Field(..., min_length=1)
    recipients: List[str] = Field(..., min_items=1)
    context: Optional[NotificationContext] = None

# While using xml.ElementTree.fromstring is still vulnerable to the billion laughs attack/other DOS style attacks, we accept the risk due to this not being directly exposed to users
def safe_parse(doc: str) -> ElementTree.Element:
    return ElementTree.fromstring(doc, XMLParser(resolve_entities=False, no_network=True))

class _Unspecified:
    pass

# Utility class that allows for hiding interaction with XML objects behind a json-style accessor language.
class XmlJsonAccessor(UserDict):
  
    def __init__(self, doc: Union[ElementTree.Element, str]):
        self._doc = safe_parse(doc) if isinstance(doc, str) else doc

    def __getitem__(self, key: Union[str, int]) -> Union[str, Dict[str, str], 'XmlJsonAccessor']:
        if isinstance(key, int):
            return XmlJsonAccessor(self._doc[key])
        val = self.get(key, _Unspecified)
        if val is _Unspecified:
            raise KeyError(key)
        return val

    def __setitem__(self, key: Union[str, int], value: Any) -> None:
        if isinstance(key, int):
            self._doc[key] = value
        else:
            self._doc.attrib[key] = str(value)

    def get(self, key: str, default=None) -> Union[str, Dict[str, str], 'XmlJsonAccessor', None]:
        if key == '.':
            return self._doc.text
        if key.startswith('@'):
            return (
                self._doc.attrib.get(key[1:], default) if len(key) > 1 else dict(self._doc.attrib)
            )
        val: Optional[ElementTree.Element] = self._doc.find(key, self._doc.nsmap)
        return XmlJsonAccessor(val) if val is not None else default

    def __iter__(self) -> Iterable['XmlJsonAccessor']:
        yield from map(XmlJsonAccessor, self._doc)

    def __str__(self) -> str:
        return self._doc.text

    def __bool__(self) -> bool:
        return True

    def __len__(self) -> int:
        return len(self._doc)

    def items(self) -> Iterable[Tuple[str, str]]:
        yield from self._doc.attrib.items()

    def node(self) -> str:
        return self._doc

# Helper functions
async def get_sailpoint_oauth_token() -> str:
    global oauth_token, token_expiration_time

    # Check if the token is still valid
    if (
        oauth_token
        and token_expiration_time
        and time.time() < token_expiration_time
    ):
        return oauth_token

    url = f"{SAILPOINT_BASE_URL}/identityiq/oauth2/token?grant_type=client_credentials"
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
    }
    auth = (SAILPOINT_CLIENT_ID, SAILPOINT_CLIENT_SECRET)

    async with httpx.AsyncClient() as client:
        response = await client.post(url, headers=headers, auth=auth)

    if response.status_code != 200:
        raise HTTPException(
            status_code=response.status_code,
            detail="Failed to obtain OAuth token from Sailpoint",
        )

    response_data = response.json()
    oauth_token = response_data["access_token"]
    expires_in = response_data.get(
        "expires_in", 3600
    )  # Default to 1 hour if not specified
    token_expiration_time = time.time() + expires_in

    return oauth_token

def read_pending_approvals():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute("SELECT approval_id, submit_date FROM pending_approvals")
    results = cursor.fetchall()
    conn.close()
    return {row[0]: row[1] for row in results}

def write_pending_approval(approval_id, submit_date):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "INSERT OR REPLACE INTO pending_approvals (approval_id, submit_date) VALUES (?, ?)",
        (approval_id, submit_date),
    )
    conn.commit()
    conn.close()

def remove_pending_approval(approval_id):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "DELETE FROM pending_approvals WHERE approval_id = ?", (approval_id,)
    )
    conn.commit()
    conn.close()

def is_approval_pending(approval_id, submit_date):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "SELECT submit_date FROM pending_approvals WHERE approval_id = ?",
        (approval_id,),
    )
    result = cursor.fetchone()
    conn.close()
    is_pending = result is not None and result[0] == submit_date
    print(f"Approval {approval_id} in pending approvals: {is_pending}")
    return is_pending

def trim(text):
    return text.strip() if text else None

def time_conv(timestamp_str, fmt):
    if not timestamp_str:
        return None
    
    try:
        # If the timestamp is in milliseconds, convert it to seconds for fromtimestamp
        if fmt == "MILLIS":
            timestamp = int(timestamp_str) / 1000.0
        else:
            # Add additional handling for other formats as necessary
            timestamp = int(timestamp_str)
        
        # Return a timezone-aware UTC datetime object
        return datetime.fromtimestamp(timestamp, timezone.utc).isoformat()
    except ValueError as e:
        print(f"Error converting time: {e}")
        return None

#TODO: Implement Pagination logic
async def make_request(
    method: str,
    url: str,
    headers: Dict = None,
    data: Optional[Dict] = None,
    auth_type: str = "Bearer",
) -> Dict:
    if headers is None:
        headers = {}

    if auth_type == "Bearer":
        # Get the OAuth token and add it to the headers
        token = await get_sailpoint_oauth_token()
        headers["Authorization"] = f"Bearer {token}"
    elif auth_type == "api_key":
        # Use the API key directly
        headers["Authorization"] = EVENT_API_KEY
    

    async with httpx.AsyncClient() as client:
        if method == "GET":
            response = await client.get(url, headers=headers)
        elif method == "POST":
            response = await client.post(url, headers=headers, json=data)
        elif method == "PUT":
            headers["Content-Type"] = "application/json"
            response = await client.put(url, headers=headers, json=data, timeout=30)
            # print(f"Response: {response.status_code}")
        else:
            raise ValueError(f"Unsupported HTTP method: {method}")
    
    return (
        response
        if response.status_code == 200
        else {"status": "failed", "message": response.text}
    )

async def _range_query_type(
    object_model: str,
    timestamp: int,
    filter_str: int,
    limit: int
) -> Iterable[XmlJsonAccessor]:
    filter_str = f" && ({filter_str})" if filter_str else ""
    params = {
        "limit": limit,
        "filter": f"((!modified.isNull() && modified>=DATE${timestamp}) || (modified.isNull() || created>=DATE${timestamp}))" + filter_str
    }
    url = f"{SAILPOINT_BASE_URL}/identityiq/plugin/rest/moveworks-plugin/object/{object_model}?{urlencode(params)}"
    response = await make_request(
        "GET",
        url,
        auth_type="Bearer"
    )
    if response.status_code != 200:
        # Handle error appropriately
        raise Exception(f"API request failed with status code {response.status_code}")

    response_text = response.text
    xml_response = XmlJsonAccessor(response_text)
    return xml_response
    

# API functions
async def get_access_requests(limit: int = 250) -> Dict:
    timestamp = int(datetime.now().timestamp() * 1000) - 60000  # 60s ago
    print(f"Timestamp: {timestamp}")

    filter_str = 'type!="Certification" && type!="Event"'

    return await _range_query_type('WorkItem', timestamp, filter_str, limit)

async def action_sailpoint_approval(object_model: str, approval_id: str, user_record_id: str, approve: bool, message: str = None) -> Dict:
    url = f"{SAILPOINT_BASE_URL}/identityiq/plugin/rest/moveworks-plugin/object/{object_model}/{approval_id}"
    
    payload = {"approver": f"{user_record_id}"}
    if approve:
        payload["state"] = "Finished"
    else:
        payload["state"] = "Rejected"
    if message:
        payload["comment"] = message
    
    response = await make_request("PUT", url, data=payload, auth_type="Bearer")
    response_data = response.text
    return response_data

# Function to get email ID from user ID
async def get_user_email_from_id(user_id: str) -> Optional[str]:
    url = f'{SAILPOINT_BASE_URL}/identityiq/plugin/rest/moveworks-plugin/table/Identity?attributes=id%2Cname%2Cemail&filter=email.notNull()%26%26id==%22{user_id}%22'
    response = await make_request("GET", url, auth_type="Bearer")
    response_data = response.json()
    
    objects = response_data.get("objects", [])
    if objects:
        return objects[0].get("email")
    
    return None

# Function to get user ID from email ID
async def get_id_from_user_email(email_id: str) -> Optional[str]:
    url = f'{SAILPOINT_BASE_URL}/identityiq/plugin/rest/moveworks-plugin/table/Identity?attributes=id%2Cname%2Cemail&filter=email.notNull()%26%26email==%22{email_id}%22'
    response = await make_request("GET", url, auth_type="Bearer")
    response_data = response.json()
    
    objects = response_data.get("objects", [])
    if objects:
        return objects[0].get("id")
    
    return None

async def send_moveworks_message(
    message: str,
    recipients: List[str],
    context: Optional[NotificationContext] = None,
) -> Dict:
    url = f"{MOVEWORKS_BASE_URL}/rest/v1/events/{EVENT_ID}/messages/send"
    headers = {
        "Content-Type": "application/json",
    }

    payload = {
        "message": message,
        "recipients": recipients,
    }

    if context and context.approval_id:
        payload["context"] = {
            "slots": {
                "approval_id": context.approval_id,
            }
        }

    response = await make_request(
        "POST", url, headers, payload, auth_type="api_key"
    )

    data = response.json()
    if response.status_code != 200:
        raise HTTPException(
            status_code=response.status_code,
            detail=f"Failed to send message: {data}",
        )
    
    return data

def format_date(date_str):
    # Format date to the format: 9th May, 2022 12:00:00
    if not date_str:
        return "N/A"
    date = datetime.fromisoformat(date_str)
    return date.strftime("%d %b, %Y %H:%M:%S")

def format_notification_message(access_request, request_id, updated_at):
    requester_user_id = access_request.get("Requester/Reference").get("@name") or None
    requested_for_user_id = trim(access_request.get("@targetName")) or trim(access_request.get("@targetId")) or None

    created_at = time_conv(trim(access_request.get("@created")) or trim(access_request.get("@startDate")), "MILLIS") or None
    priority = trim(access_request.get("@level")) or None

    message = (
        f"<b>&#x1F4CB; New Sailpoint Approval Request</b>:\n"
        f"- <i>Work Item ID</i>: {request_id}\n"
        f"- <i>Requested By</i>: {requester_user_id}\n"
        f"- <i>Requested For</i>: {requested_for_user_id}\n"
        f"- <i>Requested On</i>: {format_date(created_at)}\n"
        f"- <i>Priority</i>: {priority}\n"
    )

    approval_set = access_request.get("Attributes/Map/entry[@key='approvalSet']/value/ApprovalSet")
    if approval_set:
        for index, item in enumerate(approval_set, start=1): # Ensure starting index is 1
            operation_details = f"\n\tOperation: {item.get('@operation', 'N/A')}" if item.get("@operation") else ""
            role_type = f"\n\tRole Type: {item.get('@displayname', item.get('@name', 'N/A'))}"
            role_name = f"\n\tRole Name: {item.get('@displayValue', item.get('@value', 'N/A'))}"
            application_details = f"\n\tApplication: {item.get('@application', 'N/A')}" if item.get("@application") else ""

            message += (
                f"\nRequest Item - {index}/{len(approval_set)}:"
                f"{operation_details}"
                f"{role_type}"
                f"{role_name}"
                f"{application_details}"
            )
    return message

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup logic
    print("Starting up...")
    try:
        # Create the polling task
        polling_task = asyncio.create_task(continuous_polling())
        print("Continuous polling task started successfully")
        yield
    finally:
        # Shutdown logic
        print("Shutting down...")
        # Cancel the polling task if it's still running
        polling_task.cancel()
        try:
            await polling_task
        except asyncio.CancelledError:
            print("Polling task cancelled")

app = FastAPI(lifespan=lifespan)

async def continuous_polling():
    while True:
        try:
            await poll_approvals()
        except Exception as e:
            print(f"Error in continuous polling: {str(e)}")
        await asyncio.sleep(POLLING_INTERVAL)

async def poll_approvals():
    print("Polling for new approvals in SailPoint...")
    try:
        access_requests = await get_access_requests()

        for access_request in access_requests:
            # Attempt to get `@id` and fallback to `@workItemId`, trimming both. If neither are present, default to `None`.
            request_id = trim(access_request.get("@id")) or trim(access_request.get("@workItemId")) or None
            if request_id is None:
                print("No valid ID found for an access request.")
                continue

            updated_at = time_conv(trim(access_request.get("@modified")) or trim(access_request.get("@endDate")) or trim(access_request.get("@created")) or trim(access_request.get("@startDate")), "MILLIS")
            work_item_type = trim(access_request.get("@type"))
            approver_user_id = trim(access_request.get("Owner/Reference").get("@id")) or trim(access_request.get("@owner")) or None
            try:
                if updated_at and not is_approval_pending(request_id, updated_at) and work_item_type == "Approval":
                    print(f"New access request detected with ID: {request_id}. Processing further...")

                    # Determine the approver
                    approver_email_id = await get_user_email_from_id(approver_user_id)

                    # Send a notification to the approver
                    print(f"Sending notification to {approver_email_id} for Access Request ID: {request_id}")

                    # Send notification and add approval to pending list
                    data = await send_moveworks_message(
                        format_notification_message(access_request, request_id, updated_at),
                        [approver_email_id],
                        NotificationContext(
                            approval_id=str(request_id)
                        )
                    )
                    write_pending_approval(request_id, updated_at)

                else:
                    print(f"Access Request ID: {request_id} is already pending, no action taken.\n")

            except Exception as e:
                print(f"Error processing access request ID {request_id}: {str(e)}\n")

    except Exception as e:
        print(f"Error in polling approvals for SailPoint: {str(e)}\n")

@app.get("/")
async def health_check():
    return {"status": "ok"}

@app.get("/approvals")
async def get_approvals():
    try:
        pending_approvals = await get_access_requests()

        return {"data": pending_approvals}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})

@app.post("/notifications")
async def send_notification(
    request: NotificationRequest, background_tasks: BackgroundTasks
):
    try:
        await send_moveworks_message(
            request.message, request.recipients, request.context
        )
        return {"status": "notification_sent"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})

@app.post("/approvals/approve")
async def approve_approval(approval_id: str, user_email: str):
    object_model = "WorkItem"
    user_id = await get_id_from_user_email(user_email)
    try:
        data = await action_sailpoint_approval(object_model, approval_id, user_id, True)
        remove_pending_approval(approval_id)
        return {"status": "approved"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})
    

@app.post("/approvals/reject")
async def reject_approval(approval_id: str, user_email: str, reason: Optional[str] = None):
    object_model = "WorkItem"
    user_id = await get_id_from_user_email(user_email)
    try:
        await action_sailpoint_approval(object_model, approval_id, user_id, False, reason)
        remove_pending_approval(approval_id)
        return {"status": "rejected"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})

# Error handling
@app.exception_handler(HTTPException)
async def http_exception_handler(request: Request, exc: HTTPException):
    return JSONResponse(
        status_code=exc.status_code,
        content={"detail": str(exc.detail), "status_code": exc.status_code},
    )

@app.exception_handler(Exception)
async def general_exception_handler(request: Request, exc: Exception):
    return JSONResponse(
        status_code=500,
        content={"detail": "An unexpected error occurred", "status_code": 500},
    )

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
