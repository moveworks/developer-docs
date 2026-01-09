---
availability: INSTALLABLE
description: A plugin that allows users to quickly review account renewal information.
installation_asset_uuid: 91404c5a-3d6e-4bfe-b3b1-3e8c692a5a51
name: Look Up Account Renewal Information
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+renewal+details+for+Vertex+Solutions.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+for+upcoming+renewal+information+for+the+account+%27Vertex+Solutions%27.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+renewal+details+for+Vertex+Solutions%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EAccount+Renewal+Information%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ERenewal+Date%3A%3C%2Fb%3E+June+30%2C+2023%3Cbr%3E%3Cb%3EContract+Terms%3A%3C%2Fb%3E+12+months%2C+auto-renew%3Cbr%3E%3Cb%3EPricing%3A%3C%2Fb%3E+%2420%2C000+annually%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Vertex+Solutions%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction :**

The “**Lookup Account Renewal Information”** plugin allows users to quickly retrieve renewal details for Salesforce Accounts directly through the Moveworks AI Assistant. With this plugin, users can effortlessly access key account renewal data, enabling proactive customer engagement, timely follow-ups, and improved retention strategies.

This guide will help you install and configure the plugin in Agent Studio within minutes.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+renewal+details+for+Vertex+Solutions.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searches+for+upcoming+renewal+information+for+the+account+%27Vertex+Solutions%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+renewal+details+for+Vertex+Solutions%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EAccount+Renewal+Information%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ERenewal+Date%3A%3C%2Fb%3E+June+30%2C+2023%3Cbr%3E%3Cb%3EContract+Terms%3A%3C%2Fb%3E+12+months%2C+auto-renew%3Cbr%3E%3Cb%3EPricing%3A%3C%2Fb%3E+%2420%2C000+annually%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

- `Read` access to the **Account** object
- `Read` access to the **Opportunity** object

After configuring the connector, refer to our **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for more details on completing the setup!

# **Appendix**

## API #1: **Retrieve Account ID and Contract details**

The [**Retrieve Account ID and Contract details**](https://developer.salesforce.com/docs/industries/cme/guide/comms-get-contracts-for-account.html) API retrieves a account id and contract details by account name.

```bash
curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%2CAccount.Name%2CAccount.Id%2CStartDate%2C%20EndDate%2C%20Status%2CContractTerm%20FROM%20Contract%20WHERE%20Account.Name%20LIKE%20%27{{ACCOUNT_NAME}}1%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters :**

- `ACCOUNT_NAME`(string) – The name of the account to retrieve account id.

## API #2: **Retrieve Opportunity details by account ID**

The [**Retrieve Opportunity details by account ID**](https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunity.htm) API is used to retrieve Opportunity details using account id. 

```bash
curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%2CName%2CAmount%2CAccount.Name%20FROM%20Opportunity%20WHERE%20Account.Id%20LIKE%20%27%25{{ACCOUNT_ID}}%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters :**

- `ACCOUNT_ID`  (string) – The unique identifier of the Account to which the Opportunity will be associated.