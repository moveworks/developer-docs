---
availability: INSTALLABLE
description: A plugin that allows you to specify a sales representative's name and
  get related accounts and opportunities that they own.
installation_asset_uuid: c9aa5c7d-ab77-4d55-ae52-407237277807
name: Look Up an Account and Opportunities by Owner
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+provide+me+with+a+list+of+accounts+that+Zara+Perez+owns+and+their+contract+size%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Certainly%21+Here+are+the+accounts+owned+by+Zara+Perez+along+with+the+contract+value%3A%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+accounts+owned+by+Zara+Perez+from+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+retrieved+accounts.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Extracting+account+names+and+contract+values...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Account+details+extracted+successfully.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ENextGen+Innovations%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24300K%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETechSphere%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24250K%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EGlobal+Dynamics%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24200K%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EQuantum+Solutions%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24150K%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPathfinder+Ltd.%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24100K%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22NextGen+Innovations%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22TechSphere%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Global+Dynamics%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Quantum+Solutions%22%2C%22connectorName%22%3A%22salesforce%22%7D%2C%7B%22citationTitle%22%3A%22Pathfinder+Ltd.%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22Do+you+need+any+further+details+on+these+accounts%2C+or+is+there+something+else+I+can+assist+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction :**

The “**Lookup Account and Opportunity By Owner”** plugin allows users to quickly retrieve Salesforce Account and Opportunity records based on the owner’s information directly through the Moveworks AI Assistant. With this plugin, users can effortlessly access key customer and sales data, enabling faster decision-making and streamlined workflows.

This guide will help you install and configure the plugin in Agent Studio within minutes.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+provide+me+with+a+list+of+accounts+that+Zara+Perez+owns+and+their+contract+size%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EAccounts+Owned+By+Zara+Perez%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Opportunities+By+Owner%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Here+are+the+accounts+owned+by+Zara+Perez+along+with+the+contract+value%3A%3Cbr%3E-+%3Cb%3EAccount%3A%3C%2Fb%3E+NextGen+Innovations%2C+%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24300K%3Cbr%3E-+%3Cb%3EAccount%3A%3C%2Fb%3E+TechSphere%2C+%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24250K%3Cbr%3E-+%3Cb%3EAccount%3A%3C%2Fb%3E+Global+Dynamics%2C+%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24200K%3Cbr%3E-+%3Cb%3EAccount%3A%3C%2Fb%3E+Quantum+Solutions%2C+%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24150K%3Cbr%3E-+%3Cb%3EAccount%3A%3C%2Fb%3E+Pathfinder+Ltd.%2C+%3Cb%3EContract+Value%3A%3C%2Fb%3E+%24100K%3Cbr%3EDo+you+need+any+further+details+on+these+accounts%2C+or+is+there+something+else+I+can+assist+with%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

- `Read` access to the **Account** object
- `Read` access to the **Opportunity** object

After configuring the connector, refer to our **[plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)** for more details on completing the setup!

# **Appendix**

## API #1: **Retrieve** Account and opportunity by Owner Name

The [**Retrieve Account and opportunity by Owner Name**](https://developer.salesforce.com/docs/atlas.en-us.object_reference.meta/object_reference/sforce_api_objects_opportunity.htm) API retrieves a list of account and opportunity details associated with Owner.

```bash
curl --request GET \
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Account.Name%2C%20Name%2C%20StageName%2C%20Amount%2C%20CloseDate%20FROM%20Opportunity%20WHERE%20Owner.Name%20LIKE%20%27%25{{Owner_Name}}%25%27%20AND%20AccountId%20!%3D%20null' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
--header 'Accept: application/json' \

```

**Query Parameters :**

- `Owner_Name`(string) – The name of the owner whose Account and Opportunity details are to be retrieved.