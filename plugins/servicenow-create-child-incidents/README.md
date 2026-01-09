---
availability: INSTALLABLE
description: A plugin that allows you to create tasks or sub tasks within a parent
  ticket.
installation_asset_uuid: 020e82b3-631b-4c70-b89a-4ee51d3750fb
name: Create Tasks on a Parent Ticket
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+subtask+on+an+incident+in+ServiceNow.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+incident+do+you+want+to+add+a+subtask+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22INC0010028%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+incident+INC0010028%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+I+found+the+incident.+What+should+the+subtask+description+be%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Investigate+network+connectivity+issues%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27ll+create+a+subtask+with+the+description+%27Investigate+network+connectivity+issues%27+for+incident+INC0010028.+Is+that+correct%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+create+subtask%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+create+subtask%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Creating+subtask...%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Successfully+created+subtask.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012303%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
solution_tags:
- IT
- Ticketing
---

# Introduction

The **Create Ticket Subtasks** plugin allows users to add subtasks to existing ServiceNow tickets directly through the Moveworks AI Assistant. This enables users to break down larger incidents into manageable components while maintaining proper tracking and accountability.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- **ServiceNow Connector** built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create your connector)

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+subtask+on+an+incident+in+ServiceNow.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+incident+do+you+want+to+add+a+subtask+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22INC0010028%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+incident+INC0010028%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+I+found+the+incident.+What+should+the+subtask+description+be%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Investigate+network+connectivity+issues%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27ll+create+a+subtask+with+the+description+%27Investigate+network+connectivity+issues%27+for+incident+INC0010028.+Is+that+correct%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+create+subtask%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+create+subtask%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Creating+subtask...%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Successfully+created+subtask.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012303%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for **ServiceNow** first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. Note that for **Create Ticket Subtasks**, you will need to also add the following permissions (the connector guide will walk you through how to add permissions):

- Write access to `incidents` table

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

You can change the fields you would like to be able to add to the incident by going through the incident table API documentation 

# Appendix

## API Research

```bash
curl --request POST \
     --url 'https://<instance>.service-now.com/api/now/table/incident' \
     --header 'Authorization: Bearer <ACCESS_TOKEN>' \
     --header 'Content-Type: application/json' \
     --data '{
       "parent_incident": "12345abcd6789",
       "short_description": "Investigate network outage",
       "caller_id": "user_98765",
       "urgency": "1",
       "impact": "2"
     }'

```

### Request Body Parameters

- **`parent_incident`** (string) – The `sys_id` of the parent incident.
- **`short_description`** (string) – A brief summary of the subtask.
- **`caller_id`** (string) – The `sys_id` of the user creating the subtask.
- **`urgency`** (integer) – Urgency level (1 = High, 2 = Medium, 3 = Low).
- **`impact`** (integer) – Impact level (1 = High, 2 = Medium, 3 = Low).

For more details, refer to the ServiceNow API documentation.