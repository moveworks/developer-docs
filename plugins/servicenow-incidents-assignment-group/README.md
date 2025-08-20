---
availability: IDEA
description: A plugin that allows users to look up incidents assigned to their assignment
  group.
domain:
- IT
fidelity: GUIDE
name: Look Up Incidents Assigned to My Assignment Group
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+incidents+assigned+to+my+group%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assignment+groups+for+the+current+user.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+You+are+a+member+of+the+following+assignment+groups+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+group%27s+incidents+would+you+like+to+see%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22IT+Support%22%7D%2C%7B%22buttonText%22%3A%22Network+Operations%22%7D%2C%7B%22buttonText%22%3A%22Hardware+Support%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IT+Support%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Network+Operations%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Hardware+Support%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Operations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+incidents+assigned+to+the+%27Network+Operations%27+group.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+incidents+currently+assigned+to+the+%3Cb%3ENetwork+Operations%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EINC0010049%3A+VPN+connectivity+issues%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+1+-+Critical%3C%2Fli%3E%3Cli%3EState%3A+In+Progress%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Beth+Anglin%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010042%3A+Network+switch+unresponsive%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+2+-+High%3C%2Fli%3E%3Cli%3EState%3A+New%3C%2Fli%3E%3Cli%3EAssigned+to%3A+%3Ci%3EUnassigned%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010035%3A+Slow+network+performance+in+London+office%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+3+-+Moderate%3C%2Fli%3E%3Cli%3EState%3A+On+Hold%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Howard+Johnson%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010049%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010042%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010035%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---
## Introduction

The **“Look Up Incidents Assigned to My Assignment Group”** plugin lets employees quickly see all incidents handled by their assignment group within a chosen date range, right from the Moveworks AI Assistant. This makes it easy to track team workload and performance without manually running reports in ServiceNow

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+see+the+incidents+assigned+to+my+assignment+group.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+can+look+up+incidents+in+%3Cstrong%3EServiceNow%3C%2Fstrong%3E+for+your+assignment+groups.+By+default%2C+I+will+show+open+incidents+from+the+last+90+days.+Would+you+like+to+see+open+or+resolved+incidents%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Open+Incidents%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESearching+%3Cb%3EServiceNow%3C%2Fb%3E+for+open+incidents+assigned+to+your+groups+from+the+last+90+days.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ERetrieving+details+for+the+matching+incidents.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+the+following+open+incidents%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EINC0010234+-+VPN+connection+issues+for+remote+users%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+2+-+High%3C%2Fli%3E%3Cli%3EState%3A+In+Progress%3C%2Fli%3E%3Cli%3EAssigned+to%3A+David+Miller%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010230+-+Email+service+degradation%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+1+-+Critical%3C%2Fli%3E%3Cli%3EState%3A+New%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Network+Team%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010225+-+Shared+drive+access+denied+for+marketing+team%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+3+-+Moderate%3C%2Fli%3E%3Cli%3EState%3A+On+Hold%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Sarah+Johnson%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010221+-+New+hire+laptop+setup+request%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+4+-+Low%3C%2Fli%3E%3Cli%3EState%3A+In+Progress%3C%2Fli%3E%3Cli%3EAssigned+to%3A+IT+Support%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010234+-+VPN+connection+issues+for+remote+users%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010230+-+Email+service+degradation%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010225+-+Shared+drive+access+denied+for+marketing+team%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010221+-+New+hire+laptop+setup+request%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

**Table Access**:

- `Read` access to the `sys_user` and `sys_user_group` tables (to identify the assignment group).
- `Read` access to the `incident` table (to retrieve incident details).

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Group Id by using Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=user.email=<USER_EMAIL>&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `USER_EMAIL`(string) –  Email address of the user to retrieve `group_id`.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value` (string) – If set to `all`, returns both display values and actual values for each field.

### **API #2: Get Incidents For An Assignment Group**

```bash
curl --location "https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group={{group_sys_id}}^{{state}}^{{date_range}}&sysparm_fields=number,short_description,priority,category,caller_id,resolved_by,resolved_at,resolution_notes,state,close_notes&sysparm_limit=100&sysparm_display_value=true \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"
```

**Query Parameters:**

- `group_sys_id`(string) – The unique ID of the assignment group for which the resolved incidents need to be retrieved.
- `sysparm_fields` (string) – Fields to include in the response.
- `sysparm_limit` (integer) – Maximum number of records to return.
- `state` (optional, integer) – Incident state filter.
- `date_range` – Used to filter incidents within a specified date range, based on their state. The filter applies both the **start date** and **end date.**
- `sysparm_display_value` (Boolean) – If `true`, returns display values instead of raw values for reference fields