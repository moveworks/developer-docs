---
availability: INSTALLABLE
description: A plugin that lets an employee add personal goals for themselves.
installation_asset_uuid: a33b17d5-c1da-48fb-90e4-c88465338c5e
name: Add Personal Goals
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+add+new+goals+from+my+performance+review.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+list+your+goals+with+their+titles+and+descriptions.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1.+Improve+customer+satisfaction+-+Increase+scores+by+10%25+with+faster+responses+and+training.+%3Cbr%3E2.+Enhance+product+knowledge+-+Complete+4+new+product+modules.+%3Cbr%3E3.+Boost+sales+figures+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESummarizing+and+pulling+appropriate+plugin+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+these+are+the+goals.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ENew+Goals%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E1.+%3Cb%3EImprove+customer+satisfaction%3C%2Fb%3E+-+Increase+scores+by+10%25+with+faster+responses+and+training.%3Cbr%3E2.+%3Cb%3EEnhance+product+knowledge%3C%2Fb%3E+-+Complete+4+new+product+modules.%3Cbr%3E3.+%3Cb%3EBoost+sales+figures%3C%2Fb%3E+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Onboarding
- HR - Other
- HR - Performance Management
systems:
- sap-success-factors
---

## Introduction

The “**Add Personal Goals**” plugin allows users to easily add new performance goals to SAP SuccessFactors through the Moveworks AI Assistant. It focuses solely on goal creation, making it simple for employees to stay proactive and aligned with their priorities.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+add+new+goals+from+my+performance+review.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+list+your+goals+with+their+titles+and+descriptions.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1.+Improve+customer+satisfaction+-+Increase+scores+by+10%25+with+faster+responses+and+training.+%3Cbr%3E2.+Enhance+product+knowledge+-+Complete+4+new+product+modules.+%3Cbr%3E3.+Boost+sales+figures+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESummarizing+and+pulling+appropriate+plugin+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+these+are+the+goals.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ENew+Goals%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E1.+%3Cb%3EImprove+customer+satisfaction%3C%2Fb%3E+-+Increase+scores+by+10%25+with+faster+responses+and+training.%3Cbr%3E2.+%3Cb%3EEnhance+product+knowledge%3C%2Fb%3E+-+Complete+4+new+product+modules.%3Cbr%3E3.+%3Cb%3EBoost+sales+figures%3C%2Fb%3E+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permission:

**Required Scope:**

- `Add` access to the **Goal Plan** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: FETCH_EMPLOYEE_DETAILS_BY_EMAIL**

```bash
curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=userId,firstName,lastName,displayName,nickname,email,location,department,status,gender,timeZone,employeeClass,hireDate,impactOfLoss,riskOfLoss,jobCode,businessPhone,salary,compensationSalaryRateType,empId' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>'
```

**Query Parameters:**

- `$filter` (string) – Filters users based on the email address.
- `$select` (string) – Specifies which properties to return.

### **API #2: ADD_PERSONAL_GOAL**

```bash
curl -X POST "https://<API_SERVER_DOMAIN>/odata/v2/Goal_11" \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN" \
  -d '{
    "name": "{{Goal_name}}",
    "metric": "{{metric}}",
    "userId": "{{userId}}",
    "type": "user",
    "start": "/Date({{start}})/",  
    "due": "/Date({{due}})/",    
    "category": "Goals"
  }'

```

- **Path Parameter:**
    - **userId** - The unique identifier of the user for whom the goal is being added
- **Request Body Fields:**
    - `name`, `metric`, `userId`, `type`, `start`, `due`, `category`