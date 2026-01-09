---
availability: INSTALLABLE
description: A plugin that allows an employee to update phone number,.
installation_asset_uuid: d8ea946b-43ff-47cd-893e-7982fc31a615
name: Update Mobile Number
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey+Copilot%2C+I+need+to+update+my+mobile+number+in+SuccessFactors.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+assist+you+with+updating+your+mobile+number.+Could+you+please+provide+your+new+mobile+number%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+my+new+mobile+number+is+%2B1-234-567-8901.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThank+you.+Let+me+confirm+the+details%3A+You+would+like+to+update+your+mobile+number+to+%2B1-234-567-8901.+Is+that+correct%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%2C+that%27s+correct.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGreat%21+I+am+updating+your+mobile+number+now.%3C%2Fp%3E%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22Updating+details...%22%2C%22title%22%3A%22Updating+mobile+number%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYour+mobile+number+has+been+successfully+updated+to+%2B1-234-567-8901+in+SuccessFactors.%3C%2Fp%3E%3Cp%3EIs+there+anything+else+I+can+help+you+with%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SuccessFactors+Profile%22%2C%22connectorName%22%3A%22successfactors%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Other
systems:
- sap-success-factors
---

# **Introduction :**

The **Update Mobile Number** plugin allows users to update their mobile number in SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly and easily update their contact information to ensure their records stay current.

This guide will help you install and configure the plugin in Agent Studio within minutes. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey+Copilot%2C+I+need+to+update+my+mobile+number+in+SuccessFactors.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+assist+you+with+updating+your+mobile+number.+Could+you+please+provide+your+new+mobile+number%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+my+new+mobile+number+is+%2B1-234-567-8901.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThank+you.+Let+me+confirm+the+details%3A+You+would+like+to+update+your+mobile+number+to+%2B1-234-567-8901.+Is+that+correct%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%2C+that%27s+correct.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGreat%21+I+am+updating+your+mobile+number+now.%3C%2Fp%3E%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22Updating+details...%22%2C%22title%22%3A%22Updating+mobile+number%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYour+mobile+number+has+been+successfully+updated+to+%2B1-234-567-8901+in+SuccessFactors.%3C%2Fp%3E%3Cp%3EIs+there+anything+else+I+can+help+you+with%3F%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SuccessFactors+Profile%22%2C%22connectorName%22%3A%22successfactors%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- User profile update privileges
- Admin privileges

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: **Fetch UserId using User Email**

The **Fetch UserId using User Email** API retrieves a userId using user email.

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%2424top=30&%24filter=email%20eq%20<email>&%24select=userId%2CfirstName%2ClastName%2CdisplayName%2Cnickname%2Cemail%2Clocation%2Cdepartment%2Cstatus%2Cgender%2CtimeZone%2CemployeeClass%2ChireDate%2CjobCode' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters:**

- `<email>` (string) – The email of the user whose userId you want to retrieve.
- $filter (string) ****– Filter items by property values
- $select (array[string]) – Select properties to be returned
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip

## API #2: Update BusinessPhone number **using UserId**

The **Update BusinessPhone number** API updates the businessphone number using UserId.

```bash
curl --request PUT
--location 'https://<API_SERVER>//odata/v2/User(userId='\''<userId>'\'')' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
  "userId": "{{userId}}",
  "firstName": "{{firstName}}",
  "lastName": "{{lastName}}",
  "displayName": "{{displayName}}",
  "nickname": "{{nickname}}",
  "email": "{{email}}",
  "location": "{{location}}",
  "status": "{{status}}",
  "businessPhone":"{{businessPhone}}"
}'
```

**Path Parameters:**

- `<userId>`(integer) – The user ID of the employee whose business phone number you want to update.

**Request Body Fields:**

- `userId` (string) – The unique identifier of the user.
- `firstName` (string) – The user's first name.
- `lastName`  (string) – The user's last name.
- `displayName` (string) – The full display name of the user.
- `nickname`  (string) – The nickname of the user.
- `email`  (string) – The user's email address.
- `location`  (string) – The user's work location.
- `status` (string) – The user's status.
- `businessPhone`  (string) – The user's business phone number to be updated.