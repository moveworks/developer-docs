---
availability: INSTALLABLE
description: A plugin that allows change managers and IT administrators to identify
  and summarize blackout periods affecting a CR planned implementation window via
  the Moveworks AI Assistant. This automation cross-references change schedules against
  defined blackout policies, explaining overlapping restrictions, their reasons, and
  recommended rescheduling options, to help prevent policy violations and ensure compliant
  change execution.
installation_asset_uuid: 56433048-9dd0-46b3-a50d-55810aea7bc0
name: Summarize Blackout Windows for a Change Request
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+know+more+about+blackout+windows+before+scheduling+a+change+request%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+summarize+blackout+windows+for+a+ServiceNow+Change+Request.+Please+specify+the+Change+Request+by+providing+its%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EID%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Ename%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Eby+selecting+from+change+requests+assigned+to+you.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Eby+selecting+change+requests+opened+by+you%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Eby+selecting+change+requests+linked+to+your+assignment+groups%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22change+requests+owned+by+me%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+ServiceNow+for+change+requests+assigned+to+the+current+user.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+these+change+requests+assigned+to+you.+Which+one+would+you+like+me+to+summarize%3F%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ECHG004231%3C%2Fb%3E+-+Database+Upgrade+for+Payroll+System%3C%2Fli%3E%3Cli%3E%3Cb%3ECHG004245%3C%2Fb%3E+-+Database+Patch+for+CRM+Servers%3C%2Fli%3E%3Cli%3E%3Cb%3ECHG004250%3C%2Fb%3E+-+Network+Firewall+Rule+Update+for+New+VPN+Access%3C%2Fli%3E%3Cli%3E%3Cb%3ECHG004258%3C%2Fb%3E+-+Application+Deployment+for+HR+Portal+v2.0%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Number+1%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+%27CHG004231+-+Database+Upgrade+for+Payroll+System%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+planned+start+and+end+times+for+CHG004231+from+ServiceNow.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Checking+for+overlapping+blackout+windows+based+on+the+planned+schedule.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Summarizing+blackout+window+information+and+remediation+recommendations.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ESummary+for+Change+Request%3A+CHG004231+-+Database+Upgrade+for+Payroll+System%3C%2Fstrong%3E%3C%2Fp%3E%3Cp%3E%3Cstrong%3EScheduled+Window%3A%3C%2Fstrong%3E+2024-08-20+22%3A00+UTC+to+2024-08-21+02%3A00+UTC%3C%2Fp%3E%3Cp%3EThis+Change+Request+%3Cstrong%3Ehas+identified+conflicts%3C%2Fstrong%3E+with+blackout+windows.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBlackout+Name%3A%3C%2Fstrong%3E+Monthly+Database+Maintenance+Blackout%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EStart+and+End+Times%3A%3C%2Fstrong%3E+2024-08-20+23%3A00+UTC+to+2024-08-21+01%3A00+UTC%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EReason%3A%3C%2Fstrong%3E+Critical+monthly+database+patching%2C+requiring+full+system+isolation.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERemediation+Recommendation%3A%3C%2Fstrong%3E+Reschedule+the+upgrade+to+start+after+this+blackout+window+ends+%28i.e.%2C+after+01%3A00+UTC+on+2024-08-21%29+or+request+a+formal+exception+with+appropriate+approvals+from+the+Database+Operations+team.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22CHG004231+-+Database+Upgrade+for+Payroll+System%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## Introduction

The **“Summarize Blackout Windows for a Change Request”** plugin helps users quickly obtain clear, concise summaries of blackout windows associated with any **Change Request** in ServiceNow using the Moveworks AI Assistant. This streamlines the review process by automatically extracting blackout periods, highlighting potential scheduling conflicts, and providing easy-to-understand guidance—reducing manual analysis and ensuring smoother change planning.

This guide will walk you through installing and configuring the plugin in **Agent Studio** so you can start generating blackout window summaries in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+know+more+about+blackout+windows+before+scheduling+a+change+request%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+summarize+blackout+windows+for+a+ServiceNow+Change+Request.+Please+specify+the+Change+Request+by+providing+its%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EID%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Ename%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Eby+selecting+from+change+requests+assigned+to+you.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Eby+selecting+change+requests+opened+by+you%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3Eby+selecting+change+requests+linked+to+your+assignment+groups%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22change+requests+owned+by+me%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+ServiceNow+for+change+requests+assigned+to+the+current+user.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+these+change+requests+assigned+to+you.+Which+one+would+you+like+me+to+summarize%3F%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ECHG004231%3C%2Fb%3E+-+Database+Upgrade+for+Payroll+System%3C%2Fli%3E%3Cli%3E%3Cb%3ECHG004245%3C%2Fb%3E+-+Database+Patch+for+CRM+Servers%3C%2Fli%3E%3Cli%3E%3Cb%3ECHG004250%3C%2Fb%3E+-+Network+Firewall+Rule+Update+for+New+VPN+Access%3C%2Fli%3E%3Cli%3E%3Cb%3ECHG004258%3C%2Fb%3E+-+Application+Deployment+for+HR+Portal+v2.0%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Number+1%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+%27CHG004231+-+Database+Upgrade+for+Payroll+System%27.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+planned+start+and+end+times+for+CHG004231+from+ServiceNow.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Checking+for+overlapping+blackout+windows+based+on+the+planned+schedule.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Summarizing+blackout+window+information+and+remediation+recommendations.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ESummary+for+Change+Request%3A+CHG004231+-+Database+Upgrade+for+Payroll+System%3C%2Fstrong%3E%3C%2Fp%3E%3Cp%3E%3Cstrong%3EScheduled+Window%3A%3C%2Fstrong%3E+2024-08-20+22%3A00+UTC+to+2024-08-21+02%3A00+UTC%3C%2Fp%3E%3Cp%3EThis+Change+Request+%3Cstrong%3Ehas+identified+conflicts%3C%2Fstrong%3E+with+blackout+windows.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EBlackout+Name%3A%3C%2Fstrong%3E+Monthly+Database+Maintenance+Blackout%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EStart+and+End+Times%3A%3C%2Fstrong%3E+2024-08-20+23%3A00+UTC+to+2024-08-21+01%3A00+UTC%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EReason%3A%3C%2Fstrong%3E+Critical+monthly+database+patching%2C+requiring+full+system+isolation.%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERemediation+Recommendation%3A%3C%2Fstrong%3E+Reschedule+the+upgrade+to+start+after+this+blackout+window+ends+%28i.e.%2C+after+01%3A00+UTC+on+2024-08-21%29+or+request+a+formal+exception+with+appropriate+approvals+from+the+Database+Operations+team.%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22CHG004231+-+Database+Upgrade+for+Payroll+System%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend setting up ServiceNow before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

**Table Access:**  Read access to the `sys_user_grmember`, `sys_user`, `sys_user_group`, `change_request`, `conflict`, `cmn_schedule`, `cmdb_ci`, and service-related tables to retrieve assignment groups, change request details, and blackout schedule information.

**Field Access:**  Sufficient access to read user details, assignment groups, change request fields, conflicts, blackout schedules, configuration items, and impacted services.

**Your Instance Configuration:**

All ServiceNow API endpoints in this plugin use `{{your_instance}}` as a placeholder. After installation, replace this placeholder in the action definitions with your actual ServiceNow instance name.

To find your instance name:

1. Log in to your ServiceNow account.
2. Check the URL in your browser — the instance name appears before `.service-now.com`, for example: `https://your_instance.service-now.com/...`

Make sure to update this value across all actions that reference the ServiceNow API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

### **API #1: Get User Assignment Groups by Email**

```bash
curl --location 'https://<your_instance>/api/now/table/sys_user_grmember?sysparm_display_value=all&sysparm_query=user.email={{user_email}}^ORDERBYDESCsys_created_on&sysparm_fields=group,sys_created_on&sysparm_limit=100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameter:**

- **`user_email`** : The email of the user whose assignment groups you want to retrieve.
- **`ORDERBYDESCsys_created_on`** : Sorts results by newest created first.
- **`sysparm_limit`** : Limits the number of results returned (e.g., 100)
- **`sysparm_display_value`** : Returns both display value and sys_id
- **`sysparm_fields`** : Comma-separated list of fields to return

### **API #2: Search Change Requests by Criteria**

```bash
curl --location 'https://<your_instance>/api/now/table/change_request?sysparm_query={{filter_query}}^ORDERBYDESCsys_created_on&sysparm_fields=sys_id,number,short_description,assigned_to,planned_start_date,planned_end_date,sys_created_on,state&sysparm_limit=100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters**

- **`filter_query`** : Dynamic ServiceNow encoded query used to search change requests based on different criteria.
- **`assignment_group_id`** : Filters change requests by assignment group(s).
- **`change_number`** : Retrieves a specific change request by its number.
- **`short_desc`** : Finds change requests using partial or full short description.
- **`user_email`** : Filters change requests either **assigned to** or **opened by** a specific user email.
- **`sysparm_limit`** : Limits the number of results returned (e.g., 100).
- **`ORDERBYDESCsys_created_on`** : Sorts results by newest created first.
- **`sysparm_fields`**: Comma-separated list of fields to return in the response. Example: `sys_id, number, short_description, assigned_to, planned_start_date, planned_end_date, state, sys_created_on`

**RSQL Filtering Notes:**

- Use **ServiceNow encoded query syntax** in the `filter_query` parameter to filter on different objects/conditions.
- Common examples:
    - **By Assignment Group:** `^assignment_groupIN{{assignment_group_id}}`
    - **By Change Request Number:** `number={{change_number}}^assignment_groupIN{{assignment_group_id}}`
    - **By Short Description:** `short_descriptionLIKE{{short_desc}}^assignment_groupIN{{assignment_group_id}}`
    - **By Assigned User Email:** `assigned_to.email={{user_email}}`
    - **By Opened By Email:** `opened_by.email={{user_email}}`
- Filters can be **combined** using:
    - `^` → AND

**Example of a Compound Encoded Query Filter:**

```bash
short_descriptionLIKE{{short_desc}}^assignment_groupIN{{assignment_group_id}}
```

**Example Response:**

```bash
{
  "result": [
    {
      "sys_id": "{{sys_id}}",
      "number": "{{change_number}}",
      "short_description": "{{short_description}}",
      "opened_by": {
        "value": "{{opened_by_sys_id}}",
        "link": "{{opened_by_link}}",
        "email": "{{opened_by_email}}"
      },
      "assigned_to": {
        "value": "{{assigned_to_sys_id}}",
        "link": "{{assigned_to_link}}",
        "email": "{{assigned_to_email}}"
      },
      "assignment_group": {
        "value": "{{assignment_group_id}}",
        "link": "{{assignment_group_link}}",
        "name": "{{assignment_group_name}}"
      },
      "description": "{{description}}",
      "state": "{{state}}"
    }
  ]
}
```

**Notes:**

- This API endpoint supports **flexible searches**, allowing filtering by: assignment group, change request number, short description, assigned to user email, opened by user email.
- Multiple filters can be **combined using `^` (AND)** in the `filter_query`.

### **API #3: Get Blackout Windows / Conflicts for a Change Request**

```bash
curl --location 'https://<your_instance>/api/now/table/conflict?sysparm_query=change={{change_sys_id}}^type=blackout^ORDERBYDESCsys_created_on&sysparm_fields=change,type,change.conflict_status,schedule,schedule.name,change.start_date,change.end_date,schedule.time_zone,schedule.description,last_checked,schedule.label,schedule.calendar_name,configuration_item.name,impacted_service,sys_created_on&sysparm_limit=50' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters:**

- **`change_sys_id`** : The **sys_id of the change request** you want to check for blackout windows.
- **`type`** : Filters for blackout windows only, used in sysparm_query as **type=blackout**
- **`ORDERBYDESCsys_created_on`** : Sorts results by newest created first.
- **`sysparm_limit`** : Limits the number of results returned (e.g., 100)
- **`sysparm_fields`** : Comma-separated list of fields to return