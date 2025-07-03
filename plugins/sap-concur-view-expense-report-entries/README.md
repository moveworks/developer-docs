---
description: A plugin that allows employees to review all expense entries associated
  with a specific report.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 1e095457-ea60-44e2-94bc-938fb6c40c60
name: View Expense Entries For Report
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Ecan+you+fetch+all+my+expense+details+%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+expense+reports...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EHere+are+your+expense+reports%3A%3Cbr%2F%3E%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%26nbsp%3B1.+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%2F%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%24240.0%3Cbr%2F%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%2F%3E%5Cn2.+%3Cstrong%3EConference+Trip+to+San+Francisco%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%2F%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%2410.0%3Cbr%2F%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%2F%3E%5Cn%3Cbr%2F%3E%5Cn%3Cstrong%3EPlease+confirm+the+exact+report+name+you+are+looking+for+to+retrieve+all+expense+details.%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+details+for+Client+Meeting+in+New+York...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+the+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E+expense+report%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EBreakfast%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%2470.0%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Client+Meeting+in+New+York%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance
systems:
- sap-concur
time_in_minutes: 30
---

# **Introduction**

SAP Concur is a leading platform for managing business expenses, travel and invoicing. The **View Expense Entries For Report** plugin simplifies retrieving all expense entries associated with a specific report, allowing employees to efficiently review and validate their expenses.

Integrating this feature with your bot enables seamless access to expense details through conversational queries, streamlining the expense review process.

This guide walks you through adding the **View Expense Entries For Report** feature to your bot using Agent Studio.

Let's get started!

## Prerequisites

- Access to Agent Studio

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Ecan+you+fetch+all+my+expense+details+%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+expense+reports...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EHere+are+your+expense+reports%3A%3Cbr%2F%3E%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%26nbsp%3B1.+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%2F%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%24240.0%3Cbr%2F%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%2F%3E%5Cn2.+%3Cstrong%3EConference+Trip+to+San+Francisco%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn%26nbsp%3B-+Date%3A+December+16%2C+2024%3Cbr%2F%3E%5Cn%26nbsp%3B-+Total+Amount%3A+%2410.0%3Cbr%2F%3E%5Cn%26nbsp%3B-+Approval+Status%3A+Submitted+%26amp%3B+Pending+Approval%3Cbr%2F%3E%5Cn%3Cbr%2F%3E%5Cn%3Cstrong%3EPlease+confirm+the+exact+report+name+you+are+looking+for+to+retrieve+all+expense+details.%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E1%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+details+for+Client+Meeting+in+New+York...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+the+%3Cstrong%3EClient+Meeting+in+New+York%3C%2Fstrong%3E+expense+report%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+%3Cstrong%3EHotel%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%24100.0%3C%2Fp%3E%5Cn%3Cp%3E2.+%3Cstrong%3EBreakfast%3C%2Fstrong%3E%3Cbr%2F%3E%5Cn+%26nbsp%3B-+Transaction+Amount%3A+%2470.0%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Client+Meeting+in+New+York%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for SAP Concur first, prior to installing this plugin. Please follow the [SAP Concur connector](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-concur) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case for fetching expense entries for a specific expense report, we utilize a single API alongside the APIs already employed in the [**Look up Expense Reports**](https://developer.moveworks.com/marketplace/plugin/?id=sap-concur-expense-report-lookup) plugin.

## **API #1: Retrieve All Expense Entries**

The [**Retrieve All Expense Entries**](https://developer.concur.com/api-reference/expense/expense-report/expense-entry.html) API enables you to retrieve available expenses for a specific expense report.

```bash
      curl --location 'https://your.domain.com/api/v3.0/expense/entries?user={{user_email_address}}&reportID=<reportID>' \
 --header 'Accept: application/json' \
 --header 'Authorization: Bearer {{generated_bearer_token}}'
 ```