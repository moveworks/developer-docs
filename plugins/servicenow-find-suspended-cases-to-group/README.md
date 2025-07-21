---
availability: VALIDATED
description: A plugin that managers can use to identify all suspended cases assigned
  to their group.
domain:
- HR - Other
- HR - Recruiting & Talent
fidelity: GUIDE
name: Find Suspended Cases Assigned To My Group
difficulty_level: BEGINNER
time_in_minutes: 15
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+identify+all+suspended+cases+assigned+to+my+group.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Which+group+are+you+referring+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+IT+Support+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+one+moment+while+I+retrieve+all+suspended+cases+assigned+to+the+IT+Support+Team.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+suspended+cases+assigned+to+the+IT+Support+Team%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E1.+%26nbsp%3B%3Cstrong%3ECase+ID%3A%3C%2Fstrong%3E+CS-00123%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ESubject%3A%3C%2Fstrong%3E+Network+Outage%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+High%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Suspended%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssigned+To%3A%3C%2Fstrong%3E+John+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%26nbsp%3B%3Cstrong%3ECase+ID%3A%3C%2Fstrong%3E+CS-00124%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ESubject%3A%3C%2Fstrong%3E+Email+Delivery+Issues%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+Medium%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Suspended%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssigned+To%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CS00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CS00124%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- servicenow
---

# **Introduction:**

The **Find Suspended Cases** plugin provides instant visibility into paused ServiceNow cases assigned to your support group through the Moveworks AI Assistant. Team leads and agents can quickly identify blocked tickets requiring action—all within chat.

This guide covers the simple setup to enable suspended case lookups.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+identify+all+suspended+cases+assigned+to+my+group.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Which+group+are+you+referring+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+IT+Support+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+one+moment+while+I+retrieve+all+suspended+cases+assigned+to+the+IT+Support+Team.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+suspended+cases+assigned+to+the+IT+Support+Team%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E1.+%26nbsp%3B%3Cstrong%3ECase+ID%3A%3C%2Fstrong%3E+CS-00123%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ESubject%3A%3C%2Fstrong%3E+Network+Outage%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+High%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Suspended%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssigned+To%3A%3C%2Fstrong%3E+John+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%26nbsp%3B%3Cstrong%3ECase+ID%3A%3C%2Fstrong%3E+CS-00124%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ESubject%3A%3C%2Fstrong%3E+Email+Delivery+Issues%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+Medium%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Suspended%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EAssigned+To%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CS00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CS00124%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user`, `sys_user_group` and `incident` tables.

> Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.
> 

# **Appendix**

### **API #1: Get Group Id by using Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=user.email=<USER_EMAIL>&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'

```

**Query Parameters:**

- `USER_EMAIL`(string) – Email address of the user to retrieve `group_id`.

### **API #2: Get Suspended Cases For An Assignment Group**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group%<GROUP_ID>&sysparm_fields=number%2Cshort_description%2Cstate%2Cassigned_to%2Cassignment_group&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters:**

- `GROUP_ID` (string) – The unique ID of the assignment group for which the resolved incidents need to be retrieved..