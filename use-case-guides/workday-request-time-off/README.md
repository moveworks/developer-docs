---
design_pattern_id: 2
name: Request Time-Off in Workday
description: Plugin Template Guide for Requesting Time-Offs in Workday with your bot
systems: [workday]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3A+Natural+Language%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+Action%3C%2Fb%3E%3A%3Cb%3E+%3C%2Fb%3EQuery+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%3Ci%3ECalls+plugin+to+lookup+eligible+time+off+balances%3C%2Fi%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%9C%85+Fetching+%3Cb%3EWorkday+ID%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3E%F0%9F%A4%B2+Slots%3C%2Fb%3E%3A+Time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3E%F0%9F%A4%B2+Slots%3C%2Fb%3E%3A+Start+date%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EBy+default%2C+you%27re+taking+time+off+for+one+business+day+%288+hours%29.%3Cbr%3E%3Cbr%3EDo+you+want+to+specify+other+information+like+your+time+off+%3Cb%3Eend+date%3C%2Fb%3E%2C+%3Cb%3Estart+time%3C%2Fb%3E%2C+%3Cb%3Eend+time%3C%2Fb%3E%2C+or+any+other+%3Cb%3Ecomments%3C%2Fb%3E%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ENope%2C+I%27m+ready+for+my+day+off%21%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3E%F0%9F%93%9A+Guidelines%3C%2Fb%3E%3A+Do+not+specify+end+date%2C+start+time%2C+end+time%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+Action%3C%2Fb%3E%3A+Request+time+off%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Position+and+Time+Off+Type%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 60
difficulty_level: Intermediate
---

# Take Time Off in Workday with your Copilot 🏝️

Your employees deserve to take time off to recharge and be productive. Requesting time off inside Workday requires you to login and navigate through multiple screens to complete the process.

By following this guide, you will build a conversational experience that lets your employees take time off with ease, and ensures your managers and payroll teams have accurate records of time off requests to process for team capacity planning.

Let's dive in!

**Pre-requisites**:

1. You have synchronized your employees’ work email from your IDAM like **Okta** or **Microsoft Entra** to Moveworks ([using Moveworks Setup](https://help.moveworks.com/docs/ingest-users)).
2. Your Workday instance uses the same work email as your IDAM.
3. You have reviewed the [how to implement a Creator Studio guide with your team](https://developer.moveworks.com/creator-studio/program-management/planning/#how-to-implement-a-creator-studio-guide), and have allocated bandwidth for your team to build the plugin.


# Conversation Design

[This purple chat mockup](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3A+Natural+Language%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+Action%3C%2Fb%3E%3A%3Cb%3E+%3C%2Fb%3EQuery+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%3Ci%3ECalls+plugin+to+lookup+eligible+time+off+balances%3C%2Fi%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%9C%85+Fetching+%3Cb%3EWorkday+ID%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3E%F0%9F%A4%B2+Slots%3C%2Fb%3E%3A+Time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3E%F0%9F%A4%B2+Slots%3C%2Fb%3E%3A+Start+date%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EBy+default%2C+you%27re+taking+time+off+for+one+business+day+%288+hours%29.%3Cbr%3E%3Cbr%3EDo+you+want+to+specify+other+information+like+your+time+off+%3Cb%3Eend+date%3C%2Fb%3E%2C+%3Cb%3Estart+time%3C%2Fb%3E%2C+%3Cb%3Eend+time%3C%2Fb%3E%2C+or+any+other+%3Cb%3Ecomments%3C%2Fb%3E%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ENope%2C+I%27m+ready+for+my+day+off%21%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3E%F0%9F%93%9A+Guidelines%3C%2Fb%3E%3A+Do+not+specify+end+date%2C+start+time%2C+end+time%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+Action%3C%2Fb%3E%3A+Request+time+off%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Position+and+Time+Off+Type%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Discovery Questions to Personalize Your Conversation  Design *(Customization Options)*

1. Which time off plans should be shown to employees in a given team or given country (that you are launching to)?
    * This determines the expected list of time off plans that will be shown to employees in the conversation design, as well as launch rules for your plugin.
2. Do you want your employees to request time off in Workday, or through your Moveworks copilot?
    * You can simplify development of your plugin by linking your employees to Workday to request time off [(example conversation design)](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3A+Natural+Language%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+Action%3C%2Fb%3E%3A%3Cb%3E+%3C%2Fb%3EQuery+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%3Ci%3ECalls+plugin+to+lookup+eligible+time+off+balances%3C%2Fi%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3Cbr%3E%3C%2Fb%3E%E2%9C%85+Fetching+%3Cb%3EWorkday+ID%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E+%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Request+Time+Off+in+Workday%22%7D%2C%7B%22text%22%3A%22Got+it%2C+thanks%21%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Ci%3EEmployees+log+into+workday+to+request+time+off%3C%2Fi%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D), but this compromises the user experience for your employees.
3. What are the required fields for managers to review time off requests (example: comments, business justification). Which are optional?
    * This affects what questions will be asked to employees by your copilot when they submit a time off request
4. Can your employees request time off requests only for themselves, or also for someone else?
   * Note: this guide only allows employees to request time off for themselves. See API research below to understand how you can customize API research to allow time off requests for other employees
5. Do you want employees to be notified when their time off request is approved through the bot?
    * Note: this guide only describes how employees can request time off. Please build a new plugin to notify employees when their time off request is approved with the [Events API](https://developer.moveworks.com/creator-studio/quickstart/events/)

# For Workday Administrators

**Level of Access Requested**:
1. Configure an API Client for [Workday to integrate with Creator Studio](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday), configuring an Integration System User (ISU) and Integration System Security Group (ISSG) in the process. 
2. Provide access to the `Worker Data` and `Time Off` Business Objects as part of domain security policies. Elaborated in [Domain Permissions](#domain-permissions-required) section


## Overview of the Configuration

We will be accessing Workday through the read-only WQL API and the read + write AbsenceManagement REST API, through a Workday Connector in Moveworks. This requires you to:

1. Integrate Workday with Creator Studio – by following [this guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday). After following this guide, you will have
    * An API Client for Workday
    * An Integration System User (ISU)
    * An Integration System Security Group (ISSG)
    * Relevant [domain security policies listed below](#domain-permissions-required) as part of your Integrations Security Systems Group (ISSG)

> ℹ️ **You will be creating at least two ISUs and two ISSGs, one in a staging environment, and one in production.**


2. Install the Custom Report below in Workday**

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

> ✅ **Inform your Creator Studio developer that they can now use your Workday credentials to build their connector and plugin** 🚀


# For Creator Studio Developers

## Step 1: Test required APIs with Postman

Assume the following inputs for your subsequent API calls. You may need to change these values based on your Workday instance and user you are testing with.

* User email: `test@workday.net`

**API 1: Authentication**

Copy-paste this authentication cURL into your Postman Collection for this Use case, substituting any red text with the relevant values from your Workday connector configuration. This helps ensure you are connecting to your workday via the generated access token from this API.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/oauth2/{{instance}}/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{client_id}}:{{client_secret}}' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{refresh_token}}'
```

![Screenshot 2024-07-04 at 8.00.56 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.00.56_PM.png)

**API 2: Get Time Off Request Details from Workday**

Copy-paste the API cURL below to get relevant time off details for a user in workday. To ensure you are fetching the workday id and the time off plan details for a user correctly, make sure you:
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

Copy-paste the API cURL below to submit the time off request for a user in Workday, substituting any red text with the relevant values from connector configuration and the user information from the above API. This submits a time-off request for a user correctly. Please note you need to pass the following details from API 3 as part of the request:

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


## Step 2: Create a Connector in Creator Studio
Follow the authentication guide to [create a working Workday connector in Creator Studio](https://developer.moveworks.com/creator-studio/resources/authentication-guide/?id=workday#create-a-connector-and-test-in-creator-studio) with the credentials that you received from your Workday administrator.

![Untitled](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot%202024-07-23%20at%2010.04.23 AM.png)

## Step 3: Build in Creator Studio

We will be building this use case as a query triggered path along with an iPaaS to chain APIs 3 and 4 together in order to submit a time off request for a user.

### Plugin Architecture Diagram

![Untitled](./Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Untitled.png)

**Triggers**

1. Natural language input to copilot requesting to take time off

**Natural Language Slots**

1. Start Date: when time off starts
2. End Date *(optional)*: when time off ends. By default end date is the same as the start date.
3. Comments *(optional)*: Any relevant context / justification for taking time off
4. Start Time *(optional)*: if taking partial days off, starting time for time off can be specified.
5. End Time *(optional)*: if taking partial days off, ending time for time off can be specified.

**Actions**

1. Lookup time off type details: Executes the `/api/wql/v1/{{instance}}/data` API to query the requesting employee's Workday ID, eligible time off plans, and relevant time off types through their work email address.
2. Request time off: Executes the `/api/absenceManagement/v1/{{instance}}/workers/{{worker_id}}/requestTimeOff` API to request time off

**Caveats**

1. Assuming an employees select a time off plan that has adequate time off balance. An error message is thrown for an invalid time off 
2. An employee could specify a time off plan that they are not eligible for
1. Current Date: used in the "as of date" in the request PTO action. Could be static.
2. Email Address: we assume that a user is only requesting time off for themselves, and use the `{{user.email_addr}}` value from user roster profile of the employee calling this plugin. This would need to be changed if an employee is requesting time off on behalf of another employee.


### Example iPaaS Code (with Python and FastAPI)

```python
from fastapi import FastAPI, HTTPException
import requests

CANONICAL_TIME_OFF_PLAN_MAP = {
  "Time off (USA)": "67839087362157384953",
  "Wellness Days (USA)": "802394093284924538920",
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
```

# Congratulations!

You just gave your employees the ability to take time off through your Copilot 🏝️ Look at our other Workday use cases below to further improve their experience below, and get inspired on what to build next.
