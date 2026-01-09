---
availability: INSTALLABLE
description: A plugin that enables an opportunity owner to update its stage to ensure
  information is kept up-to-date.
installation_asset_uuid: 8268e233-eebe-48f3-a3ea-01046ed6b6db
name: Update the Stage of an Opportunity
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%27s+the+current+stage+of+the+Acme+opportunity%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetches+current+stage+of+the+Acme+opportunity+from+CRM%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22The+current+stage+of+the+Acme+opportunity+is+%3Cb%3EProposal%2FPrice+Quote%3C%2Fb%3E.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Opportunity%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Update+the+stage+to+Closed.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+let%27s+update+the+stage+of+the+Acme+opportunity.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Change+stage+of+Acme+Opportunity+to+Closed%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+details%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EOpportunity%3A%3C%2Fb%3E+Acme%3Cbr%3E%3Cb%3ECurrent+Stage%3A%3C%2Fb%3E+Proposal%2FPrice+Quote%3Cbr%3E%3Cb%3ENew+Stage%3A%3C%2Fb%3E+Closed%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm+Update%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Confirmed.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Successfully+updated+Acme+opportunity%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22OK.+I%27ve+updated+the+opportunity.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Opportunity%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction :**

The **“Update Opportunity Stage”** plugin enables users to quickly update the stage of an existing opportunity in **Salesforce**, all through the Moveworks AI Assistant. This streamlines the process for sales and support teams by eliminating the need to manually navigate Salesforce to locate and modify opportunity records.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes.

Let’s get started!

# Prerequisites :

- Access to Agent Studio
- The  **Salesforce Lookup Opportunity** is a plugin built in **Agent Studio** that allows users to retrieve opportunity details for a specific account name and check their stages based on a query. For setup instructions, refer to the [**Salesforce Lookup Opportunity](https://developer.moveworks.com/creator-studio/resources/plugin?id=salesforce-opportunity-information)** guide.

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What%27s+the+current+stage+of+the+Acme+opportunity%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetches+current+stage+of+the+Acme+opportunity+from+CRM%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22The+current+stage+of+the+Acme+opportunity+is+%3Cb%3EProposal%2FPrice+Quote%3C%2Fb%3E.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Opportunity%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Update+the+stage+to+Closed.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+let%27s+update+the+stage+of+the+Acme+opportunity.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Change+stage+of+Acme+Opportunity+to+Closed%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+details%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EOpportunity%3A%3C%2Fb%3E+Acme%3Cbr%3E%3Cb%3ECurrent+Stage%3A%3C%2Fb%3E+Proposal%2FPrice+Quote%3Cbr%3E%3Cb%3ENew+Stage%3A%3C%2Fb%3E+Closed%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm+Update%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Confirmed.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Successfully+updated+Acme+opportunity%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22OK.+I%27ve+updated+the+opportunity.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Opportunity%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

- `Read` access to the **Account** object
- `Read` and `Update` access to the **Opportunity** object

After configuring the connector, refer to our **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for more details on completing the setup!

# **Appendix**

## API #1: Update_Opportunity_Details

The **Update_Opportunity_Details** API updates the stage of an opportunity associated with an account.

```bash
curl --request PATCH
--location 'https://<YOUR_DOMAIN>/services/data/v63.0/sobjects/Opportunity/<OPPORTUNITY_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "StageName": "{{STAGE_NAME}}",
    "Name": "{{NAME}}",
    "CloseDate": "{{CLOSE_DATE}}",
    "Discount__c": "{{DISCOUNT}}",
    "MRR__c": "{{MRR}}"
}'
```

**Path Parameters :**

- `OPPORTUNITY_ID`  (string) – The email address of the user whose worker id and timezone want to retrieve.

**Request Body Fields:**

- `STAGE_NAME` (string) – The current stage of the opportunity.
- `NAME` (string) – The name of the opportunity.
- `CLOSE_DATE`  (string) – The expected close date of the opportunity
- `DISCOUNT` (string) – The discount percentage applied to the opportunity.
- `MRR`  (string) – The Monthly Recurring Revenue associated with the opportunity.