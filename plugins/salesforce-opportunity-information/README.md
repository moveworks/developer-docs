---
availability: INSTALLABLE
description: A plugin that looks up details from an opportunity in Salesforce.
installation_asset_uuid: 560a4437-0a74-4571-b550-649ae1c6fb86
name: Look Up Opportunity Information
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+look+up+the+opportunity+for+ABC+Co.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+opportunity+%27ABC+Co%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+opportunity+%27ABC+Co+Technology+Refresh%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+the+opportunity+with+ABC+Co%3A%3Cbr%3E%3Cb%3EOpportunity+Name%3A%3C%2Fb%3E+ABC+Co+Technology+Refresh%3Cbr%3E%3Cb%3EStage%3A%3C%2Fb%3E+Negotiation%3Cbr%3E%3Cb%3EClose+Date%3A%3C%2Fb%3E+2023-12-15%3Cbr%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24500%2C000%3Cbr%3EWould+you+like+to+take+any+action+on+this+opportunity+in+Salesforce%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ABC+Co+Technology+Refresh%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
video: https://youtu.be/NAFlOXKzJ4g
---

# **Introduction:**

The **Lookup Opportunity Information** plugin provides instant access to Salesforce opportunity data through the Moveworks AI Assistant. Users can quickly retrieve key deal details, status updates, and pipeline metrics without leaving their conversation interface.

This guide covers the simple setup process to enable opportunity lookups in minutes.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+look+up+the+opportunity+for+ABC+Co.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+opportunity+%27ABC+Co%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+opportunity+%27ABC+Co+Technology+Refresh%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+the+opportunity+with+ABC+Co%3A%3Cbr%3E%3Cb%3EOpportunity+Name%3A%3C%2Fb%3E+ABC+Co+Technology+Refresh%3Cbr%3E%3Cb%3EStage%3A%3C%2Fb%3E+Negotiation%3Cbr%3E%3Cb%3EClose+Date%3A%3C%2Fb%3E+2023-12-15%3Cbr%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24500%2C000%3Cbr%3EWould+you+like+to+take+any+action+on+this+opportunity+in+Salesforce%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ABC+Co+Technology+Refresh%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) Guide to do so. Once completed, follow our plugin installation documentation to install the **Lookup Opportunity Information** plugin in minutes.

## **Required Permissions:**

- **Read**
    - Access to the **Opportunity** object.
    - Access to custom fields used in opportunity reporting.
    

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

## API #1:Query the Opportunity by Account Name:

The Retrieve Opportunity information by account name API retrieves Opportunity details for a given **Account Name** from Salesforce using a SOQL query. This API helps in accessing Opportunity information associated with specific Salesforce accounts.

```bash
curl --location 'https://<YOUR_DOMAIN>//services/data/v62.0/query?q=SELECT%20AccountId%2C%20Amount%2C%20StageName%2C%20CloseDate%2C%20Id%20FROM%20Opportunity%20WHERE%[20Account.Name](http://20account.name/)%20like%20ABC1%20ORDER%20BY%20CloseDate%20DESC%20LIMIT%201' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- Account_Name(string) – The name of the Account to search for related contracts in Salesforce.