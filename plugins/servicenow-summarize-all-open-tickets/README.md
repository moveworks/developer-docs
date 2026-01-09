---
availability: INSTALLABLE
description: A Plugin that lists open support issues with their status, assignee,
  and days open, and summarizes them by status, assignee, and duration.
installation_asset_uuid: b4b68fbd-8e80-4ce9-8f22-f15c01df1e35
name: Open Tickets Summary
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22List+open+support+issues+summarized+by+status%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Ok%2C+here%27s+a+summary+of+all+open+support+issues+by+Status%2C+Assignee%2C+and+Days+Open%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EOpen+Support+Issues+by+Status%3A%3C%2Fb%3E%5Cn%3Cul%3E%5Cn++%3Cli%3ENew%3A+15%3C%2Fli%3E%5Cn++%3Cli%3EIn+Progress%3A+23%3C%2Fli%3E%5Cn++%3Cli%3EWaiting+for+Customer%3A+12%3C%2Fli%3E%5Cn++%3Cli%3EResolved%3A+5%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cb%3EOpen+Support+Issues+by+Assignee%3A%3C%2Fb%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EJohn+Smith%3A+10%3C%2Fli%3E%5Cn++%3Cli%3EJane+Doe%3A+15%3C%2Fli%3E%5Cn++%3Cli%3EPeter+Jones%3A+20%3C%2Fli%3E%5Cn++%3Cli%3EEmily+White%3A+5%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cb%3EOpen+Support+Issues+by+Days+Open%3A%3C%2Fb%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E0-7%3A+30%3C%2Fli%3E%5Cn++%3Cli%3E8-30%3A+15%3C%2Fli%3E%5Cn++%3Cli%3E%3E30%3A+5%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC001002+-+Network+Outage%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001015+-+Email+Delivery+Issues%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001022+-+VPN+Connectivity+Problems%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Ticketing
systems:
- servicenow
---

# Introduction

The **Summarize All Open Issues/Tickets** plugin enables users to generate detailed summaries of open support tickets directly through the Moveworks AI Assistant. This plugin provides insights into ticket statuses, assignees, and time durations since creation, helping teams prioritize and manage workloads effectively.

# Prerequisites

- Access to Moveworks Agent Studio.
- **ServiceNow Connector** built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create your connector)

# What Are We Building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22List+open+support+issues+summarized+by+status%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Ok%2C+here%27s+a+summary+of+all+open+support+issues+by+Status%2C+Assignee%2C+and+Days+Open%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EOpen+Support+Issues+by+Status%3A%3C%2Fb%3E%5Cn%3Cul%3E%5Cn++%3Cli%3ENew%3A+15%3C%2Fli%3E%5Cn++%3Cli%3EIn+Progress%3A+23%3C%2Fli%3E%5Cn++%3Cli%3EWaiting+for+Customer%3A+12%3C%2Fli%3E%5Cn++%3Cli%3EResolved%3A+5%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cb%3EOpen+Support+Issues+by+Assignee%3A%3C%2Fb%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EJohn+Smith%3A+10%3C%2Fli%3E%5Cn++%3Cli%3EJane+Doe%3A+15%3C%2Fli%3E%5Cn++%3Cli%3EPeter+Jones%3A+20%3C%2Fli%3E%5Cn++%3Cli%3EEmily+White%3A+5%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cb%3EOpen+Support+Issues+by+Days+Open%3A%3C%2Fb%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E0-7%3A+30%3C%2Fli%3E%5Cn++%3Cli%3E8-30%3A+15%3C%2Fli%3E%5Cn++%3Cli%3E%3E30%3A+5%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC001002+-+Network+Outage%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001015+-+Email+Delivery+Issues%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001022+-+VPN+Connectivity+Problems%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for **ServiceNow** first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. Note that for **Summarize Ticket History & Activity**, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- **Read access to the `incident` table**

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

## API Research

1. **Total Open Tickets**
    
    ```bash
    curl --location '<https://dev247130.service-now.com/api/now/stats/incident?sysparm_query=stateNOT%20IN6%2C7%2C8&sysparm_count=true>' \\
    --header 'Authorization: Bearer '
    
    ```
    
2. **Group by Assignee**
    
    ```bash
    curl --location '<https://dev247130.service-now.com/api/now/stats/incident?sysparm_group_by=assigned_to.name>' \\
    --header 'Authorization: Bearer '
    
    ```
    
3. **Group by State**
    
    ```bash
    curl --location '<https://dev247130.service-now.com/api/now/stats/incident?sysparm_group_by=state>' \\
    --header 'Authorization: Bearer '
    
    ```
    
4. **Raw Data for Analysis**
    
    ```bash
    curl --location '<https://dev247130.service-now.com/api/now/table/incident?sysparm_fields=sys_created_on,state,number,assigned_to>' \\
    --header 'Authorization: Bearer '
    
    ```