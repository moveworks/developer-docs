---
availability: VALIDATED
description: Update/Bulk update ticket status, and other applicable ticket fields.
name: Update Ticket’s fields ServiceNow
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+the+status+of+a+ticket.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+ticket+would+you+like+to+update%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EINC0012345%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+update+ticket+INC0012345.+What+is+the+new+status+you+want+to+set%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EChange+ticket+number+INC0012345+Set+it+to+%27In+Progress%27%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27ll+update+the+status+of+ticket+INC0012345+to+%27In+Progress%27.+Is+that+correct%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Updated+ticket+INC0012345%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
solution_tags:
- IT
- Ticketing
---

# Introduction

The **Update Tickets Fields** functionality allows users to modify key ticket attributes in ServiceNow, including ticket status, priority, urgency, assigned user, and short description. This enables seamless ticket management by ensuring tickets are updated efficiently based on user inputs.

# Prerequisites

- Access to Agent Studio
- **ServiceNow Connector** built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create your connector)

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+update+the+status+of+a+ticket.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+ticket+would+you+like+to+update%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EINC0012345%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+update+ticket+INC0012345.+What+is+the+new+status+you+want+to+set%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EChange+ticket+number+INC0012345+Set+it+to+%27In+Progress%27%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27ll+update+the+status+of+ticket+INC0012345+to+%27In+Progress%27.+Is+that+correct%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Updated+ticket+INC0012345%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for **ServiceNow** first before installing this plugin. Please follow the ServiceNow Connector Guide to set up the connector. Note that for the **Update Ticket Fields** plugin, you will need the following permissions (the connector guide will explain how to add them):

- **Write access to the `incident` table**

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

- **Only relevant fields should be included in the request body** to optimize API performance.
- **`assigned_to`** should be updated only when explicitly requested.
- **`urgency`**, **`priority`**, and **`state`** should be updated based on direct user input or inferred context.
- **`short_description`** should be changed only if the user requests a modification.

# Appendix

## API Details

The plugin uses the following API to change fields in an incident in ServiceNow:

```bash
curl --request PATCH \
     --url 'https://<instance>.service-now.com/api/now/table/incident/{{task_sys_id}}' \
     --data '{
       "assigned_to": "8971ac838323021014e0c4a6feaad3a2",
       "urgency": "1",
       "priority": "2",
       "state": "2",
       "short_description": "WiFi issue in MTV office"
     }'
```

### Required Path Parameters

- **`task_sys_id`** (string) – Unique identifier of the ticket to be updated.

### Optional Body Parameters (Sent Based on User Input)

- **`assigned_to`** (string) – `user_sys_id` of the assigned user; included only when reassignment is requested.
- **`urgency`** (integer) – Ticket urgency (1 = High, 2 = Medium, 3 = Low); included when specified or inferred.
- **`priority`** (integer) – Ticket priority (1 = Critical, 2 = High, 3 = Moderate, 4 = Low); included if explicitly mentioned or derived from urgency.
- **`state`** (integer) – Ticket status (1 = New, 2 = In Progress, 3 = On Hold, 6 = Resolved, 7 = Closed); included if the user requests a status change.
- **`short_description`** (string) – Updated description of the ticket; included if the user requests a change.

For more details, refer to the ServiceNow API documentation.