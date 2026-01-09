---
availability: INSTALLABLE
description: A plugin that allows looking up various tasks assigned to you in Jira
  — including overdue, upcoming due, and recently updated tasks — in a single view.
installation_asset_uuid: bdfbbfd7-23dc-467b-9700-714cf0ba5236
name: Look Up My Tasks
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+my+overdue+and+upcoming+jira+tasks%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+that+are+overdue.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+that+are+due+in+the+next+7+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+2+overdue+issues+and+1+upcoming+issue+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3E%3Cb%3EOverdue+Tasks%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ-123%3A+Fix+login+button+bug%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress%2C+Due%3A+2+days+ago%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ-456%3A+Update+documentation+for+API+v2%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do%2C+Due%3A+Yesterday%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EUpcoming+Tasks+%28Due+this+week%29%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EDES-789%3A+Design+new+onboarding+flow%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Review%2C+Due%3A+in+3+days%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYou+can+ask+me+to+change+the+status+or+add+a+comment+to+any+of+these+issues.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+Fix+login+button+bug%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-456%3A+Update+documentation+for+API+v2%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DES-789%3A+Design+new+onboarding+flow%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

# **Introduction :**

The **“Lookup My Jira Tasks”** plugin enables employees and support teams to easily track their Jira tasks specifically overdue and upcoming tasks using the Moveworks AI Assistant. This plugin allows users to retrieve their task list directly from the Assistant, without needing to navigate through Jira’s interface.

This guide will walk you through installing and configuring the plugin in Agent Studio, so your team can stay on top of their responsibilities, improve task visibility, and ensure nothing slips through the cracks.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+my+overdue+and+upcoming+jira+tasks%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+that+are+overdue.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+that+are+due+in+the+next+7+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+2+overdue+issues+and+1+upcoming+issue+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3E%3Cb%3EOverdue+Tasks%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ-123%3A+Fix+login+button+bug%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress%2C+Due%3A+2+days+ago%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ-456%3A+Update+documentation+for+API+v2%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do%2C+Due%3A+Yesterday%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EUpcoming+Tasks+%28Due+this+week%29%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EDES-789%3A+Design+new+onboarding+flow%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Review%2C+Due%3A+in+3+days%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYou+can+ask+me+to+change+the+status+or+add+a+comment+to+any+of+these+issues.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+Fix+login+button+bug%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-456%3A+Update+documentation+for+API+v2%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DES-789%3A+Design+new+onboarding+flow%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Appendix**

## API #1: Lookup My Jira Tasks

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?jql=assignee="{{email}}" AND statusCategory != Done &fields=summary,status,project,key,duedate' \
--header 'Authorization: Basic <API_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters**

- `email` (string) – The email address of the user whose tasks need to be retrieved.