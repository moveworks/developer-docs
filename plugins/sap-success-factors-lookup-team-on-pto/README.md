---
description: A plugin that allows a manager to get a list of their team members who
  are on PTO on a given date.
difficulty_level: INTERMEDIATE
fidelity: TEMPLATE
installation_asset_uuid: f5e1b298-5abc-445a-9af9-ff2235f36a83
name: Lookup Direct Reports on PTO on a specific date
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+you+tell+me+which+of+our+team+members+are+on+PTO+today%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+Members+PTO+Today%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+On+PTO%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Today%2C+the+following+team+members+are+on+PTO%3A+%3Cbr%3E1.+Emily+Clark+%3Cbr%3E2.+Jordan+Smith+%3Cbr%3E3.+Alex+Lee%3Cbr%3ELet+me+know+if+there%27s+anything+else+I+can+help+with%21%22%7D%5D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Time & Absence
systems:
- sap-success-factors
time_in_minutes: 25
---

## Introduction

The **“Lookup Direct Reports PTO on a Specific Date”** plugin enables users to check the planned PTO status of their direct reports for a specified date using SAP SuccessFactors, all through the Moveworks AI Assistant. This ensures managers have timely visibility into team availability for any given day.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- [SAP SuccessFactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP SuccessFactors Authentication guide to create your connector).

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+which+of+our+team+members+are+on+PTO+today%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+Members+PTO+Today%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+On+PTO%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Today%2C+the+following+team+members+are+on+PTO%3A+%3Cbr%3E1.+Emily+Clark+%3Cbr%3E2.+Jordan+Smith+%3Cbr%3E3.+Alex+Lee%3Cbr%3ELet+me+know+if+there%27s+anything+else+I+can+help+with%21%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [SAP SuccessFactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) for instructions. Once completed, refer to our plugin installation documentation to install the **Lookup Direct Reports PTO on a Specific Date** plugin in minutes.

For **Lookup Direct Reports PTO on a Specific Date**, you will also need to add the following permissions:

**Required Scopes:**

- `Admin privileges`

After configuring the connector, refer to our plugin installation documentation for more details on completing the setup.

## **Appendix**

### **API #1: Get User ID of the User**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/odata/v2/User?%24filter=email%20eq%20%27<USER_EMAIL>%27&%24select=assignmentUUID,userId' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `$filter` (string) - Filter items by property values e.g., email eq <EMAIL>
- `$select` (string) - Select properties to be returned

### **API #2: Get Direct Reports of the User**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/odata/v2/User('{{userId}}')/directReports?%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2Cusername%2CassignmentUUID' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `userId` (string) – The user ID of the logged-in user or the user for whom you want to retrieve direct reports.
- `$select` (string) – Comma-separated list of properties to be returned: `defaultFullName`, `email`, `empId`, `firstName`, `userId`, `username`, `assignmentUUID`

### **API #3: Get Approved Time-Off Records for a User Within a Date Range**

```bash
curl --location 'https://apisalesdemo8.successfactors.com/odata/v2/EmployeeTime?%24filter=userId%20eq%20%27{{userId}}%27%20and%20approvalStatus%20eq%20%27APPROVED%27%20and%20%28timeType%20eq%20%27TT_PTO%27%20or%20timeType%20eq%20%27TT_VAC_REC%27%20or%20timeType%20eq%20%27BRA-VACATN%27%20or%20timeType%20eq%20%27PHL-VAC-TT%27%20or%20timeType%20eq%20%27CHN-ANNL%27%20or%20timeType%20eq%20%27AUS-ANNL%27%20or%20timeType%20eq%20%27DEU-ANNL%27%20or%20timeType%20eq%20%27FRA-ANNL%27%20or%20timeType%20eq%20%27GBR-ANNL%27%20or%20timeType%20eq%20%27ANNL_RUS%27%20or%20timeType%20eq%20%27NLD-ANNL%27%20or%20timeType%20eq%20%27SG_AL%27%29%20and%20startDate%20le%20datetime%27{{startDate}}T00%3A00%3A00%27%20and%20endDate%20le%20datetime%27{{endDate}}T23%3A59%3A59%27&%24select=userId%2CstartDate%2CendDate%2CtimeType%2CapprovalStatus&%24top=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters**

- `userId` – Employee ID to fetch approved time-off records
- `startDate` / `endDate` – Date range in `YYYY-MM-DD` format
- `$filter` – Filters by `approvalStatus='APPROVED'`, specific `timeType` values, and the given date range
    
    > **Custom Instruction:**
    > 
    > - `timeType` values (e.g., `"VACATION"`, `"SICK_LEAVE"`) are **specific to each customer's instance**
    > - These values **must be updated** based on your instance’s configuration
    > - To find the valid `timeType` values:
    >     - Visit the SAP documentation for the [TimeType Entity](https://help.sap.com/docs/successfactors-platform/sap-successfactors-api-reference-guide-odata-v2/timetype)
- `$select` – Returns only `userId`, `startDate`, `endDate`, `timeType`, `approvalStatus`
- `$top` – Limits number of results (e.g., `$top=1` for the first record)