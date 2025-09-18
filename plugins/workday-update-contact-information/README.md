---
availability: INSTALLABLE
description: A plugin that allows for users to update their home contact information.
difficulty_level: INTERMEDIATE
domain:
- HR - Other
- HR - Employee Records
- HR - Onboarding
fidelity: TEMPLATE
installation_asset_uuid: be7c9f29-f5ee-4616-8ead-cb3c73a070e5
name: Update Home Contact Information
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+update+my+phone+number+in+Workday.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Triggers+the+phone+number+update+process+in+Workday.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Sure%2C+I+can+help+with+updating+your+phone+number+in+Workday.+Please+provide+your+new+phone+number.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22555-123-4567%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELet%27s+confirm+your+new+phone+number+before+updating+in+Workday.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPhone+Number+Update%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ENew+Phone+Number%3A+%3C%2Fb%3E555-123-4567%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Phone+Number+Update%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- workday
time_in_minutes: 30
---

## Introduction

The **Update Contact Information** plugin allows employees to quickly and easily update their home contact number through the Moveworks AI Assistant. This eliminates the need to manually navigate Workday, ensuring that personal contact information stays current with minimal effort.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+update+my+phone+number+in+Workday.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Triggers+the+phone+number+update+process+in+Workday.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Sure%2C+I+can+help+with+updating+your+phone+number+in+Workday.+Please+provide+your+new+phone+number.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22555-123-4567%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELet%27s+confirm+your+new+phone+number+before+updating+in+Workday.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPhone+Number+Update%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ENew+Phone+Number%3A+%3C%2Fb%3E555-123-4567%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm+Update%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [**Workday Connector**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) guide to set up the connector.
For this plugin, ensure the Workday integration system user has the following permissions

**Required Permissions:**

- View and Modify access to Person Data: Home Phone

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

### **API #2: Initialize Home Contact Change Event**

```bash
curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/staffing/v4/<TENANT>/workers/{WORKER_ID}/homeContactInformationChanges' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{}'
```

**Query Parameters:**

- `WORKER_ID` (string) – Initialize home contact change event for a specific worker ID

### **API #3: Get Worker Subresource Id**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/phoneNumbers' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `CHANGE_ID` (string) – Initialized home contact change event ID for the specific worker

### **API #4: Update Home Contact Information**

```bash
curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/phoneNumbers/{SUBRESOURCE_ID}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "completePhoneNumber": "{NEW_PHONE_NUMBER}"
}
```

**Query Parameters:**

- `CHANGE_ID` (string) – Initialized home contact change event id for the specific worker
- `SUBRESOURCE_ID` (string) – Initialized home contact change event person ID
- `NEW_PHONE_NUMBER` (string) – Input for updating the new phone number

### **API #5: Submit Home Contact Information**

```bash
curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/submit' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{}'
```

**Query Parameters:**

- `CHANGE_ID` (string) – Initialized home contact change event id for the specific worker