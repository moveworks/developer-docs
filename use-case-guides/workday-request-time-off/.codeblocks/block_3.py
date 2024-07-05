from fastapi import FastAPI, HTTPException
import requests

CANONICAL_TIME_OFF_PLAN_MAP = {
  "Time off (USA)": "67839087362157384953",
  "Time off (XYZ)": "8w2394093284924538920",
  ...
}

app = FastAPI()

# Function to get access token
def get_access_token():
    workday_instance_id = "your_workday_instance_id"
    url = "https://wd2-impl-services1.workday.com/ccx/oauth2/{workday_instance_id}/token"
    headers = {
        "Content-Type": "application/x-www-form-urlencoded"
    }
    # REFRESH_TOKEN should be securely fetched from an environment variable or a secrets manager
    data = {
        "grant_type": "refresh_token",
        "refresh_token": "<Your_Refresh_Token>",  # Redacted for security. Replace <Your_Refresh_Token> with actual value
    }

    # CLIENT_ID and CLIENT_SECRET should be securely fetched from an environment variable or a secrets manager
    auth = ("<Your_Client_ID>", "<Your_Client_Secret>") # Redacted for security. Replace <Your_Client_ID> and <Your_Client_Secret> with actual value
    
    response = requests.post(url, headers=headers, auth=auth, data=data)
    if response.status_code != 200:
        raise HTTPException(status_code=400, detail="Failed to authenticate.")
    return response.json().get("access_token")

# Endpoint to request time off
@app.post("/request-time-off/")
async def request_time_off(
	email: str, 
	totype: str,
	start_date: str, 
	end_date: str = None, 
	comments: str = "", 
	start_time: str = "", 
	end_time: str = ""
):
    try:
        access_token = get_access_token()
    except HTTPException as e:
        return {"error": e.detail}

    # These values need to be determined based on your actual use case and instance
    workday_instance_id = "<Your_workday_instance_id>"
    worker_id = "<Your_worker_id>"  # This should be fetched dynamically

    url_request_off = f"https://wd2-impl-services1.workday.com/api/absenceManagement/v1/{workday_instance_id}/workers/{worker_id}/requestTimeOff"

    headers = {
        "Authorization": f"Bearer {access_token}",
        "Content-Type": "application/json"
    }
    
    to_type = CANONICAL_TIME_OFF_PLAN_MAP[totype]

    payload = {
        "start_date": start_date,
        "end_date": end_date or start_date,
        "type": to_type,
        "comments": comments,
        "start_time": start_time,
        "end_time": end_time,
        # You need to add any other field required by the API
    }

    response = requests.post(url_request_off, json=payload, headers=headers)

    if response.status_code == 200:
        return {"message": "Time off requested successfully."}
    else:
        return {"error": f"Request failed with status code {response.status_code}: {response.text}"}
