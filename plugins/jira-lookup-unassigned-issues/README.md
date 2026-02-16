---
availability: INSTALLABLE
description: A plugin that allows looking up unassigned issues across projects.
installation_asset_uuid: d38cce48-84e2-4c4e-ad64-c7a2112a14ef
name: Look Up Unassigned Issues
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+all+unassigned+issues.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+What+is+the+Project+Key+or+can+you+provide+a+Project+Name+to+search+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPROJ1%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+project+%27PROJ1%27+in+Jira.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Fetching+all+unassigned+issues+for+project+%27PROJ1%27.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+unassigned+issues+I+found+in+the+%3Cb%3EPROJ1%3C%2Fb%3E+project%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ1-123%3A%3C%2Fb%3E+Fix+login+button+styling+on+the+main+page%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ1-456%3A%3C%2Fb%3E+Update+documentation+for+the+new+V2+API+endpoints%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ1-789%3A%3C%2Fb%3E+Investigate+performance+degradation+on+the+staging+environment%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ1-123%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ1-456%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ1-789%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

## Introduction

The **“Look Up Unassigned Issues”** plugin allows users to retrieve and view all currently unassigned issues from a specified Jira project directly through the Moveworks AI Assistant by either giving ‘Project name’ or ‘Project key’.  By eliminating the need to manually filter issues in Jira, this plugin provides quick visibility into unattended tasks helping teams prioritize and assign work efficiently to avoid bottlenecks or delays.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+all+unassigned+issues.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+What+is+the+Project+Key+or+can+you+provide+a+Project+Name+to+search+for%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPROJ1%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+project+%27PROJ1%27+in+Jira.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Fetching+all+unassigned+issues+for+project+%27PROJ1%27.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+unassigned+issues+I+found+in+the+%3Cb%3EPROJ1%3C%2Fb%3E+project%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EPROJ1-123%3A%3C%2Fb%3E+Fix+login+button+styling+on+the+main+page%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ1-456%3A%3C%2Fb%3E+Update+documentation+for+the+new+V2+API+endpoints%3C%2Fli%3E%3Cli%3E%3Cb%3EPROJ1-789%3A%3C%2Fb%3E+Investigate+performance+degradation+on+the+staging+environment%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ1-123%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ1-456%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ1-789%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the  [Jira Connector](https://marketplace.moveworks.com/connectors/jira?hist=home#how-to-implement) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API #1: Jira Get Unassigned Issues By Project Key**

```bash
curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search?jql=project%3D<PROJECT_KEY>+AND+assignee+IS+EMPTY&fields=key%2Csummary%2Cstatus&maxResults=100' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json' 
```

**Query Parameters:**

- `PROJECT_KEY` **(string)** – The **key** or **name** of the Jira project in which to search for unassigned issues. You can provide either the project key (e.g., `JMAT`) or the full project name (e.g., `Jira Marketing Team`).