---
availability: IDEA
description: A plugin that allows users to look up incidents assigned to their assignment
  group.
domain:
- IT
fidelity: GUIDE
name: Look Up Incidents Assigned to My Assignment Group
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+incidents+assigned+to+my+group%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assignment+groups+for+the+current+user.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+You+are+a+member+of+the+following+assignment+groups+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+group%27s+incidents+would+you+like+to+see%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22IT+Support%22%7D%2C%7B%22buttonText%22%3A%22Network+Operations%22%7D%2C%7B%22buttonText%22%3A%22Hardware+Support%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IT+Support%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Network+Operations%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Hardware+Support%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Operations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+incidents+assigned+to+the+%27Network+Operations%27+group.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+incidents+currently+assigned+to+the+%3Cb%3ENetwork+Operations%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EINC0010049%3A+VPN+connectivity+issues%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+1+-+Critical%3C%2Fli%3E%3Cli%3EState%3A+In+Progress%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Beth+Anglin%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010042%3A+Network+switch+unresponsive%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+2+-+High%3C%2Fli%3E%3Cli%3EState%3A+New%3C%2Fli%3E%3Cli%3EAssigned+to%3A+%3Ci%3EUnassigned%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010035%3A+Slow+network+performance+in+London+office%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+3+-+Moderate%3C%2Fli%3E%3Cli%3EState%3A+On+Hold%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Howard+Johnson%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010049%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010042%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010035%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---

## **Introduction**

The **Look Up Incidents Assigned To My Group** plugin allows employees to retrieve a list of incidents of a assignment group, directly through the Moveworks AI Assistant. This provides instant visibility into team performance and workload trends—without the need to manually filter or run reports in ServiceNow.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+incidents+assigned+to+my+group%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assignment+groups+for+the+current+user.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+You+are+a+member+of+the+following+assignment+groups+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+group%27s+incidents+would+you+like+to+see%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22IT+Support%22%7D%2C%7B%22buttonText%22%3A%22Network+Operations%22%7D%2C%7B%22buttonText%22%3A%22Hardware+Support%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IT+Support%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Network+Operations%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Hardware+Support%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Operations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+incidents+assigned+to+the+%27Network+Operations%27+group.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+incidents+currently+assigned+to+the+%3Cb%3ENetwork+Operations%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EINC0010049%3A+VPN+connectivity+issues%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+1+-+Critical%3C%2Fli%3E%3Cli%3EState%3A+In+Progress%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Beth+Anglin%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010042%3A+Network+switch+unresponsive%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+2+-+High%3C%2Fli%3E%3Cli%3EState%3A+New%3C%2Fli%3E%3Cli%3EAssigned+to%3A+%3Ci%3EUnassigned%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EINC0010035%3A+Slow+network+performance+in+London+office%3C%2Fb%3E%3Cul%3E%3Cli%3EPriority%3A+3+-+Moderate%3C%2Fli%3E%3Cli%3EState%3A+On+Hold%3C%2Fli%3E%3Cli%3EAssigned+to%3A+Howard+Johnson%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0010049%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010042%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0010035%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user`, `sys_user_group` and `incident` tables.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Group Id by using Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=user.email=<USER_EMAIL>&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'

```

**Query Parameters:**

- `USER_EMAIL`(string) – Email address of the user to retrieve `group_id`.

### **API #2: Get Resolved Incidents For An Assignment Group**

```bash
curl --location '<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group%<Group_ID>&sysparm_fields=number%2Cshort_description%2Cpriority%2Cstate%2Cassigned_to' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer'
```

**Query Parameters:**

- `GROUP_ID` (string) – The unique ID of the assignment group for which the incidents need to be retrieved.