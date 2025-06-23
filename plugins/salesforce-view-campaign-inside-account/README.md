---
description: A plugin that allows you to view a campaign inside of an account in Salesforce.
fidelity: GUIDE
name: View Campaign Inside Account
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+latest+campaign+details+for+Acme+Corp.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracts+%27Acme+Corp.%27+as+the+account+of+interest.+Searches+Salesforce+for+latest+campaign+details+within+this+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+latest+campaign+for+Acme+Corp.+Here+are+the+details%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECampaign%3A+Spring+Launch%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E%3Cb%3EStart+Date%3A%3C%2Fb%3E+April+1%2C+2023%3Cbr%3E%3Cb%3EEnd+Date%3A%3C%2Fb%3E+June+30%2C+2023%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce

---

# **Introduction:**

The **View Campaign Inside Account** is a plugin that enables seamless access to the most recent campaign associated with any Account in Salesforce. It simplifies how users retrieve campaign information by presenting relevant details—such as campaign name, status, and timeline—without needing to navigate through multiple screens.

This guide covers the installation and configuration steps required to set up the plugin in Agent Studio, making it easy for teams to surface campaign data efficiently and in real time. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+latest+campaign+details+for+Acme+Corp.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracts+%27Acme+Corp.%27+as+the+account+of+interest.+Searches+Salesforce+for+latest+campaign+details+within+this+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+latest+campaign+for+Acme+Corp.+Here+are+the+details%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECampaign%3A+Spring+Launch%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E%3Cb%3EStart+Date%3A%3C%2Fb%3E+April+1%2C+2023%3Cbr%3E%3Cb%3EEnd+Date%3A%3C%2Fb%3E+June+30%2C+2023%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Salesforce integration user has the following permissions:

- **Read** access to the Account object
- **Read** access to the Campaign object

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get Campaign Details by Account Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CStatus%2CStartDate%2CEndDate+FROM+Campaign+WHERE+Account__r.Name+%3D+<Account_Name>ORDER+BY+StartDate+DESC+LIMIT+1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters:**

- `Account_Name` (string) – Search for **Campaign Details** by Account Name