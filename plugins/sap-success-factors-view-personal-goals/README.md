---
availability: INSTALLABLE
description: A plugin that lets employees access their performance goals to track
  your progress and stay aligned with objectives.
installation_asset_uuid: c2c50d15-ab73-43fa-814d-0017496fbc79
name: View Personal Goals
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+can+I+view+my+performance+goals%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%E2%9C%85+Authenticating+your+access+to+the+performance+management+system%5Cn%E2%9C%85+Retrieving+your+current+performance+goals%5Cn%F0%9F%94%81+Preparing+to+display+your+goals%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EYour+Performance+Goals%3C%2Fb%3E%3Cbr%3EKeeping+track+of+your+performance+goals+helps+you+stay+focused+and+aligned+with+your+career+aspirations.+Here+are+your+current+goals%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQ1+Objectives%3A%3C%2Fb%3E+Increase+sales+conversion+rate+by+10%25.%3Cbr%3E%3Cb%3EQ2+Objectives%3A%3C%2Fb%3E+Complete+Advanced+Sales+Training.%3Cbr%3E%3Cb%3EAnnual+Goal%3A%3C%2Fb%3E+Achieve+%27Exceeds+Expectations%27+in+customer+satisfaction+surveys.%3Cbr%3ETo+discuss+your+goals+or+make+adjustments%2C+please+schedule+a+meeting+with+your+manager.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Schedule+Meeting+with+Manager%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Review+More+Details%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Onboarding
- HR - Other
- HR - Performance Management
systems:
- sap-success-factors
---

## Introduction

The **“View Personal Goals”** plugin allows users to easily access and review their performance goals in SAP SuccessFactors through the Moveworks AI Assistant. This helps employees stay aligned with their objectives, track progress, and stay focused on key priorities.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+can+I+view+my+performance+goals%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%E2%9C%85+Authenticating+your+access+to+the+performance+management+system%5Cn%E2%9C%85+Retrieving+your+current+performance+goals%5Cn%F0%9F%94%81+Preparing+to+display+your+goals%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EYour+Performance+Goals%3C%2Fb%3E%3Cbr%3EKeeping+track+of+your+performance+goals+helps+you+stay+focused+and+aligned+with+your+career+aspirations.+Here+are+your+current+goals%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQ1+Objectives%3A%3C%2Fb%3E+Increase+sales+conversion+rate+by+10%25.%3Cbr%3E%3Cb%3EQ2+Objectives%3A%3C%2Fb%3E+Complete+Advanced+Sales+Training.%3Cbr%3E%3Cb%3EAnnual+Goal%3A%3C%2Fb%3E+Achieve+%27Exceeds+Expectations%27+in+customer+satisfaction+surveys.%3Cbr%3ETo+discuss+your+goals+or+make+adjustments%2C+please+schedule+a+meeting+with+your+manager.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Schedule+Meeting+with+Manager%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Review+More+Details%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow the [SAP SuccessFactors Connector](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) Guide to configure the connection.

Note: To enable the View Personal Goals functionality, ensure the SAP SuccessFactors integration user has the necessary permission scopes.

**Required Scope:**

- `View` access to the **Goal Plan** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Fetch Employee Details by Email**

```bash
curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=userId,firstName,lastName,displayName,nickname,email,location,department,status,gender,timeZone,employeeClass,hireDate,impactOfLoss,riskOfLoss,jobCode,businessPhone,salary,compensationSalaryRateType,empId' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>'
```

**Query Parameters:**

- `$filter` (string) – Filters users based on the email address.
- `$select` (string) – Specifies which properties to return.

### **API #2: Fetch Goals by UserId**

```bash
curl --request GET \
  --url "https://<API_SERVER_DOMAIN>/odata/v2/SimpleGoal?$filter=userId%20eq%20'{{userId}}'%20and%20type%20eq%20'user'" \
  --header "Accept: application/json" \
  --header "Authorization: Bearer <YOUR_ACCESS_TOKEN>"
```

**Query Parameters:**

- `$filter` (string) – Filters goals based on `userId` and `type`.