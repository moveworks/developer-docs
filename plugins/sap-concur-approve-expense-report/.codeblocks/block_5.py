import os
import json
from typing import Dict, List, Optional
from datetime import datetime, timedelta
import sqlite3

import asyncio
import httpx
from dotenv import load_dotenv
from fastapi import FastAPI, HTTPException, Depends, Request, BackgroundTasks
from fastapi.responses import JSONResponse
from pydantic import BaseModel, Field

# Load environment variables
load_dotenv()

# Config
CLIENT_ID = os.getenv("client_id")
CLIENT_SECRET = os.getenv("client_secret")
REFRESH_TOKEN = os.getenv("refresh_token")
EVENT_ID = os.getenv("event_id")
EVENT_API_KEY = os.getenv("event_api_key")
CONCUR_BASE_URL = "https://us2.api.concursolutions.com"
MOVEWORKS_BASE_URL = "https://api.moveworks.ai"
DATABASE_NAME = "pending_reports.db"
POLLING_INTERVAL = (
    60  # number of seconds to wait between polling expense reports
)

app = FastAPI()


# Database setup
def init_db():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        """
        CREATE TABLE IF NOT EXISTS pending_reports (
            report_id TEXT PRIMARY KEY,
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


# Token storage
token_storage = {"access_token": None, "expires_at": None}


# Pydantic models for request validation
class NotificationContext(BaseModel):
    report_id: str


class NotificationRequest(BaseModel):
    message: str = Field(..., min_length=1)
    recipients: List[str] = Field(..., min_items=1)
    context: Optional[NotificationContext] = None


# Helper functions
def read_pending_reports():
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute("SELECT report_id, submit_date FROM pending_reports")
    results = cursor.fetchall()
    conn.close()
    return {row[0]: row[1] for row in results}


def write_pending_report(report_id, submit_date):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "INSERT OR REPLACE INTO pending_reports (report_id, submit_date) VALUES (?, ?)",
        (report_id, submit_date),
    )
    conn.commit()
    conn.close()


def remove_pending_report(report_id):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "DELETE FROM pending_reports WHERE report_id = ?", (report_id,)
    )
    conn.commit()
    conn.close()
    print(f"Report {report_id} removed from pending reports")


def is_report_pending(report_id, submit_date):
    conn = sqlite3.connect(DATABASE_NAME)
    cursor = conn.cursor()
    cursor.execute(
        "SELECT submit_date FROM pending_reports WHERE report_id = ?",
        (report_id,),
    )
    result = cursor.fetchone()
    conn.close()
    is_pending = result is not None and result[0] == submit_date
    print(f"Report {report_id} in pending reports: {is_pending}")
    return is_pending


async def make_request(
    method: str, url: str, headers: Dict, data: Optional[Dict] = None
) -> Dict:
    async with httpx.AsyncClient() as client:
        if method == "GET":
            response = await client.get(url, headers=headers)
        elif method == "POST":
            response = await client.post(
                url,
                headers=headers,
                data=(
                    data
                    if "x-www-form-urlencoded"
                    in headers.get("Content-Type", "")
                    else None
                ),
                json=(
                    data
                    if "x-www-form-urlencoded"
                    not in headers.get("Content-Type", "")
                    else None
                ),
            )
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


async def refresh_auth_token() -> str:
    url = f"{CONCUR_BASE_URL}/oauth2/v0/token"
    payload = {
        "client_id": CLIENT_ID,
        "client_secret": CLIENT_SECRET,
        "refresh_token": REFRESH_TOKEN,
        "grant_type": "refresh_token",
    }
    headers = {"Content-Type": "application/x-www-form-urlencoded"}

    token_data = await make_request("POST", url, headers, payload)
    token_storage["access_token"] = token_data.get("access_token")
    token_storage["expires_at"] = datetime.now() + timedelta(
        seconds=token_data.get("expires_in", 3600)
    )

    return token_storage["access_token"]


async def get_valid_token() -> str:
    if (
        token_storage["access_token"] is None
        or token_storage["expires_at"] is None
        or token_storage["expires_at"] <= datetime.now()
    ):
        return await refresh_auth_token()
    return token_storage["access_token"]


def format_notification_message(report):
    return (
        f"<b>💸 New Concur Expense Report Approval Request</b>:\n"
        f"    - <i>Report Name</i>: {report['Name']}\n"
        f"    - <i>Owner</i>: {report['OwnerName']}\n"
        f"    - <i>Submit Date</i>: {report['SubmitDate']}\n"
        f"    - <i>Amount</i>: {report['CurrencyCode']} {report['Total']}\n"
        f"    - <i>Last Comment</i>: {report['LastComment']}\n"
        f"    - <i>Approval Status</i>: {report['ApprovalStatusName']}\n"
        f"    - <i>Report ID</i>: {report['ID']}\n"
    )


# API functions
async def get_all_expense_reports(
    auth_token: str, modified_date_after: str = None
) -> Dict:
    if not modified_date_after:
        modified_date_after = datetime.now().strftime("%Y-%m-%d")

    url = f"{CONCUR_BASE_URL}/api/v3.0/expense/reports?user=ALL&modifiedDateAfter={modified_date_after}&ApprovalStatusCode=A_PEND"
    headers = {
        "Accept": "application/json",
        "Authorization": f"Bearer {auth_token}",
    }
    return await make_request("GET", url, headers)


async def approve_report(
    auth_token: str, user_id: str, report_id: str
) -> Dict:
    url = f"{CONCUR_BASE_URL}/expensereports/v4/users/{user_id}/context/MANAGER/reports/{report_id}/approve"
    payload = {"comment": "Approved through API"}
    headers = {
        "Authorization": f"Bearer {auth_token}",
        "Content-Type": "application/json",
    }
    return await make_request("PATCH", url, headers, payload)


async def send_back_report(
    auth_token: str,
    user_id: str,
    report_id: str,
    # comment: str,
    # expense_rejected_comment: str,
) -> Dict:
    url = f"{CONCUR_BASE_URL}/expensereports/v4/users/{user_id}/context/MANAGER/reports/{report_id}/sendBack"
    payload = {
        "comment": "Rejecting from Moveworks",
        "expenseRejectedComment": "Rejecting Report through API",
    }
    headers = {
        "Authorization": f"Bearer {auth_token}",
        "Content-Type": "application/json",
    }
    return await make_request("PATCH", url, headers, payload)


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

    if context and context.report_id:
        payload["context"] = {"slots": {"report_id": context.report_id}}

    return await make_request("POST", url, headers, payload)


async def continuous_polling():
    while True:
        try:
            await poll_reports()
        except Exception as e:
            print(f"Error in continuous polling: {str(e)}")
        await asyncio.sleep(POLLING_INTERVAL)


async def poll_reports():
    print("Polling for new reports...")
    try:
        auth_token = await get_valid_token()
        reports = await get_all_expense_reports(auth_token)
        for report in reports.get("Items", []):
            report_id = report["ID"]
            submit_date = report["SubmitDate"]
            print(
                f"Checking report ID: {report_id}, Submit Date: {submit_date}"
            )
            try:
                if submit_date and not is_report_pending(
                    report_id, submit_date
                ):
                    print(f"Report {report_id} not pending yet. Processing...")
                    approver_login_id = report["ApproverLoginID"]
                    if approver_login_id:
                        message = format_notification_message(report)
                        context = NotificationContext(report_id=report_id)
                        await send_moveworks_message(
                            message, [approver_login_id], context
                        )
                        print(f"Notification sent for report {report_id}")
                    write_pending_report(report_id, submit_date)
                    print(f"Report {report_id} marked as pending")
                    await asyncio.sleep(
                        1
                    )  # Add a small delay between processing reports
                else:
                    print(f"Report {report_id} already pending. Skipping.")
            except Exception as e:
                print(f"Error processing report {report_id}: {str(e)}")
    except Exception as e:
        print(f"Error during polling: {str(e)}")
        print(f"Error type: {type(e).__name__}")
        import traceback

        traceback.print_exc()
    print("Polling for new reports...")
    try:
        auth_token = await get_valid_token()
        reports = await get_all_expense_reports(auth_token)
        for report in reports.get("Items", []):
            report_id = report["ID"]
            submit_date = report["SubmitDate"]
            print(
                f"Checking report ID: {report_id}, Submit Date: {submit_date}"
            )
            try:
                if submit_date and not is_report_pending(
                    report_id, submit_date
                ):
                    print(f"Report {report_id} not pending yet. Processing...")
                    approver_login_id = report["ApproverLoginID"]
                    if approver_login_id:
                        message = format_notification_message(report)
                        context = NotificationContext(report_id=report_id)
                        await send_moveworks_message(
                            message, [approver_login_id], context
                        )
                        print(f"Notification sent for report {report_id}")
                    write_pending_report(report_id, submit_date)
                    print(f"Report {report_id} marked as pending")
                    await asyncio.sleep(
                        1
                    )  # Add a small delay between processing reports
                else:
                    print(f"Report {report_id} already pending. Skipping.")
            except Exception as e:
                print(f"Error processing report {report_id}: {str(e)}")
    except Exception as e:
        print(f"Error during polling: {str(e)}")
        print(f"Error type: {type(e).__name__}")
        import traceback

        traceback.print_exc()


# API routes
@app.patch("/reports/approve")
async def approve(
    user_id: str, report_id: str, auth_token: str = Depends(get_valid_token)
) -> Dict:
    result = await approve_report(auth_token, user_id, report_id)
    remove_pending_report(report_id)
    return result


@app.patch("/reports/send-back")
async def send_back(
    user_id: str,
    report_id: str,
    auth_token: str = Depends(get_valid_token),
) -> Dict:
    result = await send_back_report(auth_token, user_id, report_id)
    remove_pending_report(report_id)
    return result


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
