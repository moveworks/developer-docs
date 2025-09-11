---
accreditations:
- sarthaksrinivas
- DEFAULT
availability: INSTALLABLE
description: A plugin which allows you to view team members (peers and delegates).
difficulty_level: INTERMEDIATE
domain:
- HR - Other
- HR - Employee Records
- HR - Onboarding
- HR - Time & Absence
fidelity: TEMPLATE
installation_asset_uuid: 1d9ae78c-54f8-47d8-989e-1a7f2bb4e373
name: Look up Team Members
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+Ellen%27s+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+Workday+for+relevant+information+on+the+user%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+have+found+out+that+there+are+multiple+Ellens+in+your+organization.+For+whom+do+you+want+me+to+fetch+the+team+members+for%3F%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EEllen+H%2C+Sales+Director%3C%2Fli%3E%5Cn++%3Cli%3EEllen+M%2C+Engineering+Lead%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+see+the+team+members+of+Ellen+H+who+is+a+Sales+Director.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearches+Workday+for+team+members+information%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+team+members+of+Ellen+H%2C+Sales+Director%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EJacob+R%3C%2Fli%3E%5Cn++%3Cli%3ERudolph+J%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
- HR - Time & Absence
systems:
- workday
time_in_minutes: 25
video: https://www.loom.com/share/d2f169b14d2544b5ae3dcacb807232da?sid=1d00d88d-35dd-4377-9ea5-726c18a04787
---

## Introduction

The **“Look Up Team Members”** plugin enables managers to quickly retrieve a list of their team members from **Workday** through the Moveworks AI Assistant. This makes it easier to access team information without manually navigating Workday, saving time and effort.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+Ellen%27s+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+Workday+for+relevant+information+on+the+user%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+have+found+out+that+there+are+multiple+Ellens+in+your+organization.+For+whom+do+you+want+me+to+fetch+the+team+members+for%3F%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EEllen+H%2C+Sales+Director%3C%2Fli%3E%5Cn++%3Cli%3EEllen+M%2C+Engineering+Lead%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+see+the+team+members+of+Ellen+H+who+is+a+Sales+Director.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearches+Workday+for+team+members+information%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+team+members+of+Ellen+H%2C+Sales+Director%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EJacob+R%3C%2Fli%3E%5Cn++%3Cli%3ERudolph+J%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Employee and Management data
- `View access` to Team Member details

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1:  Get Worker Details by Email**

```bash
cucurl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Query Parameters:**

- `email` (string) – The primary home email address of the worker used to look up their Workday ID

### **API #2: Retrieve Team Members by Worker ID**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/v1/<TENANT>/workers/<WORKER_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Path Parameters:**

- `worker_id` (string) – The Workday ID of the worker whose direct reports are being retrieved.