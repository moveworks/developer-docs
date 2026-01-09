---
availability: INSTALLABLE
description: A plugin that allows you fetch the latest call notes from an Opportunity.
installation_asset_uuid: fb23771f-9454-4676-bd05-6a9bac2cbb13
name: Look Up Call Notes from an Opportunity
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+look+up+the+call+notes+for+the+opportunity+with+XYZ+Inc.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Calling+Salesforce+API+to+find+opportunity+%27XYZ+Inc%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Opportunity+found%2C+retrieving+call+notes.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+call+notes+for+the+opportunity+with+XYZ+Inc.%3A%3Cbr%3E%3Cb%3EOpportunity+Name%3A%3C%2Fb%3E+XYZ+Inc+Expansion%3Cbr%3E%3Cb%3ELast+Call+Date%3A%3C%2Fb%3E+2023-10-01%3Cbr%3E%3Cb%3ENotes%3A%3C%2Fb%3E+Discussed+project+scope%2C+budget%2C+and+timeline.+Client+interested+in+moving+forward+pending+final+review.%3Cbr%3EWould+you+like+to+take+any+action+on+these+call+notes+in+Salesforce%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Salesforce+-+Opportunity+Call+Notes%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction:**

The **Lookup Call Notes** plugin provides instant access to logged calls, meeting notes, and activity history tied to Salesforce opportunities. Through the Moveworks AI Assistant, sales teams can quickly retrieve key discussion points, action items, and stakeholder communications—all without switching between systems.

This guide walks through the simple setup to enable real-time call note lookups directly in conversation workflows.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+look+up+the+call+notes+for+the+opportunity+with+XYZ+Inc.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Calling+Salesforce+API+to+find+opportunity+%27XYZ+Inc%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Opportunity+found%2C+retrieving+call+notes.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+call+notes+for+the+opportunity+with+XYZ+Inc.%3A%3Cbr%3E%3Cb%3EOpportunity+Name%3A%3C%2Fb%3E+XYZ+Inc+Expansion%3Cbr%3E%3Cb%3ELast+Call+Date%3A%3C%2Fb%3E+2023-10-01%3Cbr%3E%3Cb%3ENotes%3A%3C%2Fb%3E+Discussed+project+scope%2C+budget%2C+and+timeline.+Client+interested+in+moving+forward+pending+final+review.%3Cbr%3EWould+you+like+to+take+any+action+on+these+call+notes+in+Salesforce%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Salesforce+-+Opportunity+Call+Notes%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) Guide to do so. Once completed, follow our plugin installation documentation to install the **Lookup Opportunity Information** plugin in minutes.

## **Required Permissions:**

- **Read**
    - Access to the **Task** and **Event** objects
    - Access to related **Opportunity** and **Contact** records
    - Visibility to custom note fields (if used)

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

## API #1: Query Opportunity ID using Account Name

The **Retrieve Opportunity ID by Account Name** API fetches the **Opportunity ID** for a given **Account Name**. This allows us to look up opportunities associated with a specific Salesforce account.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%20FROM%20Opportunity%20WHERE%[20Account.Name](http://20account.name/)%20like%20%3C<ACCOUNT_NAME>%3E%20ORDER%20BY%20CloseDate%20DESC%20LIMIT%201' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- Account_Name(string) – The name of the Account to search for related contracts in Salesforce.

## API #2: Query Call Notes using Opportunity ID

The **Retrieve Call Notes by Opportunity ID** API fetches **Call Notes** (stored as **Tasks**) associated with a given **Opportunity** in Salesforce. This API helps retrieve call summaries linked to specific opportunities.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>./services/data/v62.0/query?q=SELECT%20Id%2C%20Subject%2C%20Description%2C%20ActivityDate%20FROM%20Task%20WHERE%20WhatId%20%3D%20%<OPPORTUNITY_ID>%27%20' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- Opportunity_Id(string) – The Id of the Opportunity to search for related tasks in Salesforce.