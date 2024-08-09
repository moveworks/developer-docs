---
design_pattern_id: 2
name: Request Time Off in Workday
description: Plugin Template Guide for Requesting Time Off in Workday with Your Bot
systems: [workday]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22ALEX%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+here+are+your+time+off+plans+and+balances.+You+can+choose+to+book+time+off+for+any+of+the+plans.%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1+%E2%80%93+Employee+Time+Off+%28USA%29%3A+60+hours%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2+%E2%80%93+Sick+Time+Off+%28USA%29%3A+20+hours%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3+%E2%80%93+Wellness+Day+%28USA%29%3A+24+hours%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22text%22%3A%22Book+Time+Off%22%2C%22style%22%3A%22PRIMARY%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+book+time+with+the+first+time-off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Efirst+time+off+plan%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22day+after+tomorrow%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EDo+you+want+to+proceed+with+taking+time+off+for+one+business+day+%288+hours%29.%3Cbr%3E%3Cbr%3EBy+selecting+no%2C+you+can+specify+the+%3Cb%3Eend+date%3C%2Fb%3E%2C+and+any+additional+%3Cb%3Ecomments%3C%2Fb%3E+to+take+time+off.%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EYes%2C+one+day+sounds+good%21%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22ready+for+day+off%21%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3Cbr%3E-+%3Cb%3Eadditional_details%3C%2Fb%3E%3A+No%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 60
difficulty_level: Intermediate
---

# Take Time Off in Workday with your Copilot 🏝️

Your employees deserve to take time off to recharge and stay productive. Requesting time off in Workday requires you to log in and navigate multiple screens.

This guide helps you build a conversational experience for easy time off requests for your employees. It ensures your managers and payroll teams have accurate records of time-off requests.

Let's dive in!

**Prerequisites**:

1. Synchronize your employees’ work email from your IDAM, such as Okta or Microsoft Entra, to Moveworks [using Moveworks Setup](https://help.moveworks.com/docs/ingest-users).
2. Ensure that your Workday instance uses the same work email as your IDAM.
3. Ensure that your Workday administrator has the necessary permissions to configure an API Client for Workday, and provide access to the `Worker Data` and `Time Off` Business Objects as part of domain security policies.
4. Click on 'Experimental Features' in the top right corner of your Creator Studio window, and ensure that Paths in Copilot and the Next-gen API editor are enabled.

    ![Experimental Features](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-alt-1.png)


# Conversation Design

[This purple chat mockup](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22ALEX%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+here+are+your+time+off+plans+and+balances.+You+can+choose+to+book+time+off+for+any+of+the+plans.%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1+%E2%80%93+Employee+Time+Off+%28USA%29%3A+60+hours%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2+%E2%80%93+Sick+Time+Off+%28USA%29%3A+20+hours%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3+%E2%80%93+Wellness+Day+%28USA%29%3A+24+hours%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22text%22%3A%22Book+Time+Off%22%2C%22style%22%3A%22PRIMARY%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+book+time+with+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Efirst+time+off+plan%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22day+after+tomorrow%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EDo+you+want+to+proceed+with+taking+time+off+for+one+business+day+%288+hours%29.%3Cbr%3E%3Cbr%3EBy+selecting+no%2C+you+can+specify+the+%3Cb%3Eend+date%3C%2Fb%3E%2C+and+any+additional+%3Cb%3Ecomments%3C%2Fb%3E+to+take+time+off.%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EYes%2C+one+day+sounds+good%21%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22ready+for+day+off%21%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3Cbr%3E-+%3Cb%3Eadditional_details%3C%2Fb%3E%3A+No%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Discovery Questions to Personalize Your Conversation Design

1. Which groups of employees can book time off through Workday through this plugin? Is it all employees in a country? Specific teams? Or other groups?
    * This determines the launch rules for your plugin.
2. Do you want your employees to request time off in Workday, or through your Moveworks copilot?
    * You can simplify development of your plugin by linking your employees to Workday to request time off. However, this is not as complete of an experience for your employees. See [example conversation design.](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Request+Time+Off%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%9C%85+Calling+Plugin+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%8F%B3+Summarizing+response...%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+you+are+eligible+for+three+time+off+plans%3A%3Cbr%3E1.+Employee+Time+Off+%28USA%29%3Cbr%3E2.+Sick+Time+Off+%28USA%29%3Cbr%3E3.+Wellness+Day+%28USA%29%3Cbr%3E%3Cbr%3EYou+can+request+time+off+through+this+%3Ca+href%3D%5C%22https%3A%2F%2Fworkday.com%5C%22%3Elink%3C%2Fa%3E+here.%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Ci%3ELink+redirects+to+Workday.+Employee+log+into+workday+to+request+time+off%3C%2Fi%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D)
3. What are the required fields for managers to review time off requests (example: comments, business justification). Which are optional?
    * This affects what questions will be asked to employees when they submit a time off request
4. Can your employees request time off requests only for themselves, or also for someone else?
   * Note: this guide only allows employees to request time off for themselves.
   * See API research below to understand how you can customize API research to allow time off requests for other employees

# For Workday Administrators

## Overview of the Configuration

We will be accessing Workday through:

* the read-only WQL API
* the read + write AbsenceManagement REST API
* using your middleware connector in Creator Studio

This requires you to:

1. Integrate Workday with Creator Studio – by following [this guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday). After following this guide, you will have
    * An API Client for Workday
    * An Integration System User (ISU)
    * An Integration System Security Group (ISSG)
    * Relevant [domain security policies listed below](#domain-permissions-required) as part of your Integrations Security Systems Group (ISSG)

2. Install the Custom Report below in Workday

    Use the custom report definitions below to install the columns and prompt defaults for your custom report. This sets up calculated fields for the time off request and time off balance which are required for the plugin to work.

    [Worker Details Moveworks Columns.xlsx](https://developer.moveworks.com/file-hosting/workday/Worker_Details_Moveworks_Columns.xlsx)

    [Worker Details Moveworks Prompt.xlsx](https://developer.moveworks.com/file-hosting/workday/Worker_Details_Moveworks_Prompt.xlsx)

3. Share your Workday connector credentials with your Moveworks developer team.

## Domain Permissions Required

| Workday Web Service | Domain Permissions Required | Description |
| --- | --- | --- |
| Worker Data Query (WQL) | Get_References, Get_Workers, Get_Eligible_Time_Off_Plans, Get_Time_Off_Balance, Get_Positions | Permissions needed to retrieve worker information, including contact details, position, and time off balances. |
| Time Off Request (REST) | Put_Time_Off_Request, Get_Workers, Get_Positions | Permissions needed to submit time off requests and retrieve worker and position information. |

![Domain%20Permissions](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot%202024-07-12%20at%2012.49.29 PM.png)

**Inform your Creator Studio developer that they can now use your Workday credentials to build their connector and plugin**.


# For Creator Studio Developers

## Step 1: Validate you have built a Creator Studio Connector for your middleware / APIM tool

A connector to your [middleware tool](https://developer.moveworks.com/creator-studio/program-management/automation-tools/) is required before you can build a Creator Studio plugin. If you do not have a connector for your middleware tool, you can learn more about how to build one in our [Connector Configuration Guide](https://developer.moveworks.com/creator-studio/integrations/outbound/connector-configuration/).

## Step 2: Test required APIs with Postman

Copy the cURL commands below into your API client like Postman for testing. Substitute any `{{placeholder text}}` with relevant Workday API credentials or inputs.

We will use the following inputs for each API call below. You may need to change these values based on your Workday instance and user you are testing with.

* User email: `test@workday.net`

**API 1: Authentication**

Use the API below to generate a new access token for Workday, which is required for all subsequent API calls.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/oauth2/{{instance}}/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{client_id}}:{{client_secret}}' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{refresh_token}}'
```

![Screenshot 2024-07-04 at 8.00.56 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.00.56_PM.png)

**API 2: Get Time Off Plan Details from Workday**

Use the API below to get relevant time off plan details for an employee in workday. 

```bash
curl --location 'https://{{domain}}.workday.com/ccx/api/wql/v1/{{instance}}/data?limit=10&offset=0' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}' \
--data-raw '
    {
        "query": "SELECT workdayID, fullName, email_PrimaryWorkOrPrimaryHome, position, eligibleAndVisibleTimeOffPlansForWorkerAsOfDate, allEligibleTimeOffsForWorker, cf_TimeOffBalanceForPTOAndVacationPlans FROM workerFromEmailAddress (emailAddress = 'test@workday.net')"
    }
'
```

![Screenshot 2024-07-04 at 8.07.14 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.07.14_PM.png)

**API 3: Request Time Off in Workday**

Use the API below to submit the time off request for a user in Workday. You must pass the following details from API 2 as part of the request:

1. The date(s) you are requesting time off for, as a JSON array, where each date follows the `YYYY-MM-DD` format.
2. The `timeOffType_id` from API 2 - which is the ID within the `allEligibleTimeOffsForWorker` field
2. The `position_id` from API 2
4. The `workdayId` from API 2

```bash
curl --location 'https://{{domain}}.workday.com/ccx/api/absenceManagement/v1/{{instance}}/workers/{{worker_id}}/requestTimeOff' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}' \
--data '{
  "days": [
    {
      "date": "{{selected_date_1}}",
      "dailyQuantity": 8,
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      },
      "position": {
            "id": "{{position_id}}"
        }
    },
    {
      "date": "{{selected_date_2}}",
      "dailyQuantity": 8,
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      },
      "position": {
            "id": "{{position_id}}"
        }
    },
    {
      "date": "{{selected_date_3}}",
      "dailyQuantity": 8,
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      },
      "position": {
            "id": "{{position_id}}"
        }
    }
  ]
}'
```

![Screenshot 2024-07-04 at 8.19.38 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.19.38_PM.png)

## Step 3: Write your Orchestration Code in your iPaaS

Here is an example of the code you can use to orchestrate the API calls to submit time off requests in Workday. It is deployed as a Python FastAPI application on a server on Azure Virtual Network. You can modify this code to work with your middleware.

### Example iPaaS Code (with Python and FastAPI)

```python
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
    PTO_REQUEST_URL_TEMPLATE = "https://wd2-impl-services1.workday.com/ccx/api/absenceManagement/v1/{workday_instance_id}/workers/{worker_id}/requestTimeOff"

    @property
    def basic_auth_header(self) -> str:
        credentials = f"{self.CLIENT_ID}:{self.CLIENT_SECRET}"
        b64_credentials = base64.b64encode(credentials.encode("utf-8")).decode(
            "utf-8"
        )
        return f"Basic {b64_credentials}"


config = Config()


class WorkerDetail(BaseModel):
    workday_id: str
    full_name: str
    email: str
    position_descriptor: str
    position_id: str
    time_off_descriptor: str
    time_off_id: str


class FlattenedWorkerResponse(BaseModel):
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


def flatten_worker_details_json(raw_data: List[Dict]) -> List[WorkerDetail]:
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


@app.get("/auth")
async def auth_endpoint():
    try:
        access_token = await get_access_token()
        return {"access_token": access_token}
    except httpx.HTTPError as e:
        raise HTTPException(
            status_code=500, detail=f"Authentication failed"
        ) from e


@app.get("/workers/{email}/time-off", response_model=FlattenedWorkerResponse)
async def get_worker_details_endpoint(email: str):
    try:
        access_token = await get_access_token()
        raw_data = await fetch_worker_details(email, access_token)
        processed_data = flatten_worker_details_json(raw_data)
        return FlattenedWorkerResponse(total=len(processed_data), data=processed_data)
    except httpx.HTTPError as e:
        raise HTTPException(
            status_code=500, detail="Failed to fetch worker details"
        ) from e


@app.post("/workers/{email}/time-off")
async def create_time_off_request_endpoint(
    email: str, request: TimeOffRequest
):
    try:
        access_token = await get_access_token()
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
```

## Step 4: Build in Creator Studio

We will be building this plugin as a Query Resolver (fka Query-Triggered Path) along with an iPaaS to chain APIs 1, 2, and 3 together in order to submit a time off request for a user.

### Plugin Architecture Diagram

![Untitled](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Untitled.png)

**Triggers**

1. Natural language input to copilot requesting to take time off

**Natural Language Slots**

1. Start date: when time off starts. Configured as a Date Slot.
2. End date *(optional)*: when time off ends. By default end date is the same as the start date if the user does not specify an end date. Configured as a Date Slot.
3. Comments *(optional)*: Any relevant context / justification for taking time off. Configured as a Free Text Slot.

**Actions**

1. Lookup time off type details: Executes the `/api/wql/v1/{{instance}}/data` API to query the requesting employee's Workday ID, eligible time off plans, and relevant time off types through their work email address.
2. Request time off: Executes the `/api/absenceManagement/v1/{{instance}}/workers/{{worker_id}}/requestTimeOff` API to request time off

**Caveats**

1. Time off requests for plans with inadequate balances will be rejected by the underlying Workday API.

2. The `{{user.email_addr}}` attribute scopes the time off request to the employee making the request.
    * You can change this attribute to a slot that collects another employee's name / email address if you want to request time off on behalf of another employee.

3. This guide does not notify employees when their time off request is approved through the bot.
    * To add notifications once time off requests are approved, please build a new plugin with the [Events API](https://developer.moveworks.com/creator-studio/quickstart/events/)

### Build Plugin in Creator Studio


1. Create a Query in Creator Studio. You can copy the plugin details below
    * Plugin Name: `🏝️ Request Time Off in Workday` 
    * Plugin Description: `Allow employees to submit time off requests in Workday`

    ![Name and Description](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-1.png)

2. On the API Connection Screen, Click "Import CURL" to import a cURL command of the `GET /workers/{email}/time-off` API from your middeware tool. You can configure additional authorization headers as per your organization's security policies.

    ```bash
    curl --location 'https//{{base_url}}/workers/{{user.email_addr}}/time-off' \
    --header 'Content-Type: application/json'
    ```

    ![API Connection](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-2.png)


3. Test your `GET /workers/{email}/time-off` API to make sure it returns your employee's time off details as expected. You can configure the API for one employee only for testing purposes (like `user@workday.net` in the example below), and replace with the requester's email address before launching to production (with `{{user.email_addr}}`).

    ![Test API](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-3.png)

4. Save your connector after testing your API.

5. Label your APIs with fields that you want to extract from the response. Set your identifier and description as your Time Off Type and Name. Click Next.

    ![Label APIs](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-4.png)

6. Add a Followup Action to Book Time Off.

    * Type: `Ask clarifying questions and execute a solution`
    * Name: `Book Time Off`

    ![Add Followup Action](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-5.png)

7. Configure slots from the query response to ensure you pass the time off type id from the query to the API action. You can view and add slots from the "🔑 View Slots" button in the "Design Conversation" step.

    ![Configure Slots](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-6.png)

8. Inside the "Design Conversation" step, ask what the starting date for your employee's time off request.
    * This will be configured as a Date Slot inside Creator Studio

    ![Select Date](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-7.png)

9. Ask if the employee wants to specify an end date and additional comments for their time off request.
    *  If employee selects no, they will only take time off for a single busines day (8 hours). This is configurable in your iPaaS.

    ![Select Other Options](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-8.png)

10. If your employee selects no, configure an API action to submit your time off request. If you use the iPaaS code above, configure your API action as follows:
    * Connector: Use your iPaaS connector here
    * API Endpoint Path: `/workers/{{user.email_addr}}/time-off`
    * Method: `POST`
    * Headers: `Content-Type` : `application/json`
    * Query Params: Leave Blank
    * Request Body: Use the below JSON to configure your API action. The time off type id can be found from running **API 2** for an employee's email.
    ```json
    {
        "start_date": "{{start_date}}",
        "time_off_type_id": "abc1234"
    }
    ```

    ![Submit Time Off](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-9.png)

11. If your employee selects yes, ask for the end date and additional comments for their time off request.
    * End Date: this is configured as a Date slot
    * Comments: this is configured as a Free Text input

    ![Select Other Options](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-10.png)

12. Configure an API action to submit your time off request if your employee selects yes.
    * If you use the iPaaS code below, configure your API action as follows:
    * Connector: Use your iPaaS connector here
    * API Endpoint Path: `/workers/{{user.email_addr}}/time-off`
    * Method: `POST`
    * Headers: `Content-Type` : `application/json`
    * Query Params: Leave Blank
    * Request Body: Use the below JSON to configure your API action. The time off type id can be found from running **API 2** for an employee's email.
    ```json
    {
        "start_date": "{{start_date}}",
        "time_off_type_id": "{{time_off_type_id}}",
        "end_date": "{{end_date}}",
        "comment": "{{comments}}"
    }
    ```
    ![API Action](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-11.png)

# Congratulations!

You just gave your employees the ability to take time off through your Copilot. Look at our other Workday plugins below to further improve their experience below, and get inspired on what to build next.
