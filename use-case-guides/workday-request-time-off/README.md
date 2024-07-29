---
design_pattern_id: 2
name: Request Time-Off in Workday
description: Plugin Template Guide for Requesting Time-Offs in Workday with your bot
systems: [workday]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22ALEX%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Efirst+time+off+plan%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22day+after+tomorrow%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EBy+default%2C+you%27re+taking+time+off+for+one+business+day+%288+hours%29.%3Cbr%3E%3Cbr%3EDo+you+want+to+specify+other+information+like+your+time+off+%3Cb%3Eend+date%3C%2Fb%3E%2C+%3Cb%3Estart+time%3C%2Fb%3E%2C+%3Cb%3Eend+time%3C%2Fb%3E%2C+or+any+other+%3Cb%3Ecomments%3C%2Fb%3E%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ENope%2C+I%27m+ready+for+my+day+off%21%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22ready+for+day+off%21%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3Cbr%3E-+%3Cb%3Eadditional_details%3C%2Fb%3E%3A+No%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 60
difficulty_level: Intermediate
---

# Take Time Off in Workday with your Copilot 🏝️

Your employees deserve to take time off to recharge and be productive. Requesting time off in Workday requires logging in and navigating multiple screens.

This guide helps you build a conversational experience for easy time off requests for your employees. It ensures your managers and payroll teams have and accurate records of time off requests.

Let's dive in!

**Pre-requisites**:

1. You have synchronized your employees’ work email from your IDAM like **Okta** or **Microsoft Entra** to Moveworks ([using Moveworks Setup](https://help.moveworks.com/docs/ingest-users)).
2. Your Workday instance uses the same work email as your IDAM.
3. You have reviewed the [how to implement a Creator Studio guide with your team](https://developer.moveworks.com/creator-studio/program-management/planning/#how-to-implement-a-creator-studio-guide), and have allocated bandwidth for your team to build the plugin.


# Conversation Design

[This purple chat mockup](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22ALEX%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Efirst+time+off+plan%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22day+after+tomorrow%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EBy+default%2C+you%27re+taking+time+off+for+one+business+day+%288+hours%29.%3Cbr%3E%3Cbr%3EDo+you+want+to+specify+other+information+like+your+time+off+%3Cb%3Eend+date%3C%2Fb%3E%2C+%3Cb%3Estart+time%3C%2Fb%3E%2C+%3Cb%3Eend+time%3C%2Fb%3E%2C+or+any+other+%3Cb%3Ecomments%3C%2Fb%3E%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ENope%2C+I%27m+ready+for+my+day+off%21%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on%3A+%5C%22ready+for+day+off%21%5C%22%3Cbr%3E%E2%8F%B3+Calling+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+with%3A%3Cbr%3E-+%3Cb%3Etime_off_plan_selection%3C%2Fb%3E%3A+Moveworks+Time+Off+Plan%3Cbr%3E-+%3Cb%3Estart_date%3C%2Fb%3E%3A+2024-07-31%3Cbr%3E-+%3Cb%3Eadditional_details%3C%2Fb%3E%3A+No%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Discovery Questions to Personalize Your Conversation Design

1. Which time off plans should be shown to employees in a given team or given country (that you are launching to)?
    * This determines the expected list of time off plans that will be shown to employees in the conversation design.
    * This also determines the launch rules for your plugin.
2. Do you want your employees to request time off in Workday, or through your Moveworks copilot?
    * You can simplify development of your plugin by linking your employees to Workday to request time off [(example conversation design)](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Request+Time+Off%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%9C%85+Calling+Plugin+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%8F%B3+Summarizing+response...%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+you+are+eligible+for+three+time+off+plans%3A%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3EYou+can+request+time+off+through+this+%3Ca+href%3D%5C%22https%3A%2F%2Fworkday.com%5C%22%3Elink%3C%2Fa%3E+here%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Ci%3ELink+redirects+to+Workday.+Employee+log+into+workday+to+request+time+off%3C%2Fi%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D), but this compromises the user experience for your employees.
3. What are the required fields for managers to review time off requests (example: comments, business justification). Which are optional?
    * This affects what questions will be asked to employees when they submit a time off request
4. Can your employees request time off requests only for themselves, or also for someone else?
   * Note: this guide only allows employees to request time off for themselves.
   * See API research below to understand how you can customize API research to allow time off requests for other employees

# For Workday Administrators

## Level of Access Requested
1. Configure an API Client for [Workday to integrate with Creator Studio](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday), configuring an Integration System User (ISU) and Integration System Security Group (ISSG) in the process. 
2. Provide access to the `Worker Data` and `Time Off` Business Objects as part of domain security policies. Elaborated in [Domain Permissions](#domain-permissions-required) section


## Overview of the Configuration

We will be accessing Workday through 
* the read-only WQL API
* the read + write AbsenceManagement REST API
* through your iPaaS connector in Moveworks Creator Studio

This requires you to:

1. Integrate Workday with Creator Studio – by following [this guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday). After following this guide, you will have
    * An API Client for Workday
    * An Integration System User (ISU)
    * An Integration System Security Group (ISSG)
    * Relevant [domain security policies listed below](#domain-permissions-required) as part of your Integrations Security Systems Group (ISSG)

> ℹ️ **Depending on your development practices, you may create multiple ISUs and ISSGs, for each Workday environment.**


2. Install the Custom Report below in Workday

    Use the custom report definitions below to install the columns and prompt defaults for your custom report. This sets up calculated fields for the time off request and time off balance which are required for the plugin to work.

    [Worker Details Moveworks Columns.xlsx](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Worker_Details_Moveworks_Columns.xlsx)

    [Worker Details Moveworks Prompt.xlsx](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Worker_Details_Moveworks_Prompt.xlsx)

3. Share your Workday connector credentials with your Moveworks developer team.

## Domain Permissions Required

| Workday Web Service | Domain Permissions Required | Description |
| --- | --- | --- |
| Worker Data Query (WQL) | Get_References, Get_Workers, Get_Eligible_Time_Off_Plans, Get_Time_Off_Balance, Get_Positions | Permissions needed to retrieve worker information, including contact details, position, and time off balances. |
| Time Off Request (REST) | Put_Time_Off_Request, Get_Workers, Get_Positions | Permissions needed to submit time off requests and retrieve worker and position information. |

![Domain%20Permissions](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot%202024-07-12%20at%2012.49.29 PM.png)

**Inform your Creator Studio developer that they can now use your Workday credentials to build their connector and plugin** 🚀


# For Creator Studio Developers

## Step 1: Test required APIs with Postman

Assume the following inputs for your subsequent API calls. You may need to change these values based on your Workday instance and user you are testing with.

* User email: `test@workday.net`

**API 1: Authentication**

Copy this cURL command into your Postman Collection. Substitute any red text with relevant Workday API credentials. You can use the access token from this API for any subsequent API calls.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/oauth2/{{instance}}/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{client_id}}:{{client_secret}}' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{refresh_token}}'
```

![Screenshot 2024-07-04 at 8.00.56 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.00.56_PM.png)

**API 2: Get Time Off Plan Details from Workday**

Use the API below to get relevant time off plan details for an employee in workday. Make sure you:
1. Substitute any `{{placeholder text}}` with the relevant values from connector configuration
2. Substitute `test@workday.net` or another test user email with `{{user.email_addr}}` so that the API can fetch the [requesting user's work email address](https://developer.moveworks.com/creator-studio/reference/user-attributes/#accessing-user-attributes).

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

Use the API below to submit the time off request for a user in Workday. Make sure you substitute any `{{placeholder text}}` with the relevant values from previous API. You must pass the following details from API 2 as part of the request:

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


## Step 2: Create a Connector Creator Studio for your iPaaS / APIM tool

Automation tools like [Azure Function Apps](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=azure-function-app), [Workdato](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workato), and [Power Automate](https://powerusers.microsoft.com/t5/Building-Power-Apps/Formatting-a-JSON-response-from-Power-Automate-flow-on-PowerApps/td-p/907563) allow you to expose REST APIs for use by cloud based applications like Creator Studio.

You can also learn more about these iPaaS / APIM tools in our [Program Management docs](https://developer.moveworks.com/creator-studio/program-management/automation-tools/). By the end of this step, you should have a connector in Creator Studio that allows you to call the new APIs above that you will be building. You may have already completed this step if you have connected to your iPaaS with Creator Studio.

## Step 3: Write your Orchestration Code in your iPaaS

Here is an example of the code you can use to orchestrate the API calls to submit time off requests in Workday. It is deployed as a Python FastAPI application in a virtual server on Azure App Service. You can modify this code to work with your middleware.

### Example iPaaS Code (with Python and FastAPI)

```python
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

```

## Step 4: Build in Creator Studio

We will be building this plugin as a Path along with an iPaaS to chain APIs 1, 2, and 3 together in order to submit a time off request for a user.

### Plugin Architecture Diagram

![Untitled](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Untitled.png)

**Triggers**

1. Natural language input to copilot requesting to take time off

**Natural Language Slots**

1. Start Date: when time off starts
2. End Date *(optional)*: when time off ends. By default end date is the same as the start date.
3. Comments *(optional)*: Any relevant context / justification for taking time off

**Actions**

1. Lookup time off type details: Executes the `/api/wql/v1/{{instance}}/data` API to query the requesting employee's Workday ID, eligible time off plans, and relevant time off types through their work email address.
2. Request time off: Executes the `/api/absenceManagement/v1/{{instance}}/workers/{{worker_id}}/requestTimeOff` API to request time off

**Caveats**

1. If an employee selects a time off plan without adequante time balance, they will get an error message for attempting to request time off from the REST API. You can personalize the error message as part of exception handling logic inside your iPaaS.
2. Email Address: we assume that a user is only requesting time off for themselves, and use the `{{user.email_addr}}` value from user roster profile of the employee calling this plugin. This would need to be changed if an employee is requesting time off on behalf of another employee.
3. This guide only describes how employees can request time off. It does not notify employees when their time off request is approved through the bot.
    * To add notifications once time off requests are approved, please build a new plugin with the [Events API](https://developer.moveworks.com/creator-studio/quickstart/events/)

### Build Plugin in Creator Studio
1. Create a Path in Creator Studio. You can copy the plugin details below
    * Plugin Name: `🏝️ Request Time Off in Workday` 
    * Plugin Description: `Allow employees to submit time off requests in Workday.`

    ![Name and Description](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-1.png)

2. The first question should ask which time off plan the employee wants to use for their time off request.
    * You can use **API 2** above to discover the eligible time off plans for any given employee group.

    ![Select Time Of](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-2.png)

3. Ask what the starting date for your employee's time off request.
    * This will be configured as a Date Slot inside Creator Studio

    ![Select Date](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-3.png)

4. Ask if the employee wants to specify an end date and additional comments for their time off request.
    *  If employee selects no, they will only take time off for a single busines day (8 hours). This is configurable in your iPaaS.

    ![Select Other Options](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-4.png)

5. If your employee selects no, you can configure an API action to submit your time off request.
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
        "time_off_type_id": "abc1234"
    }
    ```

    ![Submit Time Off](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-5.png)

6. If your employee selects yes, ask clarifying questions about their end date and additional comments for their time off request.
    * End Date: this is configured as a Date slot
    * Comments: this is configured as a Free Text input

    ![Select Other Options](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/crest-6.png)

7. Configure an API action to submit your time off request if your employee selects yes.
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
        "time_off_type_id": "abc1234",
        "end_date": "{{end_date}}",
        "comment": "{{comments}}"
    }
    ```

# Congratulations!

You just gave your employees the ability to take time off through your Copilot 🏝️ Look at our other Workday plugins below to further improve their experience below, and get inspired on what to build next.
