---
availability: INSTALLABLE
description: A plugin that allows you to create a campaign inside of an account in
  Salesforce.
installation_asset_uuid: 5e7e7e65-ba08-44df-b133-60ebcd91f398
name: Create Campaign Inside Account
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+new+campaign+for+Acme+Inc.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Initiates+campaign+creation+process+in+Salesforce%2C+associated+with+%27Acme+Inc.%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Let%27s+create+a+new+campaign+for+Acme+Inc.+Please+provide+the+campaign+name%2C+start+and+end+dates.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Name%3A+Summer+Sales+Blitz%3B+Start%3A+June+1%2C+2023%3B+End%3A+August+31%2C+2023.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EConfirm+creating+the+following+campaign+for+Acme+Inc.%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EConfirm+Campaign+Creation%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EName%3A%3C%2Fb%3E+Summer+Sales+Blitz%3Cbr%3E%3Cb%3EStart+Date%3A%3C%2Fb%3E+June+1%2C+2023%3Cbr%3E%3Cb%3EEnd+Date%3A%3C%2Fb%3E+August+31%2C+2023%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Create+Campaign%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Create+Campaign%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+%27Summer+Sales+Blitz%27+campaign+for+Acme+Inc.+has+been+successfully+created+in+Salesforce+with+the+specified+dates.%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction:**

The **Create Campaign Inside Account** plugin allows users to effortlessly create and manage campaigns directly linked to specific Accounts within Salesforce via the Moveworks AI Assistant. With this plugin, users can quickly initiate new campaigns, assign relevant details, and associate them with the correct Account—without navigating through multiple Salesforce screens.

This guide will walk you through the installation and configuration of the plugin in Agent Studio, ensuring seamless integration and enabling your team to launch targeted campaigns efficiently in just a few minutes. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+create+a+new+campaign+for+Acme+Inc.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Initiates+campaign+creation+process+in+Salesforce%2C+associated+with+%27Acme+Inc.%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Let%27s+create+a+new+campaign+for+Acme+Inc.+Please+provide+the+campaign+name%2C+start+and+end+dates.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Name%3A+Summer+Sales+Blitz%3B+Start%3A+June+1%2C+2023%3B+End%3A+August+31%2C+2023.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EConfirm+creating+the+following+campaign+for+Acme+Inc.%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EConfirm+Campaign+Creation%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EName%3A%3C%2Fb%3E+Summer+Sales+Blitz%3Cbr%3E%3Cb%3EStart+Date%3A%3C%2Fb%3E+June+1%2C+2023%3Cbr%3E%3Cb%3EEnd+Date%3A%3C%2Fb%3E+August+31%2C+2023%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Create+Campaign%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Create+Campaign%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+%27Summer+Sales+Blitz%27+campaign+for+Acme+Inc.+has+been+successfully+created+in+Salesforce+with+the+specified+dates.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend creating the connector for Salesforce first, prior to installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package?id=salesforce&hist=home%2Cplgn.salesforce-create-campaign-inside-account%2Cbrws) guide to set up the connector.

Once the connector is configured, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

After configuring the connector, refer to our installation documentation for more details on completing the setup.

## **Customization Process**
 
To associate a Campaign with an Account, we use a custom lookup field named `Account__c` on the Campaign object. If you already have a similar custom field, you can update the plugin’s action to reference your existing field.
 
If not, follow the steps below to create this custom field:
 
## **Steps to Create ‘Account’ Custom Field on Accounts Module**
 
1. **Go to Setup**
    - Click the gear icon and select **Setup**
2. **Open Object Manager**
    - In Setup, select **Object Manager**.
    - Search for and select **Campaign**.
3. **Create Custom Fields**
    - Click **Fields & Relationships** in the left menu.
    - Click **Next**
    - Click **New** to create a new field.
    - Select **Lookup Relationship** as the field type, then click **Next**.
    - In the “Related To” dropdown, select **Account**, then click **Next**.
4. **Configure Field Details**
    - **Field Label**: `Account`
    - **Field Name**: `Account`
    - When you reach the **Field-Level Security** step during the custom field creation, **do not make any changes** to the default selections
    - Then, click the **Next** button to continue.
    - When you reach the **Add custom related lists** step during the custom field creation, do not make any changes to the default selections
    - Click the **Save & New** button
 
Once done, your `Account__c` field is ready to be used in the API to associate campaigns with accounts.
## **Appendix**

### **API #1: Get Account Id Details by Account Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v60.0/query/?q=SELECT+Id+FROM+Account+WHERE+Name= <Account_Name>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `Account_Name` (string) – Search for Account Id by Account Name

### **API #2: Create Campaign Inside the Account**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/sobjects/Campaign/' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "Name":"{{name}}",
    "Description":"{{description}}",
		"Account__c":"{{Account_c}}",
    "StartDate":"{{startdate}}",
    "EndDate":"{{enddate}}"
  }'

```

**Request Body Parameters:**

- `name` - (string) –  The name of the campaign
- `description` - (string) – A brief description of the campaign’s purpose or details.
- `Account_c` - (string) – Account ID  associated with this campaign.
- `startdate` - (string) – The start date of the campaign
- `enddate` - (string) –  The end date of the campaign