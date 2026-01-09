---
availability: INSTALLABLE
description: A plugin that streamlines the quote approval process for sales representatives,
  allowing them to submit and track approvals efficiently.
installation_asset_uuid: b6f7c3d7-27b4-4e40-bfbd-575fb713ac59
name: Submit Quote Approvals
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+get+approval+for+a+new+quote+for+Acme+Inc.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Salesforce+for+existing+quotes+related+to+Acme+Inc.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+recent+quotes+for+Acme+Inc.+Which+one+do+you+need+approval+for%3F%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQuote+1%3A+%2425%2C000+-+New+cloud+infrastructure%3C%2Fb%3E%3Cbr%3ECreated+on%3A+2023-04-10%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+-+Cloud+Infrastructure%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EQuote+2%3A+%2415%2C000+-+Software+licenses+renewal%3C%2Fb%3E%3Cbr%3ECreated+on%3A+2023-04-08%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+-+Software+Renewal%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22To+submit+for+approval%2C+I+just+need+a+few+more+details.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPlease+confirm+the+quote+details%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECompany%3A%3C%2Fb%3E+Acme+Inc.%3Cbr%3E%3Cb%3EQuote+Amount%3A%3C%2Fb%3E+%2425%2C000%3Cbr%3E%3Cb%3EDescription%3A%3C%2Fb%3E+New+cloud+infrastructure%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit+for+Approval%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+-+Cloud+Infrastructure%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Approvals
- Sales
systems:
- salesforce
---

# **Introduction:**

The **Submit Quote for Approval** plugin automates the quote approval process by enabling users to submit quotes directly from Salesforce through the Moveworks AI Assistant. This eliminates manual workflows, accelerates deal cycles, and ensures compliance with approval policies—all within a conversational interface.

This guide outlines the quick setup to activate quote approvals in minutes.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+get+approval+for+a+new+quote+for+Acme+Inc.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Salesforce+for+existing+quotes+related+to+Acme+Inc.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+recent+quotes+for+Acme+Inc.+Which+one+do+you+need+approval+for%3F%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQuote+1%3A+%2425%2C000+-+New+cloud+infrastructure%3C%2Fb%3E%3Cbr%3ECreated+on%3A+2023-04-10%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+-+Cloud+Infrastructure%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EQuote+2%3A+%2415%2C000+-+Software+licenses+renewal%3C%2Fb%3E%3Cbr%3ECreated+on%3A+2023-04-08%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+-+Software+Renewal%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22To+submit+for+approval%2C+I+just+need+a+few+more+details.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPlease+confirm+the+quote+details%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECompany%3A%3C%2Fb%3E+Acme+Inc.%3Cbr%3E%3Cb%3EQuote+Amount%3A%3C%2Fb%3E+%2425%2C000%3Cbr%3E%3Cb%3EDescription%3A%3C%2Fb%3E+New+cloud+infrastructure%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit+for+Approval%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+-+Cloud+Infrastructure%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) Guide to do so. Once completed, follow our plugin installation documentation to install the **Lookup Opportunity Information** plugin in minutes.

## **Required Permissions:**

- **Read & Create**
    - Access to **Quote**, **Opportunity**, and **Approval Process** objects
    - Visibility to quote line items and pricing fields

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

## **API #1: Retrieve Quote Number Based on Account Name**

The Retrieve Quote Number Based on Account Name API retrieves the **Quote Numbers** associated with a given **Account Name** from Salesforce using a SOQL query. This API helps in identifying and retrieving the quote numbers linked to specific Salesforce accounts.

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id,+Name,+Discount,+QuoteNumber,+CreatedDate,+Status,+ExpirationDate,+TotalPrice,+AccountId+FROM+Quote+WHERE+Account.Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- Account_Name(string) – The name of the Account to search for related contracts in Salesforce.

## **API #2: Process Approval**

The **Process Approval** API allows you to submit a quote (or any other record) for approval in Salesforce. 

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v63.0/process/approvals/' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
"requests": [
{
"actionType": "Submit",
"contextId": "<QUOTE_ID>",
"comments": "<COMMENTS>",
"contextActorId": "<CONTEXT_ACTOR_ID>",
"skipEntryCriteria": "<TRUE_OR_FALSE>"
}
]
}'
```