---
availability: INSTALLABLE
description: A plugin that allows you to update a contact inside of an account in
  Salesforce.
installation_asset_uuid: 0afd1fb7-1bd5-4679-8d81-8bfe76390676
name: Update a Contact Inside an Account
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+update+the+contact+details+for+John+Doe+in+our+Palm+Hotels+account.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+contact+%27John+Doe%27+in+%27Palm+Hotels%27+account...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+contact+%27John+Doe%27+with+email+john.doe%40example.com+and+phone+number+123-456-7890.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+found+the+following+contact+details+for+John+Doe+in+Palm+Hotels.%3Cbr%3EWhat+would+you+like+to+update%3F%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJohn+Doe+-+Current+Details%3C%2Fb%3E%3Cbr%3E%3Cb%3EEmail%3A%3C%2Fb%3E+john.doe%40example.com%3Cbr%3E%3Cb%3EPhone%3A%3C%2Fb%3E+123-456-7890%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Doe%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Update+the+phone+number.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+new+phone+number+for+John+Doe.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22987-654-3210%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+update+John+Doe%27s+phone+number+to+987-654-3210.%3Cbr%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPlease+confirm+the+updates%3C%2Fb%3E%3Cbr%3E%3Cb%3EContact%3A%3C%2Fb%3E+John+Doe%3Cbr%3E%3Cb%3ENew+Phone+Number%3A%3C%2Fb%3E+987-654-3210%3Cbr%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Update+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## Introduction

The **“Update Contact Inside an Account”** plugin enables users to quickly update existing contact details within an account in **Salesforce**, all through the Moveworks AI Assistant. This streamlines the process for sales and support teams by removing the need to manually navigate Salesforce to find and edit contact records.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+update+the+contact+details+for+John+Doe+in+our+Palm+Hotels+account.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+contact+%27John+Doe%27+in+%27Palm+Hotels%27+account...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+contact+%27John+Doe%27+with+email+john.doe%40example.com+and+phone+number+123-456-7890.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+found+the+following+contact+details+for+John+Doe+in+Palm+Hotels.%3Cbr%3EWhat+would+you+like+to+update%3F%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJohn+Doe+-+Current+Details%3C%2Fb%3E%3Cbr%3E%3Cb%3EEmail%3A%3C%2Fb%3E+john.doe%40example.com%3Cbr%3E%3Cb%3EPhone%3A%3C%2Fb%3E+123-456-7890%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Doe%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Update+the+phone+number.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+new+phone+number+for+John+Doe.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22987-654-3210%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+update+John+Doe%27s+phone+number+to+987-654-3210.%3Cbr%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPlease+confirm+the+updates%3C%2Fb%3E%3Cbr%3E%3Cb%3EContact%3A%3C%2Fb%3E+John+Doe%3Cbr%3E%3Cb%3ENew+Phone+Number%3A%3C%2Fb%3E+987-654-3210%3Cbr%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Update+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

**Required Permissions:**

- `Read` access to the **Account** object
- `Read` and `Update` access to the **Contact** object

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Retrieve Contact By Name**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+ID+FROM+CONTACT+WHERE+NAME+LIKE+%27%25<CONTACT_NAME>%25%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_AUTH_TOKEN>'
```

**Query Parameters:**

- `CONTACT_NAME` (string) – The name of the Contact to search for in Salesforce

### **API #2: Update Contact Inside Account**

```bash
curl --location --request PATCH 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Contact/<CONTACT_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_AUTH_TOKEN>' \
--data '{
    "Email": "<Email>",
    "Phone": "<Phone>"
}'
```

- **Path Parameter:**
    - `<CONTACT_ID>` – The unique ID of the contact to update
- **Request Body Fields:**
    - `Email` – The updated email address
    - `Phone` – The updated phone number