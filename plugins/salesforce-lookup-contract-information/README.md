---
availability: INSTALLABLE
description: A plugin that lets you get contract data for a specified account through
  Salesforce.
installation_asset_uuid: 9f95fdf3-7dae-4c04-a50b-571fa2ea1f6e
name: Look Up Contract Information
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHave+a+call+coming+up+-+I+need+the+contract+information+for+IntelliTech.+Please+summarize+the+latest+for+me.+%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+contract+information+for+IntelliTech+from+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+the+contract+information+for+IntelliTech+as+stored+in+Salesforce%3A%3Cbr%3E-+%3Cb%3EContract+ID%3A%3C%2Fb%3E+CT-9087%3Cbr%3E-+%3Cb%3EStart+Date%3A%3C%2Fb%3E+2022-01-15%3Cbr%3E-+%3Cb%3EEnd+Date%3A%3C%2Fb%3E+2024-01-14%3Cbr%3E-+%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E-+%3Cb%3EAnnual+Value%3A%3C%2Fb%3E+%241.2M%3Cbr%3E-+%3Cb%3EAccount+Manager%3A%3C%2Fb%3E+Samantha+Ray%3Cbr%3EDo+you+need+information+on+anything+else%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IntelliTech+Contract%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## Introduction

The **“Look Up Contract Information”** plugin allows users to quickly retrieve contract details in **Salesforce** through the Moveworks AI Assistant. This simplifies the process for sales and support teams by eliminating the need to manually search for contract records within Salesforce.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHave+a+call+coming+up+-+I+need+the+contract+information+for+IntelliTech.+Please+summarize+the+latest+for+me.+%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+contract+information+for+IntelliTech+from+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+the+contract+information+for+IntelliTech+as+stored+in+Salesforce%3A%3Cbr%3E-+%3Cb%3EContract+ID%3A%3C%2Fb%3E+CT-9087%3Cbr%3E-+%3Cb%3EStart+Date%3A%3C%2Fb%3E+2022-01-15%3Cbr%3E-+%3Cb%3EEnd+Date%3A%3C%2Fb%3E+2024-01-14%3Cbr%3E-+%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E-+%3Cb%3EAnnual+Value%3A%3C%2Fb%3E+%241.2M%3Cbr%3E-+%3Cb%3EAccount+Manager%3A%3C%2Fb%3E+Samantha+Ray%3Cbr%3EDo+you+need+information+on+anything+else%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IntelliTech+Contract%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

**Required Permissions:**

- `Read` access to the **Account** object
- `Read` access to the **Contract** object

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Retrieve Contract Information by Account Name**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id+StartDate+Status+EndDate+AccountId+ContractNumber+OwnerId+FROM+Contract+WHERE+Account.Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `ACCOUNT_NAME` (string) – The name of the Account to search for related contracts in Salesforce.