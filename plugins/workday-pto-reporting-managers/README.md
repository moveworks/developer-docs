---
availability: INSTALLABLE
description: A plugin that allows managers to generate comprehensive PTO reports for their direct reports in Workday.
installation_asset_uuid: 55214768-445e-444c-a0d0-0da41e47f2fc
name: Generate PTO Report for Direct Reports
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+make+sure+Amy+%26+Jim+on+my+team+are+taking+their+PTO+and+avoiding+burnout+-+what+are+their+balances%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Resolving+%E2%80%9CAmy%E2%80%9D%3Cbr%3E%E2%9C%85+Found+%E2%80%9CAmy+Phillips%E2%80%9D+%28reports+to+Mary%29%3Cbr%3E%E2%9C%85+Resolving+%E2%80%9CJim%E2%80%9D%3Cbr%3E%E2%9C%85+Found+%E2%80%9CJim+Telustria%E2%80%9D+%28reports+to+Mary%29%3Cbr%3E%E2%9C%85+Retrieving+PTO+Balances+for+Amy+Phillps+%26+Jim+Telustria+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Amy+has+12+hours+of+PTO+and+Jim+as+22+hours.%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Time & Absence
systems:
- workday
---

## Introduction

The **“Generate PTO Report for Direct Reports”** plugin allows managers to quickly access and generate a comprehensive report of paid time off (PTO) taken by their direct reports within a specified period using **Workday**, all through the Moveworks AI Assistant. This provides managers with easy, real-time visibility into their team's PTO without having to manually navigate Workday.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+make+sure+Amy+%26+Jim+on+my+team+are+taking+their+PTO+and+avoiding+burnout+-+what+are+their+balances%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Resolving+%E2%80%9CAmy%E2%80%9D%3Cbr%3E%E2%9C%85+Found+%E2%80%9CAmy+Phillips%E2%80%9D+%28reports+to+Mary%29%3Cbr%3E%E2%9C%85+Resolving+%E2%80%9CJim%E2%80%9D%3Cbr%3E%E2%9C%85+Found+%E2%80%9CJim+Telustria%E2%80%9D+%28reports+to+Mary%29%3Cbr%3E%E2%9C%85+Retrieving+PTO+Balances+for+Amy+Phillps+%26+Jim+Telustria+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Amy+has+12+hours+of+PTO+and+Jim+as+22+hours.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Employee Time Off and Leave data
- `View access` to Direct Reports’ PTO Balances

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API#1: Get Worker Details by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Request Body Parameters:**

- `email` (string) – The primary home email address of the worker used to look up their Workday ID

### **API #2: Get Direct Reports of the Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers/{{WORKER_ID}}/directReports' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Parameters:**

- **`WORKER_ID`**(string) – Filter direct reports for a specific worker ID

### **API #3: Get PTO Balance for a Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/absenceManagement/v1/<TENANT>/balances?worker=<WORKER_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- **`WORKER_ID`**(string) – Retrieves the PTO balance for a specific worker