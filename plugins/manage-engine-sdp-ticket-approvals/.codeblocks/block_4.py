import os
import time
import json
from typing import Dict, List, Optional
from datetime import datetime, timedelta
import sqlite3
from contextlib import asynccontextmanager
import asyncio
import httpx
from fastapi import FastAPI, HTTPException, BackgroundTasks
from pydantic import BaseModel, Field
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Configuration
MANAGEENGINE_BASE_URL = os.getenv("MANAGEENGINE_BASE_URL")
MANAGEENGINE_CLIENT_ID = os.getenv("MANAGEENGINE_CLIENT_ID")
MANAGEENGINE_CLIENT_SECRET = os.getenv("MANAGEENGINE_CLIENT_SECRET")
MANAGEENGINE_REFRESH_TOKEN = os.getenv("MANAGEENGINE_REFRESH_TOKEN")
MOVEWORKS_BASE_URL = "https://api.moveworks.ai"
DATABASE_NAME = "manageengine_approvals.db"
EVENT_ID = os.getenv("MOVEWORKS_EVENT_ID")
EVENT_API_KEY = os.getenv("MOVEWORKS_EVENT_API_KEY")
POLLING_INTERVAL = 60  # number of seconds to wait between polling

# Global variable to store the token and its expiration time
oauth_token = None
token_expiration_time = None

# Database setup
def init_db():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS pending_approvals (
            approval_id TEXT PRIMARY KEY,
            request_id TEXT,
            level_id TEXT,
            submit_date TEXT
        )
    """)
    conn.commit()
    conn.close()

init_db()

# Pydantic models for request validation
class NotificationContext(BaseModel):
    approval_id: str
    request_id: str
    level_id: str

class NotificationRequest(BaseModel):
    message: str = Field(..., min_length=1)
    recipients: List[str] = Field(..., min_items=1)
    context: Optional[NotificationContext] = None

# Helper functions
async def get_manageengine_oauth_token() -> str:
    global oauth_token, token_expiration_time
    
    if oauth_token and token_expiration_time and time.time() < token_expiration_time:
        return oauth_token

    url = f"{MANAGEENGINE_BASE_URL}/oauth/v2/token"
    data = {
        "grant_type": "refresh_token",
        "client_id": MANAGEENGINE_CLIENT_ID,
        "client_secret": MANAGEENGINE_CLIENT_SECRET,
        "refresh_token": MANAGEENGINE_REFRESH_TOKEN
    }
    
    async with httpx.AsyncClient() as client:
        response = await client.post(url, data=data)
        if response.status_code != 200:
            raise HTTPException(status_code=response.status_code, detail="Failed to obtain OAuth token from ManageEngine")
        
        response_data = response.json()
        oauth_token = response_data["access_token"]
        expires_in = response_data.get("expires_in", 3600)  # Default to 1 hour if not specified
        token_expiration_time = time.time() + expires_in
        
        return oauth_token

def read_pending_approvals():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute("SELECT approval_id, request_id, level_id, submit_date FROM pending_approvals")
    results = cursor.fetchall()
    conn.close()
    return {row[0]: {"request_id": row[1], "level_id": row[2], "submit_date": row[3]} for row in results}

def write_pending_approval(approval_id, request_id, level_id, submit_date):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "INSERT OR REPLACE INTO pending_approvals (approval_id, request_id, level_id, submit_date) VALUES (?, ?, ?, ?)",
        (approval_id, request_id, level_id, submit_date)
    )
    conn.commit()
    conn.close()

def remove_pending_approval(approval_id):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute("DELETE FROM pending_approvals WHERE approval_id = ?", (approval_id,))
    conn.commit()
    conn.close()
    print(f"Approval {approval_id} removed from pending approvals")

def is_approval_pending(approval_id, submit_date):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute("SELECT submit_date FROM pending_approvals WHERE approval_id = ?", (approval_id,))
    result = cursor.fetchone()
    conn.close()
    is_pending = result is not None and result[0] == submit_date
    print(f"Approval {approval_id} in pending approvals: {is_pending}")
    return is_pending

async def make_request(method: str, url: str, headers: Dict = None, data: Optional[Dict] = None, auth_type: str = "Bearer") -> Dict:
    if headers is None:
        headers = {}
    
    headers.setdefault("Accept", "application/json")
    
    if auth_type == "Bearer":
        token = await get_manageengine_oauth_token()
        headers["Authorization"] = f"Bearer {token}"
    elif auth_type == "api_key":
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
            raise HTTPException(status_code=response.status_code, detail=f"API request failed: {response.text}")

        return response.json() if response.status_code == 200 else {"status": "success"}

async def get_pending_approvals() -> Dict:
    url = f"{MANAGEENGINE_BASE_URL}/api/v3/requests"
    return await make_request("GET", url)

async def get_approval_levels(request_id: str) -> Dict:
    url = f"{MANAGEENGINE_BASE_URL}/api/v3/requests/{request_id}/approval_levels"
    return await make_request("GET", url)

async def get_approvals_in_level(request_id: str, level_id: str) -> Dict:
    url = f"{MANAGEENGINE_BASE_URL}/api/v3/requests/{request_id}/approval_levels/{level_id}/approvals"
    return await make_request("GET", url)

async def approve_manageengine_approval(request_id: str, approval_id: str) -> Dict:
    url = f"{MANAGEENGINE_BASE_URL}/api/v3/requests/{request_id}/approvals/{approval_id}/approve"
    return await make_request("PUT", url)

async def reject_manageengine_approval(request_id: str, approval_id: str, reason: Optional[str] = None) -> Dict:
    url = f"{MANAGEENGINE_BASE_URL}/api/v3/requests/{request_id}/approvals/{approval_id}/reject"
    data = {"comments": reason} if reason else {}
    return await make_request("PUT", url, data=data)

async def send_moveworks_message(message: str, recipients: List[str], context: Optional[NotificationContext] = None) -> Dict:
    url = f"{MOVEWORKS_BASE_URL}/rest/v1/events/{EVENT_ID}/messages/send"
    headers = {"Content-Type": "application/json"}
    payload = {
        "message": message,
        "recipients": recipients,
    }
    if context and context.approval_id and context.request_id and context.level_id:
        payload["context"] = {
            "slots": {
                "approval_id": context.approval_id,
                "request_id": context.request_id,
                "level_id": context.level_id
            }
        }
    return await make_request("POST", url, headers, payload, auth_type="api_key")

def format_notification_message(approval):
    return (
        f"📝 ManageEngine Approval Pending:\n"
        f"- Request ID: {approval['request']['id']}\n"
        f"- Subject: {approval['request']['subject']}\n"
        f"- Requester: {approval['request']['requester']['name']}\n"
        f"- Approval Level: {approval['approval_level']['level']}\n"
        f"- Status: {approval['status']['name']}\n"
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
        requests = await get_pending_approvals()
        for request in requests.get("requests", []):
            request_id = request["id"]
            approval_levels = await get_approval_levels(request_id)
            
            for level in approval_levels.get("approval_levels", []):
                level_id = level["id"]
                approvals = await get_approvals_in_level(request_id, level_id)
                
                for approval in approvals.get("approvals", []):
                    approval_id = approval["id"]
                    submit_date = approval["created_time"]["value"]
                    
                    print(f"Checking approval ID: {approval_id}, Request ID: {request_id}, Level ID: {level_id}, Submit Date: {submit_date}")
                    
                    if not is_approval_pending(approval_id, submit_date):
                        print(f"New approval detected with ID: {approval_id}. Sending notification...")
                        
                        # Send notification
                        await send_moveworks_message(
                            format_notification_message(approval),
                            [approval["approver"]["email_id"]],
                            NotificationContext(
                                approval_id=str(approval_id),
                                request_id=str(request_id),
                                level_id=str(level_id)
                            )
                        )
                        
                        # Add approval to pending list
                        write_pending_approval(approval_id, request_id, level_id, submit_date)
                    else:
                        print(f"Approval ID: {approval_id} is already pending, no action taken.")
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
async def send_notification(request: NotificationRequest, background_tasks: BackgroundTasks):
    try:
        await send_moveworks_message(request.message, request.recipients, request.context)
        return {"status": "notification_sent"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})

@app.post("/approvals/{request_id}/{approval_id}/approve")
async def approve_approval(request_id: str, approval_id: str):
    try:
        await approve_manageengine_approval(request_id, approval_id)
        remove_pending_approval(approval_id)
        return {"status": "approved"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})

@app.post("/approvals/{request_id}/{approval_id}/reject")
async def reject_approval(request_id: str, approval_id: str, reason: Optional[str] = None):
    try:
        await reject_manageengine_approval(request_id, approval_id, reason)
        remove_pending_approval(approval_id)
        return {"status": "rejected"}
    except Exception as e:
        return JSONResponse(status_code=400, content={"error": str(e)})

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
