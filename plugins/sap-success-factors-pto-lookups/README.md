---
description: A plugin that retrieves your time off balance from SAP Success Factors.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 7f08cebb-f3ed-48b1-be6b-dd04286168ed
name: View Time Off Balance
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+how+much+balance+do+I+have%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ELookup+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Time+Off+Type+and+Quantity%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+currently+have+the+following+time+off+balances%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3A+196+Hours%3C%2Fp%3E%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3A+12+Days%3C%2Fp%3E%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E3%3A+Wellness+Day+%28USA%29%3A+0+Hours%3C%2Fp%3E%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThanks+for+the+information%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR
- HR - Time & Absence
systems:
- sap-success-factors
time_in_minutes: 15
---

## Introduction

The “View time off balance” plugin allows user to retrieve their current time off balance in SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access vacation balance, sick leave balance, Personal Time Off (PTO) balance, floating holiday balance and total available time off.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- [SAP SuccessFactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP SuccessFactors Authentication guide to create your connector).

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+how+much+balance+do+I+have%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ELookup+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Time+Off+Type+and+Quantity%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYou+currently+have+the+following+time+off+balances%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3A+196+Hours%3C%2Fp%3E%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3A+12+Days%3C%2Fp%3E%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3E3%3A+Wellness+Day+%28USA%29%3A+0+Hours%3C%2Fp%3E%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThanks+for+the+information%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **SAP SuccessFactors Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **View Time Off Balance** plugin in minutes.
For **View Time Off Balance**, you will also need to add the following permissions:

**Required Scopes:**

- `Admin privileges`

After configuring the connector, refer to our installation documentation for more details on completing the setup.

## **Appendix**

### **API #1: Get assignmentUUID of the User**

```bash
curl --location 'https://<API_SERVER_DOMAIN>.successfactors.com/odata/v2/User?%24filter=email%20eq%20%27<USER_EMAIL>%27&%24select=assignmentUUID' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters**

- `$filter` (string) - Filter items by property values e.g., email eq <EMAIL>
- `$select` (string) - Select properties to be returned

### **API #2: Get Time-Off Balance of the User**

```bash
curl --location 'https://<API_SERVER_DOMAIN>.successfactors.com/rest/timemanagement/absence/v1/timeAccountBalances?%24at=<DATE>&assignmentId=<ASSIGNMENTUUID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Accept: application/json'
```

**Query Parameters**

- `$at` (string) - The date for which the balances are requested. The date must be in the format YYYY-MM-DD.
- `assignmentId` (string) - The assignmentUUID of the user for whom the balances are requested. If no user is entered, the logged in user is used.