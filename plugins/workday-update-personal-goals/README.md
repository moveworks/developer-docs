---
availability: INSTALLABLE
description: A plugin that lets an employee add personal goals for themselves.
installation_asset_uuid: 3c7b2520-916a-4cff-9df1-08206ad998bb
name: Add Personal Goals
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+add+new+goals+from+my+performance+review.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+list+your+goals+with+their+titles+and+descriptions.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1.+Improve+customer+satisfaction+-+Increase+scores+by+10%25+with+faster+responses+and+training.+%3Cbr%3E2.+Enhance+product+knowledge+-+Complete+4+new+product+modules.+%3Cbr%3E3.+Boost+sales+figures+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESummarizing+and+pulling+appropriate+plugin+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+these+are+the+goals.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ENew+Goals%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E1.+%3Cb%3EImprove+customer+satisfaction%3C%2Fb%3E+-+Increase+scores+by+10%25+with+faster+responses+and+training.%3Cbr%3E2.+%3Cb%3EEnhance+product+knowledge%3C%2Fb%3E+-+Complete+4+new+product+modules.%3Cbr%3E3.+%3Cb%3EBoost+sales+figures%3C%2Fb%3E+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Onboarding
- HR - Other
- HR - Performance Management
systems:
- workday
---

## Introduction

The **“Add Personal Goals”** plugin allows employees to easily add their performance goals directly to **Workday** using the Moveworks AI Assistant. This removes the need to navigate Workday manually, making it more convenient for users to add goals, align with performance expectations, and track progress on time.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+add+new+goals+from+my+performance+review.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+list+your+goals+with+their+titles+and+descriptions.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1.+Improve+customer+satisfaction+-+Increase+scores+by+10%25+with+faster+responses+and+training.+%3Cbr%3E2.+Enhance+product+knowledge+-+Complete+4+new+product+modules.+%3Cbr%3E3.+Boost+sales+figures+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESummarizing+and+pulling+appropriate+plugin+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+these+are+the+goals.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ENew+Goals%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E1.+%3Cb%3EImprove+customer+satisfaction%3C%2Fb%3E+-+Increase+scores+by+10%25+with+faster+responses+and+training.%3Cbr%3E2.+%3Cb%3EEnhance+product+knowledge%3C%2Fb%3E+-+Complete+4+new+product+modules.%3Cbr%3E3.+%3Cb%3EBoost+sales+figures%3C%2Fb%3E+-+Target+a+15%25+sales+increase+by+Q3.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Worker Profile
- `View and modify access` to Performance Goals / Goal Details

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

**Query Parameters:**

- `email` (string) – The primary home email address of the worker used to look up their Workday ID

### **API#2: Add Personal Goal by Worker ID**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/service/<TENANT>/Performance_Management/v44.1' \
--header 'Content-Type: application/xml' \
--data '<?xml version="1.0" encoding="UTF-8"?>
<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/"
              xmlns:wd="urn:com.workday/bsvc"
              xmlns:xsd="http://www.w3.org/2001/XMLSchema"
              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <env:Body>
    <wd:Manage_Goals_Request>
      <wd:Manage_Goals_Data>
        <wd:Worker_Reference>
          <wd:ID wd:type="WID">{{worker_id}}</wd:ID>
        </wd:Worker_Reference>
        <wd:Worker_Goal_Detail_Data>
          <wd:Name>{{goal_name}}</wd:Name>
          <wd:Description>{{goal_description}}</wd:Description>
          <wd:Due_Date>{{due_date}}</wd:Due_Date>
        </wd:Worker_Goal_Detail_Data>
      </wd:Manage_Goals_Data>
    </wd:Manage_Goals_Request>
  </env:Body>
</env:Envelope>'

```

**Request Body Parameters:**

- `worker_id` (string) – The Workday ID (WID) of the worker to whom the personal goal should be added.
- `goal_name` (string) – The title or name of the personal goal.
- `goal_description` (string) – A brief description of the personal goal.
- `due_date` (string, format: `YYYY-MM-DD`) – The date by which the goal should be completed.