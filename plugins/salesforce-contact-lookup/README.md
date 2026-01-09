---
availability: INSTALLABLE
description: A plugin that looks up details on a contact within Salesforce.
installation_asset_uuid: 77f9849b-eb4c-458b-b6cf-940379e54e47
name: Look Up a Contact
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat%27s+the+contact+info+for+John+Snow%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Salesforce+for+contact+information+including+email%2C+phone%2C+and+address.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+multiple+contacts+matching+%27John+Snow%27.+Please+select+the+correct+one.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EJohn+Snow+-+Acme+Corp%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EPosition%3A+Product+Manager%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Snow%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EJohn+Snow+-+Beta+Inc%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EPosition%3A+Head+of+Sales%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Snow%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+first+one%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+contact+details+from+Salesforce...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+the+contact+info+for+John+Snow+at+Acme+Corp%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EContact+Details%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EEmail%3A%3C%2Fb%3E+john.snow%40acmecorp.com%3Cbr%3E%3Cb%3EPhone%3A%3C%2Fb%3E+%2B1234567890%3Cbr%3E%3Cb%3EAddress%3A%3C%2Fb%3E+123+Acme+Way%2C+Innovation+City%2C+IN+45678%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Snow%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Call%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Email%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22View+in+Salesforce%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
video: https://youtu.be/29vs5VXiV3s
---

# **Introduction:**

The **Lookup Contacts** plugin enables instant access to Salesforce contact records through the Moveworks AI Assistant. With this integration, users can quickly retrieve key contact details like email, phone number, and account relationships—all without leaving their conversation interface.

This guide will walk you through the simple setup process to enable seamless contact lookups in minutes.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat%27s+the+contact+info+for+John+Snow%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Salesforce+for+contact+information+including+email%2C+phone%2C+and+address.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+multiple+contacts+matching+%27John+Snow%27.+Please+select+the+correct+one.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EJohn+Snow+-+Acme+Corp%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EPosition%3A+Product+Manager%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Snow%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EJohn+Snow+-+Beta+Inc%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EPosition%3A+Head+of+Sales%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Snow%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EThe+first+one%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+contact+details+from+Salesforce...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+the+contact+info+for+John+Snow+at+Acme+Corp%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EContact+Details%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EEmail%3A%3C%2Fb%3E+john.snow%40acmecorp.com%3Cbr%3E%3Cb%3EPhone%3A%3C%2Fb%3E+%2B1234567890%3Cbr%3E%3Cb%3EAddress%3A%3C%2Fb%3E+123+Acme+Way%2C+Innovation+City%2C+IN+45678%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Snow%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Call%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Email%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22View+in+Salesforce%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

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