---
availability: INSTALLABLE
description: A plugin that allows users to quickly access their software entitlements.
installation_asset_uuid: c3c351a4-17ce-4de9-ad25-94d97f9ffb85
name: Look Up My Software Entitlements
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22what+software+can+i+get%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+%3Cb%3EServiceNow%3C%2Fb%3E+for+your+software+entitlements...%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+4+available+software+licenses.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+are+entitled+to+the+following+software%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Adobe+Creative+Cloud%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Microsoft+Office+365+E5%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Figma+Enterprise%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Slack+Enterprise+Grid%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## Introduction
 
The “Look Up My Software Entitlements” plugin allows users to retrieve and view a list of software licenses assigned to them directly through the Moveworks AI Assistant. By removing the need to navigate ServiceNow manually, this plugin simplifies access to software entitlement data, enabling employees to quickly check what software they are licensed to use and make informed decisions about tool usage or requests.
 
This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started
 
## Prerequisites
 
- Access to **Agent Studio**
 
## **What are we building?**
 
### **Agent Design**
 
This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22what+software+can+i+get%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+%3Cb%3EServiceNow%3C%2Fb%3E+for+your+software+entitlements...%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+4+available+software+licenses.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+are+entitled+to+the+following+software%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Adobe+Creative+Cloud%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Microsoft+Office+365+E5%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Figma+Enterprise%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22Slack+Enterprise+Grid%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.
 
## Installation Steps
 
We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.
 
**For this plugin, ensure the user has the following permissions:**
 
- Read access to the `alm_entitlement` table
- Read access to the `sys_user` table (for resolving user display values)
 
Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.
 
## **Appendix**
 
### **API #1: Get User sys Id by using Email**
 
```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=email=<USER_EMAIL>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```
 
**Query Parameters:**
 
- `USER_EMAIL` (string) – Email address of the user to retrieve `sys_id` for entitlement lookup.
 
### **API #2: Get Software Entitlements**
 
```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_entitlement?sysparm_query=assigned_to=<USER_SYS_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
```
 
**Query Parameters:**
 
- `USER_SYS_ID` (string) – `sys_id`of the user whose software entitlements you want to retrieve.
 
Purple Chat
API Documentation for the enterprise conversational AI platform
 