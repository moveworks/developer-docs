---
availability: VALIDATED
description: A plugin that provides support leads with a TLDR summary of ticket activity
  and agent actions, based on comments and updates.
difficulty_level: BEGINNER
fidelity: VALIDATED
name: Summarize Ticket History & Activity
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+summarise+the+ticket+history+and+activity.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+summarise+the+ticket+history+and+activity.+Which+ticket+are+you+referring+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Ticket+INC-12345%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere%27s+a+summary+of+the+ticket+history+and+activity+for+INC0012345%3A%26nbsp%3B%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EThe+ticket+was+initially+described+Updated+to+include+more+details+by+John+Doe+on+January+26%2C+2024+at+10%3A00+AM.%26nbsp%3B%3C%2Fli%3E%5Cn++%3Cli%3EThe+stage+was+changed+from+%27On+Hold%27+to+%27In+Progress%27+by+Jane+Smith+at+10%3A30+AM+on+the+same+day.%26nbsp%3B%3C%2Fli%3E%5Cn++%3Cli%3E%26nbsp%3BThe+priority+was+updated+from+%27Low%27+to+%27Medium%27+by+the+System+at+11%3A00+AM.%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
time_in_minutes: 30
---

# Introduction

The **Summarize Ticket History & Activity** plugin enables users to retrieve and summarize key updates from ServiceNow tickets directly through the Moveworks AI Assistant. This helps users quickly review ticket progress, resolution notes, priority changes, and other important updates without navigating through ServiceNow manually.

This guide will help you install and use this plugin in Agent Studio within minutes. Let’s get started!

# Prerequisites

- Access to Agent Studio
- **ServiceNow Connector** built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create your connector)

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+summarise+the+ticket+history+and+activity.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+summarise+the+ticket+history+and+activity.+Which+ticket+are+you+referring+to%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Ticket+INC-12345%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere%27s+a+summary+of+the+ticket+history+and+activity+for+INC0012345%3A%26nbsp%3B%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EThe+ticket+was+initially+described+Updated+to+include+more+details+by+John+Doe+on+January+26%2C+2024+at+10%3A00+AM.%26nbsp%3B%3C%2Fli%3E%5Cn++%3Cli%3EThe+stage+was+changed+from+%27On+Hold%27+to+%27In+Progress%27+by+Jane+Smith+at+10%3A30+AM+on+the+same+day.%26nbsp%3B%3C%2Fli%3E%5Cn++%3Cli%3E%26nbsp%3BThe+priority+was+updated+from+%27Low%27+to+%27Medium%27+by+the+System+at+11%3A00+AM.%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for **ServiceNow** first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. Note that for **Summarize Ticket History & Activity**, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- **Read access to the `sys_history_line` table**

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

1. You can modify the API query to include additional ticket fields based on your organization’s requirements.

# Appendix

## API Details

The plugin uses the following API to fetch ticket history from ServiceNow:

```bash
curl --location 'https://<instance>.service-now.com/api/now/table/sys_history_line?sysparm_fields=new%2Cold%2Clabel%2Cupdate&sysparm_query=set.id%3D<TICKET_ID>%5ElabelINResolution%20notes%2CResolution%20Code%2CPriority%2CUrgency%2CNumber%2CShort%20description%2CAdditional%20comments%2CAssignment%20group%2CAssigned%20to%2CState' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

### **Query Parameters**

- **`sysparm_fields`** (string) – Comma-separated list of fields to retrieve (e.g., `new, old, label, update`).
- **`sysparm_query`** (string) – Query using the unique identifier `sys_id` of the ticket whose history needs to be retrieved.

- This API retrieves key ticket updates, including resolution notes, priority changes, assignment history, and comments.
- The query can be modified to include additional fields if needed.

For more information on ServiceNow APIs, refer to the ServiceNow API documentation.