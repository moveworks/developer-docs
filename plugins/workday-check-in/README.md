---
availability: INSTALLABLE
description: A plugin that enables users to check-in for the selected time clock event
  in Workday.
installation_asset_uuid: 683a074a-5d1a-4655-b660-991cc7811dbc
name: Check-In in Workday
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+check+in+for+today.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+you+check+in.+Which+time+entry+code+would+you+like+to+use%3F%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EREGULAR+-+Regular+Hours%3C%2Fli%3E%5Cn++%3Cli%3EOVERTIME+-+Overtime+Hours%3C%2Fli%3E%5Cn++%3Cli%3EPROJECT+%28IN%2FOUT%29+-+Project+Time%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EProject+Time%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+checking+you+in+now.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+user%27s+timezone...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Received+User%27s+Timezone%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EChecking+in+the+user...%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ECheck-in+successful+for+Jane+Doe+at+2025-07-03T09%3A00%3A00Z+in+Eastern+Time+%28US+%26amp%3B+Canada%29+with+time+entry+code+REGULAR.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
---

# **Introduction :**

The **“Workday Check-In”** plugin enables employees to quickly complete their check-In process in Workday, all through the Moveworks AI Assistant. This helps users efficiently manage their check-In tasks without having to navigate Workday manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes.

Let’s get started!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+check+in+for+today.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+you+check+in.+Which+time+entry+code+would+you+like+to+use%3F%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EREGULAR+-+Regular+Hours%3C%2Fli%3E%5Cn++%3Cli%3EOVERTIME+-+Overtime+Hours%3C%2Fli%3E%5Cn++%3Cli%3EPROJECT+%28IN%2FOUT%29+-+Project+Time%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EProject+Time%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+checking+you+in+now.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+user%27s+timezone...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Received+User%27s+Timezone%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EChecking+in+the+user...%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ECheck-in+successful+for+Jane+Doe+at+2025-07-03T09%3A00%3A00Z+in+Eastern+Time+%28US+%26amp%3B+Canada%29+with+time+entry+code+REGULAR.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+in+Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View and Modify access`to worker data : Time Tracking
- `Get and Put access`to worker data : Time Tracking

> Note: Ensure Workday domain security policies grant API access to these functions.
> 

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

### **API #1: Workday_WorkerID_TimeZone**

The **Workday_WorkerID_TimeZone** API retrieves the worker id and timezone of a user using email.

```bash
curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
		"query": "SELECT workdayID, fullName, email_PrimaryWorkOrPrimaryHome, timeZoneOfLocationOfWorkersPrimaryPosition, check_InStatus FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{email}}'\''"
}'
Copy
```

**Request Body Fields :**

- email(string) – The email address of the user whose worker id and timezone want to retrieve.

## **API #2: Get TimeEntryCode**

The **Get TimeEntryCode** API retrieves a worker's TimeEntryCode based on their Worker ID from Workday. This API is essential for fetching the worker's time entry codes for a specified date and in/out code.

```bash
curl --location 'https://<YOUR_DOMAIN>/api/timeTracking/v3/<INSTANCE_ID>/values/timeTypes/timeEntryCodes?date=<DATE>&inOutCodeOnly=true&worker=<WORKER_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters :**

- WORKER_ID(string) – The worker id of the user whose even type id want to view.
- DATE(string) – The random date.

## **API #3: Check-In Workday**

The **Check-In Workday** [](https://community.workday.com/sites/default/files/file-hosting/restapi/#timeTracking/v3/get-/values/timeTypes/timeEntryCodes/)API allows you to log time entries for workers in Workday. This API uses the **Time Clock Events** endpoint to record check-ins, check-outs, and other time-related events.

```bash
curl --location 'https://<YOUR_DOMAIN>/api/timeTracking/v3/moveworks_dpt1/timeClockEvents' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
    "worker": {
        "id": "{{worker_id}}"
    },
    "eventType": {
        "id": "{{eventType}}"
    },
    "timeZone": {
        "id": "{{timeZone}}"
    },
    "dateTime": "{{dateTime}}",
    "timeEntryCode": {
        "id": "{{timeEntryCode}}"
    }
}'
```

**Request Body Fields :**

- WORKER_ID (string) – The worker id of the user.
- EVENT_TYPE(string) – The event type id of the clock out event.
- TIMEZONE(string) – The timezone of the user.
- DATETIME(string) – The current date and time.
- TimeEntryCode(string) -  TimeEntryCode of the Worker.