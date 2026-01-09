---
availability: INSTALLABLE
description: A plugin that allows sales representatives to look up a quote by its
  quote number for a customer/account in Salesforce.
installation_asset_uuid: 4b77b580-86d0-417c-82ee-62a42a9b3e20
name: Look Up a Quote by its Quote Number
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+a+quote+for+a+customer+in+Salesforce.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+customer+are+you+looking+for%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Innovexa+Solutions%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+quotes+related+to+%27Innovexa+Solutions%27...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+3+quotes+for+Innovexa+Solutions.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+three+quotes+for+Innovexa+Solutions.++Can+you+confirm+which+quote+you%27re+looking+for%3F%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3EQuote+Q-1234%3C%2Fli%3E%3Cli%3EQuote+Q-5678%3C%2Fli%3E%3Cli%3EQuote+Q-9012%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Quote+Q-1234%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-5678%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-9012%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Quote+Q-5678%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+quote+details+from+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Successfully+retrieved+quote+details.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+Quote+Q-5678%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EQuote+Number%3A%3C%2Fb%3E+Q-5678%3C%2Fli%3E%3Cli%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+Innovexa+Solutions%3C%2Fli%3E%3Cli%3E%3Cb%3ESKU%3A%3C%2Fb%3E+X500%3C%2Fli%3E%3Cli%3E%3Cb%3EQuantity%3A%3C%2Fb%3E+100%3C%2Fli%3E%3Cli%3E%3Cb%3EPrice%3A%3C%2Fb%3E+15000%3C%2Fli%3E%3Cli%3E%3Cb%3EValid+Until%3A%3C%2Fb%3E+2024-05-20%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Draft%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Quote+Q-5678%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## **Introduction**

The **“Look Up a Quote by its Quote Number”** plugin allows sales representatives to quickly find a specific quote in Salesforce using its unique quote number directly through the Moveworks AI Assistant. This eliminates the need to search records manually and ensures quick access to important quote details linked to a customer or account.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, so your team can retrieve quote information quickly and accurately during any stage of the sales process. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+a+quote+for+a+customer+in+Salesforce.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+customer+are+you+looking+for%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Innovexa+Solutions%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+quotes+related+to+%27Innovexa+Solutions%27...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+3+quotes+for+Innovexa+Solutions.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+three+quotes+for+Innovexa+Solutions.++Can+you+confirm+which+quote+you%27re+looking+for%3F%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3EQuote+Q-1234%3C%2Fli%3E%3Cli%3EQuote+Q-5678%3C%2Fli%3E%3Cli%3EQuote+Q-9012%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Quote+Q-1234%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-5678%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-9012%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Quote+Q-5678%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+quote+details+from+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Successfully+retrieved+quote+details.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+Quote+Q-5678%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EQuote+Number%3A%3C%2Fb%3E+Q-5678%3C%2Fli%3E%3Cli%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+Innovexa+Solutions%3C%2Fli%3E%3Cli%3E%3Cb%3ESKU%3A%3C%2Fb%3E+X500%3C%2Fli%3E%3Cli%3E%3Cb%3EQuantity%3A%3C%2Fb%3E+100%3C%2Fli%3E%3Cli%3E%3Cb%3EPrice%3A%3C%2Fb%3E+15000%3C%2Fli%3E%3Cli%3E%3Cb%3EValid+Until%3A%3C%2Fb%3E+2024-05-20%3C%2Fli%3E%3Cli%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Draft%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Quote+Q-5678%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Look Up a Quote by its Quote Number functionality, ensure the Salesforce integration user has the necessary object and field-level permissions.

Specifically, confirm the following permissions are granted:

- **Object Access**: `Read` access to the **Quote** and **Account** objects.
- **Field Access**: `Read` access to key fields such as **Quote Number**, **Name**, **AccountId**, **Status**, and any custom fields your organization uses for quotes.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Retrieve Quote Based on Quote Number:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+CreatedDate,+Status,+ExpirationDate,+TotalPrice,+AccountId,+Discount+FROM+Quote+WHERE+QuoteNumber+LIKE+%27%25<quote_number>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `quote_number` (string)- Fetches the details of a specific quote based on its Quote Number.