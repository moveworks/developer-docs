---
availability: INSTALLABLE
description: A plugin that allows an employee to request a badge to access the office.
installation_asset_uuid: 9dee32e7-0a1e-41b4-ad98-c8c8ae556fca
name: Request New Badge
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+lost+my+badge+and+need+access+to+the+SF+office.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+understand+you%27ve+lost+your+badge+and+need+access+to+the+SF+office.+Would+you+like+me+to+file+a+ticket+for+a+new+badge%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+please+do+that.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ELost+Badge+And+Need+SF+Office+Access%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+New+Badge%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+submitted+a+ticket+for+your+lost+badge.+You%27ll+receive+a+notification+once+your+new+badge+is+ready+for+pickup.+Is+there+anything+else+I+can+help+with%3F%22%7D%5D%7D%5D%7D
solution_tags:
- Facilities
systems:
- servicenow
---

## **Introduction**

The **“Request New Badge”** plugin allows employees to quickly request a new or replacement badge for office access directly through the Moveworks AI Assistant. Whether they've lost their badge or need one for a new location, this plugin streamlines the process by submitting a request in ServiceNow without manual form-filling.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, so your team can easily handle badge requests and ensure seamless access to the workplace. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+lost+my+badge+and+need+access+to+the+SF+office.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+understand+you%27ve+lost+your+badge+and+need+access+to+the+SF+office.+Would+you+like+me+to+file+a+ticket+for+a+new+badge%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+please+do+that.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ELost+Badge+And+Need+SF+Office+Access%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERequest+New+Badge%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+submitted+a+ticket+for+your+lost+badge.+You%27ll+receive+a+notification+once+your+new+badge+is+ready+for+pickup.+Is+there+anything+else+I+can+help+with%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

 Note: To enable the Request New Badge functionality, ensure the ServiceNow integration user has the appropriate table-level permissions.

Specifically, confirm the following permissions are granted:

- **Table Access**: `Read` and `Create` access to the `sys_user` and `incident` tables.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get User Details by Email:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/sys_user?sysparm_query=email={{email}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameter:**

- `email` (string) - Filters users based on the email address.

### **API #2: Create Badge Request:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/incident' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "{{short_description}}",
  "description": "{{description}}",
  "caller_id": "{{caller_id}}",
  "impact": "{{impact}}",
  "urgency": "{{urgency}}",
  "priority": "{{priority}}"
}'

```

**Request Body Parameters:**

- `short_description` (string, required) – A summary of the reported issue.
- `description` (string) – A more detailed explanation of the issue or request.
- `caller_id` (string, required) – The `sys_id` of the user reporting the issue; links the ticket to that user.
- `impact` (string) – The business impact of the issue (1 = High, 2 = Medium, 3 = Low).
- `urgency` (string) – How quickly the issue needs to be resolved (1 = High, 2 = Medium, 3 = Low).
- `priority` (string) – The overall importance of the ticket (1 = Critical, 2 = High, 3 = Moderate, 4 = Low, 5 = Planning).