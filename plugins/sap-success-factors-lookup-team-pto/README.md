---
description: A plugin that allows a manager to view PTO balance for associated team
  members.
difficulty_level: INTERMEDIATE
fidelity: TEMPLATE
installation_asset_uuid: ef0f39ec-0efe-4689-a5b4-fd3564ae9bab
name: Lookup Direct Reports PTO balance
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR
- HR - Time & Absence
systems:
- sap-success-factors
time_in_minutes: 25
---

## Introduction

The “Lookup Direct Reports PTO Balance” plugin allows users to quickly retrieve the PTO balance for their direct reports in SAP SuccessFactors via the Moveworks AI Assistant, providing up-to-date leave information.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- [SAP SuccessFactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP SuccessFactors Authentication guide to create your connector).

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **SAP SuccessFactors Connector Guide** for instructions. Once completed, refer to our plugin installation documentation to install the **Lookup Direct Reports PTO Balance** plugin in minutes.

For **Lookup Direct Reports PTO Balance**, you will also need to add the following permissions:

**Required Scopes:**

- `Admin privileges`

After configuring the connector, refer to our installation documentation for more details on completing the setup.

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

- `userId` (string) - The user whose direct reports should be retrieved.
- `$select` (string) - Select properties to be returned: defaultFullName, email, empId, firstName, userId, username.

### API #3: Get Time-Off Balance of the User

```bash
curl --location 'https://<API_SERVER_DOMAIN>/rest/timemanagement/absence/v1/timeAccountBalances?%24at=<DATE>&assignmentId=<ASSIGNMENTUUID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `$at` (string) - Date in YYYY-MM-DD format. Defaults to the current date.
- `assignmentId` (string) - The assignmentUUID of a direct report. Fetches the PTO balance for the specified user.