---
availability: INSTALLABLE
description: A plugin that allows sales representatives to look up all quotes for
  a customer/account in Salesforce.
installation_asset_uuid: a0ac2987-8d18-40cc-8650-5b040f76ab56
name: Look Up all Quotes for an Account
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+a+quote+for+a+customer+in+Salesforce.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+customer+are+you+looking+for%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Acme+Inc.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+quotes+related+to+%27Acme+Inc.%27...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+3+quotes+for+Acme+Inc.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+three+quotes+for+Acme+Inc.++Can+you+confirm+which+quote+you%27re+looking+for%3F%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3EQuote+Q-1234%3C%2Fli%3E%3Cli%3EQuote+Q-5678%3C%2Fli%3E%3Cli%3EQuote+Q-9012%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Quote+Q-1234%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-5678%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-9012%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## **Introduction**

The **“Look Up all Quotes for an Account”** plugin allows sales representatives to quickly find all quotes linked to a specific customer or account in Salesforce directly through the Moveworks AI Assistant. This removes the need to search manually in Salesforce and helps sales teams access quote information instantly.

This guide will walk you through installing and setting up the plugin in **Agent Studio**, so your team can easily retrieve quote details and stay informed during every step of the sales process. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+a+quote+for+a+customer+in+Salesforce.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+which+customer+are+you+looking+for%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Acme+Inc.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+quotes+related+to+%27Acme+Inc.%27...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+3+quotes+for+Acme+Inc.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+three+quotes+for+Acme+Inc.++Can+you+confirm+which+quote+you%27re+looking+for%3F%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3EQuote+Q-1234%3C%2Fli%3E%3Cli%3EQuote+Q-5678%3C%2Fli%3E%3Cli%3EQuote+Q-9012%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Quote+Q-1234%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-5678%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quote+Q-9012%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Look Up all Quotes for an Account functionality, ensure the Salesforce integration user has the necessary object and field-level permissions.

Specifically, confirm the following permissions are granted:

- **Object Access**: `Read` access to the **Quote** and **Account** objects.
- **Field Access**: `Read` access to key fields such as **Quote name, Quote number**, **AccountId**, **Status**, and any custom fields your organization uses for quotes.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Retrieve Quote Number Based on Account Name:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+Discount,+QuoteNumber,+CreatedDate,+Status,+ExpirationDate,+TotalPrice,+AccountId+FROM+Quote+WHERE+Account.Name+LIKE+%27%25<account_name>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `account_name` (string) - Filters Quotes by the related Account's name.