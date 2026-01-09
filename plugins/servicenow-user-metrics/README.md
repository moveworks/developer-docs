---
availability: INSTALLABLE
description: 'A Plugin that allows you to evaluate performance of an IT Agent across
  several parameters including:

  - Tickets handled

  - Tickets resolved

  - Average time to resolution

  - Ticket reopen rate

  - SLA Adherence.'
installation_asset_uuid: 16fec9a3-3657-4368-9265-08b5e6f8bbbc
name: Review IT Agent's Performance Over Time
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+review+agent+performance.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Which+agent%27s+performance+would+you+like+to+review%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Leslie+Knope%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22And+for+what+time+period%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+Quarter%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27m+pulling+up+Leslie+Knope%27s+performance+data+for+last+quarter.+Here%27s+what+I+found%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETickets+Handled%3A%3C%2Fstrong%3E+146%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETickets+Resolved%3A%3C%2Fstrong%3E+132%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EAvg.+Resolution+Time%3A%3C%2Fstrong%3E+4+hours%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EFCR+Rate%3A%3C%2Fstrong%3E+96%25%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ESLA+Adherence%3A%3C%2Fstrong%3E+99%25%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Leslie+Knope+Performance+Data%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

# Introduction

The Review Agent Performance plugin enables users to evaluate agent performance within a specific duration directly through the Moveworks AI Assistant. This plugin retrieves data from ServiceNow, providing key performance metrics such as tickets handled, resolution time, SLA adherence, and more.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- **ServiceNow Connector** built in Creator Studio (follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create your connector)

# What are we building?

## Agent Design

This purple chat shows the experience we are going to build:

[Review Agent Performance Purple Chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+review+agent+performance.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Which+agent%27s+performance+would+you+like+to+review%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Leslie+Knope%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22And+for+what+time+period%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+Quarter%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I%27m+pulling+up+Leslie+Knope%27s+performance+data+for+last+quarter.+Here%27s+what+I+found%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETickets+Handled%3A%3C%2Fstrong%3E+146%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ETickets+Resolved%3A%3C%2Fstrong%3E+132%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EAvg.+Resolution+Time%3A%3C%2Fstrong%3E+4+hours%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3EFCR+Rate%3A%3C%2Fstrong%3E+96%25%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ESLA+Adherence%3A%3C%2Fstrong%3E+99%25%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Leslie+Knope+Performance+Data%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D)

# Installation Steps

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the [ServiceNow Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=servicenow) to create the connector. Note that for the Review Agent Performance plugin, you will need to also add the following permissions (the connector guide will walk you through how to add permissions):

- Read access to `task_sla` table

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.