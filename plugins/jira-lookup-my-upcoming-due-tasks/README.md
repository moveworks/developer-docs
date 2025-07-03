---
description: A plugin that allows looking up tasks that are due in the coming days
  and assigned to you.
difficulty_level: INTERMEDIATE
fidelity: GUIDE
name: Look Up My Upcoming Due Tasks
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+tasks+are+due+in+the+next+3+days%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+with+a+due+date+in+the+next+3+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+issues+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E+due+in+the+next+3+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ-123%3A+Finalize+Q3+marketing+report%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress+%7C+Due%3A+Today%3C%2Fli%3E%3Cli%3E%3Cb%3EDEV-456%3A+Fix+API+authentication+bug%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do+%7C+Due%3A+Tomorrow%3C%2Fli%3E%3Cli%3E%3Cb%3EDES-789%3A+Create+mockups+for+new+homepage%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Review+%7C+Due%3A+in+3+days%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYou+can+ask+me+to+change+the+status+or+add+a+comment+to+any+of+these+issues.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+Finalize+Q3+marketing+report%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DEV-456%3A+Fix+API+authentication+bug%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DES-789%3A+Create+mockups+for+new+homepage%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira

---
# **Introduction :**

The **“Look Up My Upcoming Due Tasks”** plugin enables employees and support teams to quickly access upcoming task deadlines using the Moveworks AI Assistant. This plugin streamlines productivity by allowing users to retrieve their upcoming due tasks directly from the Assistant, without needing to navigate through complex project management tools.

This guide will walk you through installing and configuring the plugin in Agent Studio, so your team can stay on top of deadlines, improve task visibility, and ensure timely follow-ups for end users.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+tasks+are+due+in+the+next+3+days%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+with+a+due+date+in+the+next+3+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+issues+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E+due+in+the+next+3+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ-123%3A+Finalize+Q3+marketing+report%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress+%7C+Due%3A+Today%3C%2Fli%3E%3Cli%3E%3Cb%3EDEV-456%3A+Fix+API+authentication+bug%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do+%7C+Due%3A+Tomorrow%3C%2Fli%3E%3Cli%3E%3Cb%3EDES-789%3A+Create+mockups+for+new+homepage%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Review+%7C+Due%3A+in+3+days%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYou+can+ask+me+to+change+the+status+or+add+a+comment+to+any+of+these+issues.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+Finalize+Q3+marketing+report%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DEV-456%3A+Fix+API+authentication+bug%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DES-789%3A+Create+mockups+for+new+homepage%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Appendix**

## API #1: Look Up My Upcoming Due Tasks

The **Look Up My Upcoming Due Tasks** API retrieves a user's upcoming tasks and their due dates.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/rest/api/3/search?fields=summary%2Cstatus%2Cproject%2Cassignee%2Cduedate&fields=summary%2Cstatus%2Cproject%2Cassignee%2C&maxResults=100&jql=assignee%20%3D%20%22{{email}}%22%20AND%20statusCategory%20!%3D%20Done%20AND%20duedate%20%3E%3D%20now()%20AND%20duedate%20%3C%3D%203d' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters**

- `email` (string) – The email address of the user whose upcoming tasks and their due dates need to be retrieved.