---
availability: INSTALLABLE
description: A plugin that allows updating the due date for multiple issues of a specific
  issue type within a given project, such as setting a due date for all open bugs
  assigned to you.
installation_asset_uuid: aa87bd13-fa11-4828-bf95-e096636aa535
name: Update Due Date for Multiple Issues
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+update+the+due+date+for+all+open+bugs+in+the+Phoenix+project.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+open+bugs+in+project+%27Phoenix%27+assigned+to+the+current+user.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+open+bugs+assigned+to+you+in+the+%3Cb%3EPhoenix%3C%2Fb%3E+project.+What+would+you+like+to+set+as+the+new+due+date%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Make+them+all+due+next+Friday%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+update+the+due+date+to+%3Cb%3EFriday%2C+October+27%2C+2023%3C%2Fb%3E+for+the+following+5+open+bugs+in+the+%3Cb%3EPhoenix%3C%2Fb%3E+project%3A%3C%2Fp%3E%3Cul%3E%3Cli%3EPHX-101%3A+Login+button+not+working+on+mobile%3C%2Fli%3E%3Cli%3EPHX-115%3A+Users+cannot+reset+password%3C%2Fli%3E%3Cli%3EPHX-123%3A+API+endpoint+returns+500+error%3C%2Fli%3E%3Cli%3EPHX-130%3A+Incorrect+data+displayed+on+dashboard%3C%2Fli%3E%3Cli%3EPHX-142%3A+Performance+degradation+on+search+page%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+right%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+update+them%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+update+them%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+updated+the+due+date+for+5+issues+in+%3Cb%3EJira%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PHX-101%3A+Login+button+not+working+on+mobile%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-115%3A+Users+cannot+reset+password%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-123%3A+API+endpoint+returns+500+error%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-130%3A+Incorrect+data+displayed+on+dashboard%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-142%3A+Performance+degradation+on+search+page%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

## **Introduction**

The **“Update Due Dates for Multiple Issues”** plugin allows users to update the due dates for multiple issues assigned to them at once using the **Moveworks AI Assistant**. This ensures that timelines are adjusted efficiently, helping teams stay on track and meet deadlines.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+update+the+due+date+for+all+open+bugs+in+the+Phoenix+project.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+open+bugs+in+project+%27Phoenix%27+assigned+to+the+current+user.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+open+bugs+assigned+to+you+in+the+%3Cb%3EPhoenix%3C%2Fb%3E+project.+What+would+you+like+to+set+as+the+new+due+date%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Make+them+all+due+next+Friday%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+update+the+due+date+to+%3Cb%3EFriday%2C+October+27%2C+2023%3C%2Fb%3E+for+the+following+5+open+bugs+in+the+%3Cb%3EPhoenix%3C%2Fb%3E+project%3A%3C%2Fp%3E%3Cul%3E%3Cli%3EPHX-101%3A+Login+button+not+working+on+mobile%3C%2Fli%3E%3Cli%3EPHX-115%3A+Users+cannot+reset+password%3C%2Fli%3E%3Cli%3EPHX-123%3A+API+endpoint+returns+500+error%3C%2Fli%3E%3Cli%3EPHX-130%3A+Incorrect+data+displayed+on+dashboard%3C%2Fli%3E%3Cli%3EPHX-142%3A+Performance+degradation+on+search+page%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+right%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+update+them%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+update+them%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+updated+the+due+date+for+5+issues+in+%3Cb%3EJira%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PHX-101%3A+Login+button+not+working+on+mobile%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-115%3A+Users+cannot+reset+password%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-123%3A+API+endpoint+returns+500+error%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-130%3A+Incorrect+data+displayed+on+dashboard%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PHX-142%3A+Performance+degradation+on+search+page%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend setting up **Jira** before installing this plugin. Please follow the [**Jira Connector**](https://marketplace.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

**Ensure the following permissions are granted:**

- **Admin Access**: Required to archive issues using the Jira API
- **Project Access**: Ability to view and manage issues in the target Jira projects
- **Field Access**: Permission to read and update the **Priority**, **Assignee**, and **Resolution Date** fields

**Note:**

- This plugin requires a **Jira Premium or Enterprise plan**, as the issue archive feature is only available in these plans.

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix:-**

### **API #1 : Get projects by name**

```bash
curl --location 'https://<your-instance>/rest/api/3/search/jql?jql=project%3D%22{{project-key}}%22%20AND%20issuetype%3D{{issue-type}}%20AND%20status!%3D%22Done%22%20AND%20assignee%3D%22{{assignee-email}}%22&fields=key%2Csummary&maxResults=100' \
--header 'Authorization: Basic <your-credentials>'
```

**Query Parameters:**

- `project-key` (String) - Use the exact **project key**, **project name**, or **project ID** to identify the Jira project you want to search or update.
    
    **Examples:**
    
    - Project Key: `PHX`
    - Project Name: `"Phoenix Project"`
    - Project Id: 19768
- `assignee-email` (String) - Use the exact **issues** by the specific user.
- `issue-type` (String) - Use the exact **issue type** for the Jira issues you want to target.
    
    **Examples:**
    
    - Issue-type: `Epic`, `Task`, `Bug`, `Story`
- `fields` - Fields to include in the response.
- `maxResults=100` – Used to retrieve up to 100 results in a single response.

### **API #2 : Update issue by id**

```bash
curl --location --request PUT 'https://<your-instance>/rest/api/3/issue/{{issue-key}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <your-credentials>' \
--data '{
  "fields": {
    "duedate": "{{YYYY-MM-DD}}"
  }
}'
```

**Query Parameters:**

- `issue-id or issue-key`-Replace this with the **full issue ID or issue key** of the Jira ticket you want to update.

**Example:**

- `JMAT-19` (Issue key)
- `19453` (Issue ID)