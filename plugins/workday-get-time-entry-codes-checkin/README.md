---
availability: INSTALLABLE
description: A plugin that allows you to lookup the time entry codes in order to check
  in.
difficulty_level: INTERMEDIATE
domain:
- HR - Time & Absence
- HR - Other
fidelity: TEMPLATE
installation_asset_uuid: ce548da4-8dbb-4255-94d5-1babd7cb4616
name: View Check-In Time Entry Code
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+my+eligible+time+entry+codes+for+today%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+fetch+the+eligible+time+entry+codes+for+you+in+Workday+for+today%2C+March+7%2C+2025.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+eligible+time+entry+codes+for+you%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EREGULAR%3A+Regular+Hours%3C%2Fli%3E%5Cn++%3Cli%3EOVERTIME%3A+Overtime+Hours%3C%2Fli%3E%5Cn++%3Cli%3EPROJECT_IN_OUT%3A+Project+Time%3C%2Fli%3E%5Cn++%3Cli%3ESICK%3A+Sick+Time%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EDo+you+want+to+check-in+for+any+of+the+above+time+entry+codes%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%7D%2C%7B%22buttonText%22%3A%22No%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
time_in_minutes: 20
---

# **Introduction:**

The **View Check-In Time Entry Code** plugin provides instant access to Workday time tracking codes through the Moveworks AI Assistant. Employees and managers can quickly lookup valid time codes, categories, and project identifiers - enabling accurate time entry without switching systems.

This guide outlines the simple setup to enable time code lookups in minutes.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat]( https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+my+eligible+time+entry+codes+for+today%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+fetch+the+eligible+time+entry+codes+for+you+in+Workday+for+today%2C+March+7%2C+2025.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+eligible+time+entry+codes+for+you%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EREGULAR%3A+Regular+Hours%3C%2Fli%3E%5Cn++%3Cli%3EOVERTIME%3A+Overtime+Hours%3C%2Fli%3E%5Cn++%3Cli%3EPROJECT_IN_OUT%3A+Project+Time%3C%2Fli%3E%5Cn++%3Cli%3ESICK%3A+Sick+Time%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EDo+you+want+to+check-in+for+any+of+the+above+time+entry+codes%3F%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%7D%2C%7B%22buttonText%22%3A%22No%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

## **Required Permissions:**

- `View access`to worker data : Time Tracking
- `Get access`to worker data : Time Codes

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

## **API #1: GET Worker ID**

The Get Worker Id API uses WQL to retrieve the worker ID.

```bash
curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '{{email_PrimaryWorkOrPrimaryHome}}'"
}
'

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