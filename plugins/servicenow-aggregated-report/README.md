---
availability: INSTALLABLE
description: A Plugin that provides a summary of incident metrics over time, including
  Tickets Raised, Resolved, Avg. First Response & Resolution Time, First Contact Resolution
  Rate, Reopen Rate, and SLA Adherence %.
installation_asset_uuid: f42bf133-2805-4242-8dc2-ed9e1bff9131
name: Incident Metrics Summary
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+a+report+summarizing+key+customer+support+metrics.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+generate+a+customer+support+performance+report.+What+time+frame+are+you+interested+in%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+quarter%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here%27s+the+aggregated+customer+support+report+for+last+quarter%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETime+Frame%3A%3C%2Fstrong%3E+Last+Quarter+%28Q3+2024%29%3Cbr%3E%5Cn%3Cstrong%3ETickets+Raised%3A%3C%2Fstrong%3E+1250%3Cbr%3E%5Cn%3Cstrong%3ETickets+Resolved%3A%3C%2Fstrong%3E+1100%3Cbr%3E%5Cn%3Cstrong%3EAvg.+First+Response+Time%3A%3C%2Fstrong%3E+4+hours%3Cbr%3E%5Cn%3Cstrong%3EAvg.+Time+to+Resolution%3A%3C%2Fstrong%3E+2+days%3Cbr%3E%5Cn%3Cstrong%3EFirst+Contact+Resolution+Rate%3A%3C%2Fstrong%3E+65%25%3Cbr%3E%5Cn%3Cstrong%3ETicket+Reopen+Rate%3A%3C%2Fstrong%3E+8%25%3Cbr%3E%5Cn%3Cstrong%3E%25+of+tickets+adhering+to+SLA%3A%3C%2Fstrong%3E+95%25%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Customer+Support+Performance+Report%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
---

# Introduction

The Customer Support Performance Report plugin enables your users to retrieve aggregated customer support metrics from ServiceNow directly through the Moveworks AI Assistant. Users will be able to access key insights such as the number of tickets raised and resolved, response times, and SLA adherence rates, helping teams track performance and optimize support operations.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- ServiceNow Connector configured (Refer to the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow))

# What are we building?

## Agent Design

This purple chat shows the experience we are going to build.

[View Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+a+report+summarizing+key+customer+support+metrics.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+generate+a+customer+support+performance+report.+What+time+frame+are+you+interested+in%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+quarter%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here%27s+the+aggregated+customer+support+report+for+last+quarter%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETime+Frame%3A%3C%2Fstrong%3E+Last+Quarter+%28Q3+2024%29%3Cbr%3E%5Cn%3Cstrong%3ETickets+Raised%3A%3C%2Fstrong%3E+1250%3Cbr%3E%5Cn%3Cstrong%3ETickets+Resolved%3A%3C%2Fstrong%3E+1100%3Cbr%3E%5Cn%3Cstrong%3EAvg.+First+Response+Time%3A%3C%2Fstrong%3E+4+hours%3Cbr%3E%5Cn%3Cstrong%3EAvg.+Time+to+Resolution%3A%3C%2Fstrong%3E+2+days%3Cbr%3E%5Cn%3Cstrong%3EFirst+Contact+Resolution+Rate%3A%3C%2Fstrong%3E+65%25%3Cbr%3E%5Cn%3Cstrong%3ETicket+Reopen+Rate%3A%3C%2Fstrong%3E+8%25%3Cbr%3E%5Cn%3Cstrong%3E%25+of+tickets+adhering+to+SLA%3A%3C%2Fstrong%3E+95%25%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Customer+Support+Performance+Report%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D)

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. Note that for the Customer Support Performance Report plugin, you will need to also add the following permissions (the connector guide will walk you through how to add permissions):

- **Read access to the `incident` &`task_sla` table in ServiceNow**

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

1. Modify query filters to customize reporting timeframes (e.g., last 7 days, last month, etc.).
2. Adjust reporting fields to include additional KPIs if needed.