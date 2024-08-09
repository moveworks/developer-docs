import os
import time
import json
from typing import Dict, List, Optional
from datetime import datetime, timedelta
import sqlite3

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
POLLING_INTERVAL = 60  # number of seconds to wait between polling

app = FastAPI()

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


@app.on_event("startup")
async def startup_event():
    print("Starting up...")
    try:
        asyncio.create_task(continuous_polling())
        print("Continuous polling task started successfully")
    except Exception as e:
        print(f"Error starting continuous polling task: {str(e)}")


# Pydantic models for request validation
class NotificationContext(BaseModel):
    approval_id: str


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
    method: str, url: str, headers: Dict = None, data: Optional[Dict] = None
) -> Dict:
    if headers is None:
        headers = {}

    # Set the Accept header to application/json if not already set
    headers.setdefault("Accept", "application/json")

    # Get the OAuth token and add it to the headers
    token = await get_coupa_oauth_token()
    headers["Authorization"] = f"Bearer {token}"

    async with httpx.AsyncClient() as client:
        if method == "GET":
            response = await client.get(url, headers=headers)
        elif method == "POST":
            response = await client.post(url, headers=headers, json=data)
        elif method == "PATCH":
            response = await client.patch(url, headers=headers, json=data)
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
        "Authorization": f"Bearer {EVENT_API_KEY}",
        "Content-Type": "application/json",
    }

    payload = {"message": message, "recipients": recipients}

    if context and context.approval_id:
        payload["context"] = {"slots": {"approval_id": context.approval_id}}

    return await make_request("POST", url, headers, payload)


def format_notification_message(approval):
    return (
        f"<b>📝 Approval Pending</b>:\n"
        f"    - <i>Approval Name</i>: {approval['name']}\n"
        f"    - <i>Submitted By</i>: {approval['created-by']}\n"
        f"    - <i>Submit Date</i>: {approval['created-at']}\n"
        f"    - <i>Amount</i>: {approval['total']}\n"
        f"    - <i>Approval Status</i>: {approval['status']}\n"
        f"    - <i>Approval ID</i>: {approval['id']}\n"
    )


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

        # Check if approvals is a list or a dictionary
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
            submit_date = approval["updated-at"]
            print(
                f"Checking approval ID: {approval_id}, Submit Date: {submit_date}"
            )
            try:
                if submit_date and not is_approval_pending(
                    approval_id, submit_date
                ):
                    print(
                        f"New approval detected with ID: {approval_id}. Sending notification..."
                    )
                    # Send notification and add approval to pending list
                    await send_moveworks_message(
                        format_notification_message(approval),
                        ["test@example.com"],
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
