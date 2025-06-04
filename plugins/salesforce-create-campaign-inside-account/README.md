---
description: A plugin that allows you to create a campaign inside of an account in
  Salesforce.
fidelity: GUIDE
name: Create Campaign Inside Account
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A4996%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22I+want+to+create+a+new+campaign+for+Acme+Inc.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Initiates+campaign+creation+process+in+Salesforce%2C+associated+with+%27Acme+Inc.%27.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Let%27s+create+a+new+campaign+for+Acme+Inc.+Please+provide+the+campaign+name%2C+start+and+end+dates.%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Name%3A+Summer+Sales+Blitz%3B+Start%3A+June+1%2C+2023%3B+End%3A+August+31%2C+2023.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EConfirm+creating+the+following+campaign+for+Acme+Inc.%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Confirm+Campaign+Creation%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3EName%3A%3C%2Fb%3E+Summer+Sales+Blitz%3Cbr%3E%3Cb%3EStart+Date%3A%3C%2Fb%3E+June+1%2C+2023%3Cbr%3E%3Cb%3EEnd+Date%3A%3C%2Fb%3E+August+31%2C+2023%3Cbr%3E%3C%2Fp%3E%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Create+Campaign%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Create+Campaign%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22The+%27Summer+Sales+Blitz%27+campaign+for+Acme+Inc.+has+been+successfully+created+in+Salesforce+with+the+specified+dates.%22%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D%7D%5D%7D
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
    - For **Field Label**, enter: `Account`
    - The **Field Name, enter**: `Account`
    - When you reach the **Field-Level Security** step during the custom field creation, **do not make any changes** to the default selections
    - Then, **click the Next button** to continue.
    - When you reach the **Add custom related lists**  step during the custom field creation, **do not make any changes** to the default selections
    - Click the **Save & New** button

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