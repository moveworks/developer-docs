---
availability: VALIDATED
description: A plugin that managers can use to identify all suspended cases assigned
  to their group.
domain:
- HR - Other
- HR - Recruiting & Talent
fidelity: VALIDATED
name: Find Suspended Cases Assigned To My Group
difficulty_level: BEGINNER
time_in_minutes: 10
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+identify+all+suspended+cases+assigned+to+my+group.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Which+group+are+you+referring+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+IT+Support+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+one+moment+while+I+retrieve+all+suspended+cases+assigned+to+the+IT+Support+Team.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+suspended+cases+assigned+to+the+IT+Support+Team%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E1.+%26nbsp%3B%3Cstrong%3ECase+ID%3A%3C%2Fstrong%3E+CS-00123%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ESubject%3A%3C%2Fstrong%3E+Network+Outage%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+High%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Suspended%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssigned+To%3A%3C%2Fstrong%3E+John+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%26nbsp%3B%3Cstrong%3ECase+ID%3A%3C%2Fstrong%3E+CS-00124%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ESubject%3A%3C%2Fstrong%3E+Email+Delivery+Issues%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+Medium%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Suspended%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssigned+To%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CS00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CS00124%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- servicenow
---
## **Introduction**

The **“Find Suspended Cases Assigned to My Group”** plugin allows **managers and group members** to quickly **view all suspended ServiceNow cases assigned to their team** using the **Moveworks AI Assistant**. By making suspended cases visible in one place, this plugin helps ensure that pending issues are tracked proactively, enabling the team to take timely action and resolve cases faster.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/plugins/servicenow-find-suspended-cases-to-group#about) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user`, `sys_user_group` and `incident` tables.
- **Field Access:** Sufficient access to retrieve incident details and user group information from ServiceNow.

> Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.
> 

## **Appendix:-**

### **API #1 : Get group ID by user Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=user.email=<USER_EMAIL>&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `USER_EMAIL`(string) – Email address of the user to retrieve `group_id`.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value=all` – Returns display values for referenced fields

### **API #2 : Get Suspended Cases by Group ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group%<GROUP_ID>&sysparm_fields=number%2Cshort_description%2Cstate%2Cassigned_to.name%2Cassignment_group&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters:**

- `GROUP_ID` (string) – The unique ID of the assignment group for which the suspended incidents need to be retrieved.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value=all` – Returns display values for referenced fields