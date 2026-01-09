---
availability: INSTALLABLE
description: A plugin that allows updating the priority of multiple issues assigned
  to you in Jira.
installation_asset_uuid: b04413de-89e5-4030-94c0-44679363d56f
name: Update Bulk Issue Priority
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Set+priority+to+High+for+all+bugs+assigned+to+me+created+last+week.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Jira+for+issues+matching+the+following+criteria%3A%3Cul%3E%3Cli%3E%3Cb%3EType%3A%3C%2Fb%3E+Bug%3C%2Fli%3E%3Cli%3E%3Cb%3EAssignee%3A%3C%2Fb%3E+You%3C%2Fli%3E%3Cli%3E%3Cb%3ECreated%3A%3C%2Fb%3E+Last+7+days%3C%2Fli%3E%3C%2Ful%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+bugs+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E+from+last+week%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EBUG-101%3A%3C%2Fb%3E+Login+button+unresponsive+on+mobile%3C%2Fli%3E%3Cli%3E%3Cb%3EBUG-105%3A%3C%2Fb%3E+User+profile+pictures+not+loading%3C%2Fli%3E%3Cli%3E%3Cb%3EBUG-112%3A%3C%2Fb%3E+API+rate+limit+errors%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDo+you+want+to+change+their+priority+to+%3Cb%3EHigh%3C%2Fb%3E%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+update+all%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+update+all%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+updated+the+priority+for+3+issues+to+%3Cb%3EHigh%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22BUG-101%3A+Login+button+unresponsive+on+mobile%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22BUG-105%3A+User+profile+pictures+not+loading%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22BUG-112%3A+API+rate+limit+errors%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

## **Introduction**

The **“Update Bulk Issue Priority”** plugin allows users to efficiently update the priority of multiple Jira issues assigned to them — all at once. Instead of manually editing each ticket, this plugin automates the process, saving time and ensuring that high-priority issues receive the attention they need. 

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Set+priority+to+High+for+all+bugs+assigned+to+me+created+last+week.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Jira+for+issues+matching+the+following+criteria%3A%3Cul%3E%3Cli%3E%3Cb%3EType%3A%3C%2Fb%3E+Bug%3C%2Fli%3E%3Cli%3E%3Cb%3EAssignee%3A%3C%2Fb%3E+You%3C%2Fli%3E%3Cli%3E%3Cb%3ECreated%3A%3C%2Fb%3E+Last+7+days%3C%2Fli%3E%3C%2Ful%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+bugs+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E+from+last+week%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EBUG-101%3A%3C%2Fb%3E+Login+button+unresponsive+on+mobile%3C%2Fli%3E%3Cli%3E%3Cb%3EBUG-105%3A%3C%2Fb%3E+User+profile+pictures+not+loading%3C%2Fli%3E%3Cli%3E%3Cb%3EBUG-112%3A%3C%2Fb%3E+API+rate+limit+errors%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDo+you+want+to+change+their+priority+to+%3Cb%3EHigh%3C%2Fb%3E%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+update+all%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+update+all%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+updated+the+priority+for+3+issues+to+%3Cb%3EHigh%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22BUG-101%3A+Login+button+unresponsive+on+mobile%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22BUG-105%3A+User+profile+pictures+not+loading%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22BUG-112%3A+API+rate+limit+errors%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Bugs Assigned for a Specific Date Range:**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=issuetype={{issue_type}} AND assignee="{{email}}" AND statusCategory!=Done AND created >= {{created_range}}' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
```

**Query Parameter:**

- `issue_type` (string)– Filters issues by type (e.g., Bug, Task, Story, etc.)
- `email` (string)– Returns issues assigned to the specified user
- `created_range` (string)– Filters by issues created in a given time range (e.g., `7d`, `30d`, etc.)

### **API #2: Update Priority of a Jira Issue:**

```bash
curl --location --request PUT 'https://<YOUR_INSTANCE>/rest/api/3/issue/{{key}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <API_TOKEN>' \
--data '{
  "fields": {
    "priority": {
      "name": "{{priority}}"
    }
  }
}'
```

**Query Parameter:**

- `key` (string) – Key of the Jira issue to update (e.g., `MPT-4`)

**Request Body Parameters:**

- `priority` (string) – The priority level to set for the issue (e.g., `"High"`)