---
availability: INSTALLABLE
description: A plugin that allows the flexibility to modify details of existing expense
  entries to ensure accuracy.
installation_asset_uuid: 3d9d0820-31d9-415b-a14f-445bc52279c5
name: Edit Expense Entry Details
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+adjust+a+travel+expense+in+SAP+Concur.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+of+the+expense+entries+for+travel+expense%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+India+-+%24155%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-12-04%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Select%22%2C%22style%22%3A%22filled%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+New+York+-+%24450%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-11-12%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Select%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+specific+report+you+would+like+to+update%2C+and+I%27ll+retrieve+the+specific+expense+details+for+you.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ETravel+to+India%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EUpdate+regarding+Travel+to+India%3A%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3EHere+are+the+specific+%3Cstrong%3Eexpense+entries%3C%2Fstrong%3E+for+the+report%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%5Cn1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+January+31%2C+2025%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EParking%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%245.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E3.+%3Cstrong%3EInternet%2FOnline+Fees%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%2450.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3Cbr%3E%5Cn%3Cbr%3E%5CnPlease+confirm+which+specific+expense+entry+you+would+like+to+update%2C+and+provide+the+details+you+wish+to+change.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eparking.+update+amount+to+7+USD%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+parking+expense+to+%247.00%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EUpdate+regarding+Parking+expense+entry%3A+The+Parking+expense+amount+has+been+successfully+updated+to+%247.+If+you+need+any+further+assistance%2C+feel+free+to+ask%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
systems:
- sap-concur
---

# **Introduction**

SAP Concur is a leading platform for managing business expenses, travel and invoicing. The **Edit Expense Entry Details** plugin enables users to seamlessly update expense entries in unsubmitted reports, ensuring accuracy and up-to-date information.

By integrating this feature into your bot, you empower users to make necessary changes to their expense reports directly via conversational commands. This can include updating amounts, categories, dates or descriptions, streamlining the process for employees and ensuring compliance with company policies.

This guide will help you add the **Edit Expense Entry Details** functionality to your bot using Agent Studio.

Let's get started!

## Prerequisites

- Access to Agent Studio

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+adjust+a+travel+expense+in+SAP+Concur.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+of+the+expense+entries+for+travel+expense%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+India+-+%24155%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-12-04%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Select%22%2C%22style%22%3A%22filled%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3ETravel+to+New+York+-+%24450%3C%2Fstrong%3E+%3Cbr%3E%5CnDate%3A+2024-11-12%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Select%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+specific+report+you+would+like+to+update%2C+and+I%27ll+retrieve+the+specific+expense+details+for+you.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ETravel+to+India%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EUpdate+regarding+Travel+to+India%3A%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3EHere+are+the+specific+%3Cstrong%3Eexpense+entries%3C%2Fstrong%3E+for+the+report%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%5Cn1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+January+31%2C+2025%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EParking%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%245.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E3.+%3Cstrong%3EInternet%2FOnline+Fees%3C%2Fstrong%3E%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Amount%3A+%2450.0%3Cbr%3E%5Cn%26nbsp%3B-+Transaction+Date%3A+December+12%2C+2024%3Cbr%3E%5Cn%3Cbr%3E%5CnPlease+confirm+which+specific+expense+entry+you+would+like+to+update%2C+and+provide+the+details+you+wish+to+change.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Eparking.+update+amount+to+7+USD%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+parking+expense+to+%247.00%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EUpdate+regarding+Parking+expense+entry%3A+The+Parking+expense+amount+has+been+successfully+updated+to+%247.+If+you+need+any+further+assistance%2C+feel+free+to+ask%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for SAP Concur first, prior to installing this plugin. Please follow the [SAP Concur connector](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-concur) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case for updating the expense details of a specific expense, we utilize a single API alongside the APIs already employed in the [**Look Up Expense Reports**](https://developer.moveworks.com/marketplace/plugin/?id=sap-concur-expense-report-lookup&hist=home%2Cbrws) and [**View Expense Entries for Report**](https://developer.moveworks.com/marketplace/plugin/?id=sap-concur-view-expense-report-entries&hist=home%2Cbrws) plugins.

## **API #1: Updates an Expense Entry**

The [Updates an Expense Entry](https://developer.concur.com/api-reference/expense/expense-report/expense-entry.html) API allows you to update the expense details of a specific expense.

```bash
curl --location --request PUT 'https://your.domain.com/api/v3.0/expense/entries/<entryId>?user={{user_email_address}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}'\
--data '{
  "TransactionAmount": "<TransactionAmount>",
  "TransactionCurrencyCode": "<TransactionCurrencyCode>",
  "ExchangeRate": "<ExchangeRate>",
  "Description": "<Description>",
  "TransactionDate": "<TransactionDate>"
}'
```