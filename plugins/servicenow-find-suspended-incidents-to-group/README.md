---
availability: INSTALLABLE
description: A plugin that allows users to identify all suspended cases assigned to
  their group.
installation_asset_uuid: a2e34a25-7dc1-4621-b62c-55dc599d2ff2
name: Find Suspended Incidents Assigned To My Assignment Group
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+identify+all+suspended+incidents+assigned+to+my+group.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+the+groups+the+user+belongs+to+in+ServiceNow.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFound+the+following+groups+for+the+user%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EIT+Support+Team%3C%2Fli%3E%3Cli%3ENetwork+Operations%3C%2Fli%3E%3Cli%3ESecurity+Response%3C%2Fli%3E%3C%2Ful%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou%27re+a+member+of+the+following+groups%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cstrong%3EIT+Support+Team%3C%2Fstrong%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ENetwork+Operations%3C%2Fstrong%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESecurity+Response%3C%2Fstrong%3E%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhich+group+would+you+like+to+see+suspended+incidents+for%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22IT+Support+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+suspended+incidents+in+ServiceNow+assigned+to+the+%27IT+Support+Team%27+group.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+suspended+incidents.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+suspended+incidents+assigned+to+the+IT+Support+Team%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EIncident+ID%3A%3C%2Fb%3E+INC-00123%3Cul%3E%3Cli%3E%3Cb%3ESubject%3A%3C%2Fb%3E+Network+Outage%3C%2Fli%3E%3Cli%3E%3Cb%3EPriority%3A%3C%2Fb%3E+High%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Suspended%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+To%3A%3C%2Fb%3E+John+Doe%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EIncident+ID%3A%3C%2Fb%3E+INC-00124%3Cul%3E%3Cli%3E%3Cb%3ESubject%3A%3C%2Fb%3E+Email+Delivery+Issues%3C%2Fli%3E%3Cli%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Medium%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Suspended%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+To%3A%3C%2Fb%3E+Jane+Smith%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC-00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC-00124%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## **Introduction**

The **“Find Suspended Incidents Assigned to My Group”** plugin allows **managers and group members** to quickly **view all suspended ServiceNow Incidents assigned to their team** using the **Moveworks AI Assistant**. By making suspended incidents visible in one place, this plugin helps ensure that pending issues are tracked proactively, enabling the team to take timely action and resolve suspended incidents faster.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+identify+all+suspended+incidents+assigned+to+my+group.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+the+groups+the+user+belongs+to+in+ServiceNow.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFound+the+following+groups+for+the+user%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EIT+Support+Team%3C%2Fli%3E%3Cli%3ENetwork+Operations%3C%2Fli%3E%3Cli%3ESecurity+Response%3C%2Fli%3E%3C%2Ful%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou%27re+a+member+of+the+following+groups%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cp%3E%3Cstrong%3EIT+Support+Team%3C%2Fstrong%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ENetwork+Operations%3C%2Fstrong%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESecurity+Response%3C%2Fstrong%3E%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhich+group+would+you+like+to+see+suspended+incidents+for%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22IT+Support+Team%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+suspended+incidents+in+ServiceNow+assigned+to+the+%27IT+Support+Team%27+group.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+suspended+incidents.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+suspended+incidents+assigned+to+the+IT+Support+Team%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EIncident+ID%3A%3C%2Fb%3E+INC-00123%3Cul%3E%3Cli%3E%3Cb%3ESubject%3A%3C%2Fb%3E+Network+Outage%3C%2Fli%3E%3Cli%3E%3Cb%3EPriority%3A%3C%2Fb%3E+High%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Suspended%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+To%3A%3C%2Fb%3E+John+Doe%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EIncident+ID%3A%3C%2Fb%3E+INC-00124%3Cul%3E%3Cli%3E%3Cb%3ESubject%3A%3C%2Fb%3E+Email+Delivery+Issues%3C%2Fli%3E%3Cli%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Medium%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Suspended%3C%2Fli%3E%3Cli%3E%3Cb%3EAssigned+To%3A%3C%2Fb%3E+Jane+Smith%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC-00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC-00124%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

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

### **API #2 : Get Suspended Incidents by Group ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group%<GROUP_ID>&sysparm_fields=number%2Cshort_description%2Cstate%2Cassigned_to.name%2Cassignment_group&sysparm_display_value=true' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters:**

- `GROUP_ID` (string) – The unique ID of the assignment group for which the suspended incidents need to be retrieved.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value=true` – Returns display values for referenced fields