import os
import time
import json
from typing import Dict, List, Optional
from datetime import datetime, timedelta
import sqlite3
from contextlib import asynccontextmanager
import asyncio
import httpx
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException, Depends, Request, BackgroundTasks
from urllib.parse import urlencode
from fastapi.responses import JSONResponse
from pydantic import BaseModel, Field

# Load environment variables
load_dotenv()

# Config
COUPA_CLIENT_ID = os.getenv("coupa_client_id")
COUPA_CLIETN_SECRET = os.getenv("coupa_client_secret")
COUPA_SCOPES = os.getenv("coupa_scopes")
COUPA_BASE_URL = os.getenv("coupa_base_url")
MOVEWORKS_BASE_URL = "https://api.moveworks.ai"
DATABASE_NAME = "pending_approvals.db"
EVENT_ID = os.getenv("event_id")
EVENT_API_KEY = os.getenv("event_api_key")
POLLING_INTERVAL = 60  # number of seconds to wait between polling

# Global variable to store the token and its expiration time
oauth_token = None
token_expiration_time = None


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
    requisition_id: str


class NotificationRequest(BaseModel):
    message: str = Field(..., min_length=1)
    recipients: List[str] = Field(..., min_items=1)
    context: Optional[NotificationContext] = None


# Helper functions
async def get_coupa_oauth_token() -> str:
    global oauth_token, token_expiration_time

    # Check if the token is still valid
    if (
        oauth_token
        and token_expiration_time
        and time.time() < token_expiration_time
    ):
        return oauth_token

    url = f"{COUPA_BASE_URL}/oauth2/token"
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
    }
    data = {
        "client_id": COUPA_CLIENT_ID,
        "client_secret": COUPA_CLIETN_SECRET,
        "grant_type": "client_credentials",
        "scope": COUPA_SCOPES,
    }

    async with httpx.AsyncClient() as client:
        response = await client.post(url, headers=headers, data=data)

    if response.status_code != 200:
        raise HTTPException(
            status_code=response.status_code,
            detail="Failed to obtain OAuth token from Coupa",
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
    print(f"Approval {approval_id} removed from pending approvals")


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


async def make_request(
    method: str,
    url: str,
    headers: Dict = None,
    data: Optional[Dict] = None,
    auth_type: str = "Bearer",
) -> Dict:
    if headers is None:
        headers = {}

    # Set the Accept header to application/json if not already set
    headers.setdefault("Accept", "application/json")

    if auth_type == "Bearer":
        # Get the OAuth token and add it to the headers
        token = await get_coupa_oauth_token()
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
            response = await client.put(url, headers=headers, json=data)
        else:
            raise ValueError(f"Unsupported HTTP method: {method}")

    if response.status_code not in [200, 204]:
        raise HTTPException(
            status_code=response.status_code,
            detail=f"API request failed: {response.text}",
        )

    return (
        response.json()
        if response.status_code == 200
        else {"status": "success"}
    )
    return (
        response.json()
        if response.status_code == 200
        else {"status": "success"}
    )


async def get_pending_approvals() -> Dict:
    base_url = f"{COUPA_BASE_URL}/api/approvals"

    timestamp = datetime.now().strftime("%Y-%m-%d")

    params = {
        "status": "pending_approval",
        "approvable_type": "RequisitionHeader",
        "updated-at[gt_or_eq]": timestamp,
    }

    # Construct the URL with query parameters
    url = f"{base_url}?{urlencode(params)}"

    headers = {"Accept": "application/json"}

    return await make_request("GET", url, headers=headers)


async def get_requisition_status(requisition_id: str) -> Dict:
    url = f"{COUPA_BASE_URL}/api/requisitions/{requisition_id}"
    return await make_request("GET", url)


async def approve_coupa_approval(approval_id: str) -> Dict:
    url = f"{COUPA_BASE_URL}/api/approvals/{approval_id}/approve"
    return await make_request("PUT", url)


async def reject_coupa_approval(
    approval_id: str, reason: Optional[str] = "Reject%20through%20API"
) -> Dict:
    url = f"{COUPA_BASE_URL}/api/approvals/{approval_id}/reject"
    if reason:
        url += f"?reason={reason}"
    return await make_request("PUT", url)


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

    if context and context.approval_id and context.requisition_id:
        payload["context"] = {
            "slots": {
                "approval_id": context.approval_id,
            }
        }

    return await make_request(
        "POST", url, headers, payload, auth_type="api_key"
    )


def format_notification_message(requisition):
    approvals = requisition.get("approvals", [])
    current_approval = next(
        (a for a in approvals if a["status"] == "pending_approval"), None
    )

    if current_approval:
        approver = current_approval["approver"]["fullname"]
    else:
        approver = "Unknown"

    return (
        f"<b>📝 Coupa Approval Pending</b>:\n"
        f"- <i>Requisition ID</i>: {requisition['id']}\n"
        f"- <i>Submitted By</i>: {requisition['created-by']['fullname']}\n"
        f"- <i>Submit Date</i>: {requisition['submitted-at']}\n"
        f"- <i>Total Amount</i>: {requisition['total']} {requisition['currency']['code']}\n"
        f"- <i>Requisition Status</i>: {requisition['status']}\n"
        f"- <i>Current Approver</i>: {approver}\n"
        f"- <i>Items</i>: {'\n, '.join(line['description'] for line in requisition['requisition-lines'])}\n"
    )


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
    print("Polling for new approvals...")
    try:
        approvals = await get_pending_approvals()

        if isinstance(approvals, list):
            approvals_list = approvals
        elif isinstance(approvals, dict):
            approvals_list = approvals.get("approvals", [])
        else:
            print(
                f"Unexpected type returned by get_pending_approvals: {type(approvals)}"
            )
            return

        for approval in approvals_list:
            approval_id = approval["id"]
            requisition_id = approval["approvable-id"]
            submit_date = approval["updated-at"]
            print(
                f"Checking approval ID: {approval_id}, Approvable ID: {requisition_id}, Submit Date: {submit_date}"
            )

            try:
                if submit_date and not is_approval_pending(
                    approval_id, submit_date
                ):
                    print(
                        f"New approval detected with ID: {approval_id}. Fetching requisition details..."
                    )

                    # Fetch requisition details
                    requisition = await get_requisition_status(requisition_id)

                    print(
                        f"Sending notification for Requisition ID: {requisition_id}"
                    )
                    # Send notification and add approval to pending list
                    await send_moveworks_message(
                        format_notification_message(requisition),
                        ["email@example.com"], # Replace requistion["created-by"]["email"] with the email address of the user who will receive the notification
                        NotificationContext(
                            approval_id=str(approval_id),
                            requisition_id=str(requisition_id),
                        ),
                    )
                    write_pending_approval(approval_id, submit_date)
                else:
                    print(
                        f"Approval ID: {approval_id} is already pending, no action taken."
                    )
            except Exception as e:
                print(f"Error processing approval ID {approval_id}: {str(e)}")

    except Exception as e:
        print(f"Error in polling approvals: {str(e)}")


@app.get("/")
async def health_check():
    return {"status": "ok"}


@app.get("/approvals")
async def get_approvals():
    try:
        pending_approvals = await get_pending_approvals()

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


@app.post("/approvals/{approval_id}/approve")
async def approve_approval(approval_id: str):
    try:
        await approve_coupa_approval(approval_id)
        remove_pending_approval(approval_id)
        return {"status": "approved"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})


@app.post("/approvals/{approval_id}/reject")
async def reject_approval(approval_id: str, reason: Optional[str] = None):
    try:
        await reject_coupa_approval(approval_id, reason)
        remove_pending_approval(approval_id)
        return {"status": "rejected"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})
