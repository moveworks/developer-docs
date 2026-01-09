---
availability: INSTALLABLE
description: A plugin that lets employees access their performance goals to track
  your progress and stay aligned with objectives.
installation_asset_uuid: 1e4cbb05-2cf7-482c-8b26-3578ae08e7f6
name: View Personal Goals
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+can+I+view+my+performance+goals%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%E2%9C%85+Authenticating+your+access+to+the+performance+management+system%5Cn%E2%9C%85+Retrieving+your+current+performance+goals%5Cn%F0%9F%94%81+Preparing+to+display+your+goals%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EYour+Performance+Goals%3C%2Fb%3E%3Cbr%3EKeeping+track+of+your+performance+goals+helps+you+stay+focused+and+aligned+with+your+career+aspirations.+Here+are+your+current+goals%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQ1+Objectives%3A%3C%2Fb%3E+Increase+sales+conversion+rate+by+10%25.%3Cbr%3E%3Cb%3EQ2+Objectives%3A%3C%2Fb%3E+Complete+Advanced+Sales+Training.%3Cbr%3E%3Cb%3EAnnual+Goal%3A%3C%2Fb%3E+Achieve+%27Exceeds+Expectations%27+in+customer+satisfaction+surveys.%3Cbr%3ETo+discuss+your+goals+or+make+adjustments%2C+please+schedule+a+meeting+with+your+manager.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Schedule+Meeting+with+Manager%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Review+More+Details%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Onboarding
- HR - Other
- HR - Performance Management
systems:
- workday
---

## Introduction

The **“View Personal Goals”** plugin enables employees to easily access and review their performance goals directly from Workday using the Moveworks AI Assistant. This eliminates the need to manually navigate through Workday, making it simpler for users to stay aligned with their objectives and track progress in real time.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22How+can+I+view+my+performance+goals%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%E2%9C%85+Authenticating+your+access+to+the+performance+management+system%5Cn%E2%9C%85+Retrieving+your+current+performance+goals%5Cn%F0%9F%94%81+Preparing+to+display+your+goals%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EYour+Performance+Goals%3C%2Fb%3E%3Cbr%3EKeeping+track+of+your+performance+goals+helps+you+stay+focused+and+aligned+with+your+career+aspirations.+Here+are+your+current+goals%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQ1+Objectives%3A%3C%2Fb%3E+Increase+sales+conversion+rate+by+10%25.%3Cbr%3E%3Cb%3EQ2+Objectives%3A%3C%2Fb%3E+Complete+Advanced+Sales+Training.%3Cbr%3E%3Cb%3EAnnual+Goal%3A%3C%2Fb%3E+Achieve+%27Exceeds+Expectations%27+in+customer+satisfaction+surveys.%3Cbr%3ETo+discuss+your+goals+or+make+adjustments%2C+please+schedule+a+meeting+with+your+manager.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Schedule+Meeting+with+Manager%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Review+More+Details%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Worker Profile
- `View access` to Performance Goals / Goal Details

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API#1:  Get Worker Details by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Query Parameters:**

- `email` (string) – The primary home email address of the worker used to look up their Workday ID

### **API#2: Fetch Personal Goals by Workday ID**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT fullName, hireDate, workdayID, location, workersManager, jobProfile, goals{goal, goalDescription, dueDate, status, goalCategory, referenceID1} as goals FROM allActiveEmployees WHERE workdayID = %27{{worker_id}}%27"
}'
```

**Query Parameters:**

- `worker_id` (string) – The unique Workday ID of the employee used to retrieve their personal performance goals