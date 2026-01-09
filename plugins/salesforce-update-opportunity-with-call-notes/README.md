---
availability: INSTALLABLE
description: A plugin that allows you to post an update to an opportunity or add notes.
installation_asset_uuid: 0d2d68ae-1c2d-4045-a11b-7941c2329d0a
name: Update an Opportunity with Call Notes
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+had+a+productive+call+with+Acme+Corp.+I+need+to+log+this+in+Salesforce.+We+discussed+the+product+roadmap+and+they%27re+interested+in+a+demo+next+week.+%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Gathers+details+for+Salesforce+update%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ELet%27s+update+Acme+Corp%27s+Salesforce+record.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EConfirm+call+summary+%26+next+actions%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EAccount%3A%3C%2Fb%3E+Acme+Corp%3Cbr%3E%3Cb%3ECall+Summary%3A%3C%2Fb%3E+Discussed+product+updates%2C+showed+strong+interest.%3Cbr%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+Schedule+a+product+demo+for+next+week.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Update+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Corp%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## **Introduction**

The **“Update an Opportunity with Call Notes”** plugin enables sales teams to quickly add call notes or update opportunity details in Salesforce directly through the Moveworks AI Assistant. This eliminates the need to navigate into Salesforce manually, streamlining the process of logging critical sales interactions and keeping opportunity records up to date in real time.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, helping your team stay focused on selling while ensuring CRM data remains accurate and actionable. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+had+a+productive+call+with+Acme+Corp.+I+need+to+log+this+in+Salesforce.+We+discussed+the+product+roadmap+and+they%27re+interested+in+a+demo+next+week.+%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Gathers+details+for+Salesforce+update%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ELet%27s+update+Acme+Corp%27s+Salesforce+record.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EConfirm+call+summary+%26+next+actions%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EAccount%3A%3C%2Fb%3E+Acme+Corp%3Cbr%3E%3Cb%3ECall+Summary%3A%3C%2Fb%3E+Discussed+product+updates%2C+showed+strong+interest.%3Cbr%3E%3Cb%3ENext+Steps%3A%3C%2Fb%3E+Schedule+a+product+demo+for+next+week.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Update+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Corp%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Update an Opportunity with Call Notes functionality, ensure the Salesforce integration user has appropriate object and field-level permissions.

Specifically, confirm the following permissions are granted:

- **Object Access**: `Read` and `Edit` access to the **Opportunity** object
- **Field Access**: `Read` and `Edit` access to fields used for call notes (e.g., **Description**, **Next Steps**, **Call Notes**, or any custom fields used in your org)

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get opportunity with “Qualification” stage of an Account:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT%20Id%2C%20Name%20FROM%20Opportunity%20WHERE%20Account.Name%20%3D%20%27<account_name>%27%20AND%20StageName%20%3D%20%27Qualification%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `account_name` (string) - Filters opportunities by the related Account's name.

### **API #2: Update the next step of the Opportunity:**

```bash
curl --location --request PATCH 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Opportunity/<opportunity_id>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "nextStep": "<next_step>"
}'
```

**Path Parameter:**

- `opportunity_id` (string) - The ID of the specific Opportunity record you want to update in Salesforce.

**Request Body Field:**

- `next_step` (string) - The updated text or description for the Next Step field on the Opportunity.

### **API #3: Create a call summary as a task in the opportunity:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Task' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "Subject": "Call Summary",
    "Description": "<call_summary>",
    "WhatId": "<opportunity_id>",
    "Status": "Completed"
}'
```

**Request Body Fields:**

- `opportunity_id` (string) - The ID of the Opportunity the task is related to. This is assigned to the `WhatId` field to link the task with that specific Opportunity.
- `call_summary` (string) - The content of the call or meeting notes. This will be stored in the `Description` field of the Task to provide context or outcomes of the call.