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

# Fetch worker ID by email
def get_worker_id_by_email(email: str, access_token: str) -> str:
    workday_instance_id = "<Your_Workday_Instance_ID>"
    url = f"https://wd2-impl-services1.workday.com/ccx/api/wql/v1/{workday_instance_id}/data?offset=0&limit=1"
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {access_token}",
    }
    
    payload = {
        "query": f"SELECT workdayID FROM workerFromEmailAddress (emailAddress = '{email}')"
    }
    
    response = requests.post(url, headers=headers, json=payload)
    if response.status_code == 200:
        data = response.json()
        # Check if we have at least one record in the data list
        if data['total'] > 0 and len(data['data']) > 0:
            return data['data'][0]['workdayID']
        else:
            raise HTTPException(status_code=404, detail="Worker ID not found.")
    else:
        raise HTTPException(status_code=response.status_code, detail="Failed to fetch worker ID.")

# Endpoint to request time off
@app.post("/request-time-off/")
async def request_time_off(email: str, totype: str, start_date: str, end_date: str = None, comments: str = "", start_time: str = "", end_time: str = ""):
    try:
        access_token = get_access_token()
        worker_id = get_worker_id_by_email(email, access_token)
    except HTTPException as e:
        return {"error": e.detail}
    
    workday_instance_id = "<Your_workday_instance_id>"
    
    url_request_off = f"https://wd2-impl-services1.workday.com/api/absenceManagement/v1/{workday_instance_id}/workers/{worker_id}/requestTimeOff"
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {access_token}",
    }

    to_type_id = CANONICAL_TIME_OFF_PLAN_MAP.get(totype, "")
    if not to_type_id:
        return {"error": "Invalid time-off type provided."}
    
    payload = {
        "start_date": start_date,
        "end_date": end_date or start_date,
        "type": to_type_id,
        "comments": comments,
        "start_time": start_time,
        "end_time": end_time,
    }
    
    response = requests.post(url_request_off, json=payload, headers=headers)
    if response.status_code == 200:
        return {"message": "Time off requested successfully."}
    else:
        return {"error": f"Request failed with status code {response.status_code}: {response.text}"}
