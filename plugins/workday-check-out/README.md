---
availability: INSTALLABLE
description: A plugin that enables users to check-out for the day.
installation_asset_uuid: b7985817-441d-4098-a262-2d7e73ed40e3
name: Check-out in Workday
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+check+out+for+today%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+checking+you+out+now.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+user%27s+timezone...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Received+User%27s+Timezone%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Clocking+out+the+user...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ECheck-out+successful+for+Jane+Doe+at+2025-07-03T19%3A30%3A00Z+in+Eastern+Time+%28US+%26amp%3B+Canada%29.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
---

# **Introduction :**

The **“Workday Check-Out”** plugin enables employees to quickly complete their check-out process in Workday, all through the Moveworks AI Assistant. This helps users efficiently manage their check-out tasks without having to navigate Workday manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+check+out+for+today%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+checking+you+out+now.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+user%27s+timezone...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Received+User%27s+Timezone%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Clocking+out+the+user...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ECheck-out+successful+for+Jane+Doe+at+2025-07-03T19%3A30%3A00Z+in+Eastern+Time+%28US+%26amp%3B+Canada%29.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View and Modify access` to worker data : Time Tracking
- `Get and Put access` to worker data : Time Tracking

**Tenant Configuration:**

All Workday API endpoints in this plugin use  **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Workday_WorkerID_TimeZone

The **Workday_WorkerID_TimeZone** API retrieves the worker id and timezone of a user using email.

```bash
curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{     
		"query": "SELECT workdayID, fullName, email_PrimaryWorkOrPrimaryHome, timeZoneOfLocationOfWorkersPrimaryPosition, check_InStatus FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email}}'\''" 
}'
```

**Request Body Fields :**

- `email`  (string) – The email address of the user whose worker id and timezone want to retrieve.

## API #2: Get_Event_ID_by_Worker_ID

The **Get_Event_ID_by_Worker_ID** API retrieves the event type id using worker id.

```bash
curl --request GET \
curl --location 'https://<DOMAIN>.myworkday.com/api/timeTracking/v3/<TENANT>/values/timeValues/outReason/?date={{date}}&inOutCodeOnly=true&offset=0&limit=10&worker={{WORKER_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters :**

- `WORKER_ID`  (string) – The worker id of the user whose even type id want to view.
- `date`  (string) – The random date.

## API #3: Check_Out

The **Check_Out** API is utilized to process the check-out of a user.

```bash
curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/timeTracking/v3/<TENANT>/timeClockEvents?worker={{WORKER_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{ 
    "worker": {
        "id": "{{WORKER_ID}}"
    },
    "eventType": {
        "id": "{{EVENT_TYPE_ID}}"
    },
    "timeZone": {
        "id": "{{TIMEZONE}}"
    },
    "dateTime": "{{DATETIME}}"
}
'
```

**Request Body Fields :**

- `WORKER_ID`  (string) – The worker id of the user.
- `EVENT_TYPE_ID`  (string) – The event type id of the  clock out event.
- `TIMEZONE`  (string) – The timezone of the user.
- `DATETIME`  (string) – The current date and time.