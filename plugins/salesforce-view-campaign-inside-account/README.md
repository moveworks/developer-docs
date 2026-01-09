---
availability: INSTALLABLE
description: A plugin that allows you to view a campaign inside of an account in Salesforce.
installation_asset_uuid: 36cd462c-0a18-45e9-9bad-daecddf3544f
name: View Campaign Inside Account
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+latest+campaign+details+for+Acme+Corp.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracts+%27Acme+Corp.%27+as+the+account+of+interest.+Searches+Salesforce+for+latest+campaign+details+within+this+account.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+latest+campaign+for+Acme+Corp.+Here+are+the+details%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECampaign%3A+Spring+Launch%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Active%3Cbr%3E%3Cb%3EStart+Date%3A%3C%2Fb%3E+April+1%2C+2023%3Cbr%3E%3Cb%3EEnd+Date%3A%3C%2Fb%3E+June+30%2C+2023%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction:**

**View Campaign Inside Account** is a plugin that enables seamless access to the most recent campaign associated with any Account in Salesforce. It simplifies how users retrieve campaign information by presenting relevant details such as campaign name, status, and timeline without needing to navigate through multiple screens.

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

## **Customization Process**

We are using a custom field for Account , if you already have one, you can update the action to use your own field. 

Below are the steps you can follow to create a custom field 

## **Steps to Create ‘Account’ Custom Field on Accounts Module**

1. **Go to Setup**
    - Click the gear icon and select **Setup**
2. **Open Object Manager**
    - In Setup, select **Object Manager**.
    - Find and click **Account**.
3. **Access Fields & Relationships**
    - Click **Fields & Relationships** in the left menu.
    - Click Next
4. **Create Account Field**
    - Click **New**.
    - Choose **Lookup Relationship** as the field type, then click **Next**.
5. Select Related To
    - In the **"Related To"** dropdown, select **Account**.
    - Click Next
6. Configure Field Details
    - For field label, you can give any label as per your requirement. (We have configured the field label as 'Account').
    - For field name, you can give any name as per your requirement. (We have configured the field name as 'Account').
        - ***You can notice the '__c' added as suffix to the field name you give by Salesforce       automatically.***
    - When you reach the **Field-Level Security** step during the custom field creation, **do not make any changes** to the default selections
    - Then, **click the Next button** to continue.
    - When you reach the **Add custom related lists** step during the custom field creation, **do not make any changes** to the default selections
    - Click the **Save & New** button
    
    ## How the Plugin Uses the Custom Field
    
    Once the custom field is created (e.g., `Account__c`), here’s how it is used by the plugin:
    
    1. Purpose of the Field
        - The custom field `Account__c` stores the **ID** of the Account linked to a Campaign.
    2. Using the Field in Queries
        - In SOQL and API queries, we use `Account__r` to reference the related Account **record**, not just the ID.
    3. **Example Query Used by the Plugin**:
    
    ```bash
    SELECT Id, Name, Status, StartDate, EndDate
    FROM Campaign
    WHERE Account__r.Name = 'Test account Opportunity demo'
    ORDER BY StartDate DESC
    LIMIT 1
    ```
    
    - Here, `Account__r` is the relationship name automatically created by Salesforce for the lookup field `Account__c`.
    - This allows the plugin to **filter campaigns** based on the name of the related Account, enabling dynamic data filtering in logic and UI.

## **Appendix**

### **API #1: Get Campaign Details by Account Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CStatus%2CStartDate%2CEndDate+FROM+Campaign+WHERE+Account__r.Name+%3D+<Account_Name>ORDER+BY+StartDate+DESC+LIMIT+1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameters:**

- `Account_Name` (string) – Search for **Campaign Details** by Account Name