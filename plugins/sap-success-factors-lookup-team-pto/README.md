---
availability: INSTALLABLE
description: A plugin that allows a manager to view PTO balance for associated team
  members.
installation_asset_uuid: 4904a204-0288-4316-b3bf-ed138aff00e1
name: Lookup Direct Reports PTO balance
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- sap-success-factors
---

## Introduction

The “**Lookup Direct Reports PTO Balance**” plugin allows users to quickly retrieve the PTO balance for their direct reports in SAP SuccessFactors via the Moveworks AI Assistant, providing up-to-date leave information.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the **Lookup Direct Reports PTO Balance** plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- `View` access to the **User** entity
- `View` access to the **EmployeeTimeAccountBalance** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Get User ID of the User**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/odata/v2/User?%24filter=email%20eq%20%27<USER_EMAIL>%27&%24select=userId' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `$filter` (string) - Filter items by property values e.g., email eq <EMAIL>
- `$select` (string) - Select properties to be returned

### **API #2: Get Direct Reports of the User**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/odata/v2/User('{{userId}}')/directReports?%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `userId` (string) - The user ID of the logged-in user or the user for whom you want to get the direct reports.
- `$select` (string) - Select properties to be returned: defaultFullName, email, empId, firstName, userId, username.

### API #3: Get Time-Off Balance of the User

```bash
curl --location 'https://<API_SERVER_DOMAIN>/rest/timemanagement/absence/v1/timeAccountBalances?%24at=<DATE>&userId=<USER_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `$at` (string) - The date for which the balances are requested. The date must be in the format YYYY-MM-DD.
- `userId` (string) - The `userId` of the user for whom the balances are requested. If no user is entered, the logged-in user is used.