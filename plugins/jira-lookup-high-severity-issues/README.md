---
availability: INSTALLABLE
description: A plugin that allows looking up high-severity issues created within a
  specified period.
installation_asset_uuid: 51207307-9427-4500-abbd-ab6d0ba31a5b
name: Lookup High-Severity Issues
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Find+all+high-severity+issues+in+Jira+from+the+last+2+weeks.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+with+%3Ccode%3Eseverity%3C%2Fcode%3E+in+%28High%2C+Highest%29+and+%3Ccode%3EcreatedDate%3C%2Fcode%3E+within+the+last+14+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+high-severity+issues+created+in+the+last+two+weeks%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+API+gateway+returning+503+errors%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-121%3A+User+authentication+service+is+down%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DATA-45%3A+Data+pipeline+failure+impacting+analytics%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

# **Introduction :**

The **“Look Up High-Severity Issues”** plugin enables employees and support teams to quickly identify critical issues that require immediate attention using the Moveworks AI Assistant. This plugin allowing users to retrieve high-severity issues directly from the Assistant, without needing to navigate through complex ticketing systems.

This guide will walk you through installing and configuring the plugin in Agent Studio, so your team can stay on top of urgent issues, improve visibility into critical incidents, and ensure faster resolution for end users.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Find+all+high-severity+issues+in+Jira+from+the+last+2+weeks.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+with+%3Ccode%3Eseverity%3C%2Fcode%3E+in+%28High%2C+Highest%29+and+%3Ccode%3EcreatedDate%3C%2Fcode%3E+within+the+last+14+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+high-severity+issues+created+in+the+last+two+weeks%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+API+gateway+returning+503+errors%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-121%3A+User+authentication+service+is+down%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DATA-45%3A+Data+pipeline+failure+impacting+analytics%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Appendix**

## API #1: Lookup_High_Severity_Issues

The **Lookup_High_Severity_Issues** API retrieves high-severity issues along with their associated details and due dates.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?jql=statusCategory%20!%3D%20Done%20AND%20priority%20IN%20(%22Highest%22%2C%20%22High%22)%20AND%20created%20%3E%3D%20-{{days}}d&fields=key%2Csummary%2Cstatus%2Cpriority%2Ccreated' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```