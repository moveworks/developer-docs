---
description: A plugin that allows looking up issues assigned to you in Jira without
  manually filtering them.
fidelity: GUIDE
name: Look Up My Tasks
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+my+open+tasks%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+with+an+%60open%60+status.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+open+issues+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ-123%3A+Fix+login+button+bug%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ-456%3A+Update+documentation+for+API+v2%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do%3C%2Fli%3E%3Cli%3E%3Cb%3EDES-789%3A+Design+new+onboarding+flow%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Review%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYou+can+ask+me+to+change+the+status+or+add+a+comment+to+any+of+these+issues.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+Fix+login+button+bug%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-456%3A+Update+documentation+for+API+v2%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DES-789%3A+Design+new+onboarding+flow%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira

---

## Introduction

The “Look Up My Tasks” plugin allows employees to instantly view all their open Jira tasks directly through the Moveworks AI Assistant. By surfacing assigned issues across projects in a single view, this plugin streamlines task tracking and helps users stay organized without needing to manually navigate Jira.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+my+open+tasks%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checked+for+an+authenticated+Jira+account.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Searching+for+issues+assigned+to+you+with+an+%60open%60+status.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+open+issues+assigned+to+you+in+%3Cb%3EJira%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ-123%3A+Fix+login+button+bug%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ-456%3A+Update+documentation+for+API+v2%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do%3C%2Fli%3E%3Cli%3E%3Cb%3EDES-789%3A+Design+new+onboarding+flow%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Review%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EYou+can+ask+me+to+change+the+status+or+add+a+comment+to+any+of+these+issues.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-123%3A+Fix+login+button+bug%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-456%3A+Update+documentation+for+API+v2%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22DES-789%3A+Design+new+onboarding+flow%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Open Tasks using Email Id of user**

```bash
curl --request GET \
  --url 'https://<YOUR_INSTANCE>/rest/api/2/search?fields=summary,status,project,assignee&jql=assignee = "<EMAIL_ID>" AND statusCategory != "Done"&maxResults=100' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

**Query Parameters:**

- `EMAIL_ID`(string) –  Email id to retrieve Tasks of the User.
