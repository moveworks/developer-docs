---
availability: INSTALLABLE
description: A Plugin that allows agents and support admins to identify tickets that
  have breached or are nearing their SLA deadlines.
installation_asset_uuid: 0b00fe18-64ab-47fa-9ced-de7f787fda1e
name: Monitor SLA Compliance for Tickets
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+lookup+tickets+that+have+breached+or+are+nearing+their+SLA+deadline.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Querying+ServiceNow+for+tickets+nearing+or+past+SLA+deadlines...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+3+tickets%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+tickets+that+are+breaching+or+nearing+SLA+deadline%3A%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC001003%3A+Network+outage+in+the+EMEA+region%2C+Priority%3A+Critical%2C+SLA+Status%3A+Breached%2C+SLA+Percentage%3A+95%25%2C+Assigned+to%3A+John+Smith%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001004%3A+VPN+connectivity+issues+for+remote+users%2C+Priority%3A+High%2C+SLA+Status%3A+Nearing%2C+SLA+Percentage%3A+80%25%2C+Assigned+to%3A+Jane+Doe%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001005%3A+Email+delivery+delays%2C+Priority%3A+Medium%2C+SLA+Status%3A+Nearing%2C+SLA+Percentage%3A+Breached%2C+Assigned+to%3A+Carlos+Ramirez%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
solution_tags:
- IT
- Ticketing
---

# Introduction

The Lookup Tickets Nearing/Breaching SLA plugin enables users to quickly identify incidents in ServiceNow that have either breached or are close to breaching their SLA deadline. This allows IT teams to take proactive measures and ensure timely resolution of critical issues.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- ServiceNow Connector setup (Follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow))
- Permissions to access the `task_sla` table in ServiceNow

# What are we building?

## Agent Design

This purple chat shows the experience we are going to build.

[View Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+lookup+tickets+that+have+breached+or+are+nearing+their+SLA+deadline.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Querying+ServiceNow+for+tickets+nearing+or+past+SLA+deadlines...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+3+tickets%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+tickets+that+are+breaching+or+nearing+SLA+deadline%3A%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC001003%3A+Network+outage+in+the+EMEA+region%2C+Priority%3A+Critical%2C+SLA+Status%3A+Breached%2C+SLA+Percentage%3A+95%25%2C+Assigned+to%3A+John+Smith%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001004%3A+VPN+connectivity+issues+for+remote+users%2C+Priority%3A+High%2C+SLA+Status%3A+Nearing%2C+SLA+Percentage%3A+80%25%2C+Assigned+to%3A+Jane+Doe%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC001005%3A+Email+delivery+delays%2C+Priority%3A+Medium%2C+SLA+Status%3A+Nearing%2C+SLA+Percentage%3A+Breached%2C+Assigned+to%3A+Carlos+Ramirez%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D)

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. Note that for the Lookup Tickets Nearing/Breaching SLA plugin, you will need to also add the following permissions (the connector guide will walk you through how to add permissions):

- Read access to `task_sla` table
- Read access to `incident` table

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options (optional)

1. Customize the SLA thresholds to filter tickets based on business needs.
2. Modify the response format to include additional ticket details.

# Appendix

## API Research

```bash
curl -X GET "https://your-instance.service-now.com/api/now/table/task_sla?sysparm_query=has_breached=true^active=true^sys_created_on>=javascript:gs.dateGenerate('{{ticket_created_after_date}}','{{tickets_created_after_time}}')&sysparm_fields=sla.duration,task.number,business_percentage,original_breach_time,task" \
--header "Accept: application/json" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN"

```

**Query Parameters:**

- `sysparm_query`=has_breached=true^active=true^sys_created_on>=javascript:gs.dateGenerate('{{ticket_created_after_date}}','{{tickets_created_after_time}}')
- `sysparm_fields`=sla.duration,task.number,business_percentage,original_breach_time,task

For more information on ServiceNow APIs, refer to the ServiceNow API documentation.