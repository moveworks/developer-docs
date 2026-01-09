---
availability: INSTALLABLE
description: A plugin that enables a manager to get a quick summary of their team's
  performance ratings for calibration meetings.
installation_asset_uuid: 80c4c207-fd18-4ab5-b846-0af272d1979d
name: Get Team Performance Ratings
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+summarize+my+team%27s+performance+ratings+and+the+key+area+of+development+for+each+of+them+for+my+upcoming+calibration+meeting%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieves+latest+performance+ratings+and+key+development+area+for+each+team+member+from+Workday.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Sure%2C+gimme+a+sec+to+pull+up+the+latest+performance+ratings+and+key+objectives+for+your+team.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+latest+performance+ratings+and+key+development+objectives+for+your+team+members%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EMia+Chan%3C%2Fb%3E%3Cbr%3E%3Cb%3EPerformance+Rating%3A%3C%2Fb%3E+Exceeds+Expectations%3Cbr%3E%3Cb%3EKey+Development+Objective%3A%3C%2Fb%3E+Enhance+leadership+skills+through+mentorship+opportunities.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJordan+Lee%3C%2Fb%3E%3Cbr%3E%3Cb%3EPerformance+Rating%3A%3C%2Fb%3E+Meets+Expectations%3Cbr%3E%3Cb%3EKey+Development+Objective%3A%3C%2Fb%3E+Develop+project+management+skills+by+leading+a+cross-functional+project.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EAlex+Kim%3C%2Fb%3E%3Cbr%3E%3Cb%3EPerformance+Rating%3A%3C%2Fb%3E+Needs+Improvement%3Cbr%3E%3Cb%3EKey+Development+Objective%3A%3C%2Fb%3E+Improve+technical+proficiency+in+data+analysis+tools.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Do+you+need+detailed+reports+for+anyone+or+further+actions%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Detailed+Report+for+Mia%22%7D%2C%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Detailed+Report+for+Jordan%22%7D%2C%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Detailed+Report+for+Alex%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22All+good%2C+thanks%21%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Performance Management
systems:
- workday
---

## Introduction

The **“Get Team Performance Ratings”** plugin enables managers to get a quick summary of their team’s performance ratings for calibration meetings using **Workday**, all through the Moveworks AI Assistant. This helps managers prepare efficiently without having to navigate Workday manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+summarize+my+team%27s+performance+ratings+and+the+key+area+of+development+for+each+of+them+for+my+upcoming+calibration+meeting%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieves+latest+performance+ratings+and+key+development+area+for+each+team+member+from+Workday.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Sure%2C+gimme+a+sec+to+pull+up+the+latest+performance+ratings+and+key+objectives+for+your+team.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+the+latest+performance+ratings+and+key+development+objectives+for+your+team+members%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EMia+Chan%3C%2Fb%3E%3Cbr%3E%3Cb%3EPerformance+Rating%3A%3C%2Fb%3E+Exceeds+Expectations%3Cbr%3E%3Cb%3EKey+Development+Objective%3A%3C%2Fb%3E+Enhance+leadership+skills+through+mentorship+opportunities.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJordan+Lee%3C%2Fb%3E%3Cbr%3E%3Cb%3EPerformance+Rating%3A%3C%2Fb%3E+Meets+Expectations%3Cbr%3E%3Cb%3EKey+Development+Objective%3A%3C%2Fb%3E+Develop+project+management+skills+by+leading+a+cross-functional+project.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EAlex+Kim%3C%2Fb%3E%3Cbr%3E%3Cb%3EPerformance+Rating%3A%3C%2Fb%3E+Needs+Improvement%3Cbr%3E%3Cb%3EKey+Development+Objective%3A%3C%2Fb%3E+Improve+technical+proficiency+in+data+analysis+tools.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Do+you+need+detailed+reports+for+anyone+or+further+actions%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Detailed+Report+for+Mia%22%7D%2C%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Detailed+Report+for+Jordan%22%7D%2C%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Detailed+Report+for+Alex%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22All+good%2C+thanks%21%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Employee Performance data
- `View access` to Team Performance Ratings

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

### **API #3: Get Performance Ratings for a Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT employeeID, worker, workdayID, manager_Level01, managementChain_Level02, position, tenureCategory_Position, jobProfile, timeInJobProfile, compensationGrade, managementLevel, location, costCenter, supervisoryOrganization, cf_TalentPlacementCategory, talentMatrixPlacement, potential_CompletedRating, lastReview_OverallRating, cf_PerformanceRatingWorkRating, talentMatrixPlacementRow, talentMatrixPlacementColumn FROM workersForHCMReporting (dataSourceFilter = allActiveWorkers) WHERE workdayID = ''{{WORKER_ID}}''"
}'
```

**Query Parameters:**

- `WORKER_ID`(string) – The unique Workday ID of the worker whose performance ratings you want to retrieve

**Note:**  This API excludes **Key Development Objectives** from the response