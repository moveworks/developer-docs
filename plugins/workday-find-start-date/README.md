---
availability: INSTALLABLE
description: A plugin that enables a user to ask the exact date they started at a
  company, and the bot replies with the desired information.
difficulty_level: BEGINNER
domain:
- HR - Other
- HR - Employee Records
- HR - Onboarding
fidelity: TEMPLATE
installation_asset_uuid: 7fd7d567-b314-476e-ac8f-1b7b5145f957
name: Find Start Date
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+what+date+I+started+at+the+company%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWorking+on+%3Cstrong%3EDate+started+at+the+company%3C%2Fstrong%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Your+start+date+with+the+company+was+%3Cb%3EJuly+15th%2C+2019%3C%2Fb%3E.+Is+there+anything+else+you%27d+like+to+know%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Smith%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- workday
time_in_minutes: 15
---

## Introduction

The **Find Start Date** plugin enables employees to instantly access their official start date with the company through the Moveworks AI Assistant. By removing the need to search through Workday or contact HR, this plugin provides a quick and seamless way to retrieve employment details.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+what+date+I+started+at+the+company%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EDate+Started+At+The+Company%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EFind+Start+Date%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Your+start+date+with+the+company+was+%3Cb%3EJuly+15th%2C+2019%3C%2Fb%3E.+%F0%9F%91%8D+Is+there+anything+else+you%27d+like+to+know%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) guide to set up the connector.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- View access to `Worker Data: Service Dates`

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

### **API #2: Get Start Date of Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/staffing/v7/<TENANT>/workers/{WORKER_ID}/serviceDates' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `WORKER_ID` (string) – Get start date for specific worker id
