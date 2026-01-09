---
availability: INSTALLABLE
description: A plugin that allows an employee to change/update their personal email.
installation_asset_uuid: b73c0316-7c48-4a68-a831-fe783a8bdd00
name: Update Personal Email
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+I+need+to+update+my+personal+email+in+SuccessFactors.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+with+that.+Could+you+please+provide+your+new+personal+email+address%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+my+new+personal+email+address+is+%3Ca+href%3D%5C%22mailto%3Auser.newemail%40example.com%5C%22%3E%3Cu%3E%3Cstrong%3Euser.newemail%40example.com%3C%2Fstrong%3E%3C%2Fu%3E%3C%2Fa%3E.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Thank+you.+Let+me+confirm+the+details%3A+You+would+like+to+update+your+personal+email+address+to+%3Ca+href%3D%5C%22mailto%3Auser.newemail%40example.com%5C%22%3E%3Cu%3E%3Cstrong%3Euser.newemail%40example.com%3C%2Fstrong%3E%3C%2Fu%3E%3C%2Fa%3E.+Is+that+correct%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+that%27s+correct.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+I+am+updating+your+personal+email+address+now.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+details...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22title%22%3A%22Updating+Email%22%2C%22connectorName%22%3A%22sap-success-factors%22%2C%22code%22%3A%22Updating+email+to+%5C%22user.newemail%40example.com%5C%22%22%2C%22caption%22%3A%22%22%7D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Your+personal+email+address+has+been+successfully+updated+to+%3Ca+href%3D%5C%22mailto%3Auser.newemail%40example.com%5C%22%3E%3Cu%3E%3Cstrong%3Euser.newemail%40example.com%3C%2Fstrong%3E%3C%2Fu%3E%3C%2Fa%3E+in+SuccessFactors.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SuccessFactors+Profile%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%5D%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Other
systems:
- sap-success-factors
---

## Introduction

The **“Update Personal Email”** plugin enables users to seamlessly update an employee’s personal email address in SAP SuccessFactors using the Moveworks AI Assistant. This ensures that employee contact details are accurate and up-to-date, supporting efficient communication and better HR management.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+I+need+to+update+my+personal+email+in+SuccessFactors.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+you+with+that.+Could+you+please+provide+your+new+personal+email+address%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+my+new+personal+email+address+is+%3Ca+href%3D%5C%22mailto%3Auser.newemail%40example.com%5C%22%3E%3Cu%3E%3Cstrong%3Euser.newemail%40example.com%3C%2Fstrong%3E%3C%2Fu%3E%3C%2Fa%3E.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Thank+you.+Let+me+confirm+the+details%3A+You+would+like+to+update+your+personal+email+address+to+%3Ca+href%3D%5C%22mailto%3Auser.newemail%40example.com%5C%22%3E%3Cu%3E%3Cstrong%3Euser.newemail%40example.com%3C%2Fstrong%3E%3C%2Fu%3E%3C%2Fa%3E.+Is+that+correct%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+that%27s+correct.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+I+am+updating+your+personal+email+address+now.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+details...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22title%22%3A%22Updating+Email%22%2C%22connectorName%22%3A%22sap-success-factors%22%2C%22code%22%3A%22Updating+email+to+%5C%22user.newemail%40example.com%5C%22%22%2C%22caption%22%3A%22%22%7D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Your+personal+email+address+has+been+successfully+updated+to+%3Ca+href%3D%5C%22mailto%3Auser.newemail%40example.com%5C%22%3E%3Cu%3E%3Cstrong%3Euser.newemail%40example.com%3C%2Fstrong%3E%3C%2Fu%3E%3C%2Fa%3E+in+SuccessFactors.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SuccessFactors+Profile%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%5D%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow the [SAP SuccessFactors Connector](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) Guide to configure the connection.

Note: To enable the Update Personal Email functionality, ensure the SAP SuccessFactors integration user has the necessary permission scopes.

**Required Scopes:**

- `User` – to access user profile data

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Fetch Employee Details by Email**

```bash
curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=userId,firstName,lastName,displayName,nickname,email,location,department,status,gender,timeZone,employeeClass,hireDate,impactOfLoss,riskOfLoss,jobCode,businessPhone,salary,compensationSalaryRateType,empId' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

**Query Parameters:**

- `$filter` (string) – Filters users based on the email address.
- `$select` (string) – Specifies which properties to return.

### API #2: Update Employee Personal Email

```bash
curl --request PUT \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User(userId='{{userId}}')' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  --data '{
  "userId": "{{userId}}",
  "firstName": "{{firstName}}",
  "lastName": "{{lastName}}",
  "displayName": "{{displayName}}",
  "nickname": "{{nickname}}",
  "email": "{{updated_email}}",
  "location": "{{location}}",
  "status": "{{status}}"
  }'
```

- **Path Parameter:**
    - `userId` (string) – The unique identifier of the user to be updated.
- **Request Body Fields:**
    - `userId`, `firstName`, `lastName`, `displayName`, `nickname`, `email`, `location`, `status`
- **Note:** The plugin you will install only updates the `email` field.