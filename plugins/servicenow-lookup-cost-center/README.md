---
description: A plugin that allows someone to look up the ID of a cost center.
fidelity: GUIDE
name: Look Up My Cost Center
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+cost+center+ID+for+Finance%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+ID%3Cb%3E+of+Finance+Cost+Center%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Cost+Center%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+cost+center+ID+for+%3Cb%3EFinance%3C%2Fb%3E+is+%3Cb%3EACN00003%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Cost+Center%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance
- Finance - Procurement
systems:
- servicenow
video: https://youtu.be/DDmmd2eRphw
---
 
# Look up My Cost Center
 
## Introduction
 
The “Look up My Cost Center” plugin allows users to retrieve and view detailed information about a specific cost center directly through the Moveworks AI Assistant. By eliminating the need to manually search in ServiceNow, this plugin streamlines access to key cost center data making it easier for employees to reference or validate cost center details as needed.
 
This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started
 
## Prerequisites
 
- Access to Agent Studio
 
## **What are we building?**
 
### **Agent Design**
 
This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+is+the+cost+center+ID+for+Finance%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+ID%3Cb%3E+of+Finance+Cost+Center%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Cost+Center%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+cost+center+ID+for+%3Cb%3EFinance%3C%2Fb%3E+is+%3Cb%3EACN00003%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Cost+Center%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.
 
## Installation Steps
 
We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.
 
For this plugin, ensure the user has the following permissions:
 
- Read access to the `cmn_cost_center` table
- Read access to the `sys_user` table (for resolving manager display values)
 
Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.
 
## **Appendix**
 
### **API #1: Get Cost Center ID by using Email**
 
```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=email=<USER_EMAIL>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```
 
**Query Parameters:**
 
- `USER_EMAIL`(string) – Email address of the user to retrieve `cost_center_id.`
 
### **API #2: Get Cost Center for the Specific User**
 
```bash
curl --location "https://<YOUR_INSTANCE>/api/now/table/cmn_cost_center?sysparm_query=id=<COST_CENTER_ID>&sysparm_display_value=true" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"
```
 
**Query Parameters:**
 
- `cost_center_id` (string) –  The ID of the cost center assigned to the user.
 - YouTube
Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube.
 