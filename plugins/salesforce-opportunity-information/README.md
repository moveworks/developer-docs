---
description: A plugin that looks up details from an opportunity in Salesforce.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: e0b58ee1-247a-44f5-8433-ee8d1e04cf39
name: Look Up Opportunity Information
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+look+up+the+opportunity+for+ABC+Co.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+opportunity+%27ABC+Co%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+opportunity+%27ABC+Co+Technology+Refresh%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+the+opportunity+with+ABC+Co%3A%3Cbr%3E%3Cb%3EOpportunity+Name%3A%3C%2Fb%3E+ABC+Co+Technology+Refresh%3Cbr%3E%3Cb%3EStage%3A%3C%2Fb%3E+Negotiation%3Cbr%3E%3Cb%3EClose+Date%3A%3C%2Fb%3E+2023-12-15%3Cbr%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24500%2C000%3Cbr%3EWould+you+like+to+take+any+action+on+this+opportunity+in+Salesforce%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ABC+Co+Technology+Refresh%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
time_in_minutes: 15
video: https://youtu.be/NAFlOXKzJ4g
---

# **Introduction:**

The **Lookup Contacts** plugin enables instant access to Salesforce contact records through the Moveworks AI Assistant. With this integration, users can quickly retrieve key contact details like email, phone number, and account relationships—all without leaving their conversation interface.

This guide will walk you through the simple setup process to enable seamless contact lookups in minutes.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+look+up+the+opportunity+for+ABC+Co.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Salesforce+for+opportunity+%27ABC+Co%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+opportunity+%27ABC+Co+Technology+Refresh%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+the+opportunity+with+ABC+Co%3A%3Cbr%3E%3Cb%3EOpportunity+Name%3A%3C%2Fb%3E+ABC+Co+Technology+Refresh%3Cbr%3E%3Cb%3EStage%3A%3C%2Fb%3E+Negotiation%3Cbr%3E%3Cb%3EClose+Date%3A%3C%2Fb%3E+2023-12-15%3Cbr%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24500%2C000%3Cbr%3EWould+you+like+to+take+any+action+on+this+opportunity+in+Salesforce%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ABC+Co+Technology+Refresh%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) Guide to do so. Once completed, follow our plugin installation documentation to install the **Lookup Opportunity Information** plugin in minutes.

## **Required Permissions:**

- **Read**
    - Access to the **Contact** object
    - Access to related **Account** and **Opportunity** objects (if applicable)
    - Access to custom contact fields used in queries

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

## API #1: Query the Contact by Name:

The Retrieve contact information by account name API retrieves contact details for a given **Account Name** from Salesforce using a SOQL query. This API helps in accessing contact information associated with specific Salesforce accounts.

```bash
curl --location 'https://<YOUR_DOMAIN>//services/data/v62.0/query?q=SELECT%20Id%2CName%2CPhone%2CEmail%20FROM%20Contact%20WHERE%20Name%3D%27james%20ciapello%27' \
--header 'Authorization: Bearer\
--header 'Content-Type: application/json'
```

**Query Parameters:**

- Name(string) – The name of the Contact to search for related contracts in Salesforce.