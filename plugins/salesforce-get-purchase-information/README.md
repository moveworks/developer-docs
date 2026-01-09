---
availability: INSTALLABLE
description: A plugin that enables an employee to get details of which SKUs a customer
  purchased.
installation_asset_uuid: 81268ceb-81f1-41c8-a8c5-039baaa7cb36
name: Get Purchase Information
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Which+SKUs+has+IntelliFresh+purchased%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+Salesforce+for+customer+purchase+details%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+purchase+details+for+IntelliFresh.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPurchase+Order+1%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ESKU%3A+%3C%2Fb%3ESaaS-001%3Cbr%3E%3Cb%3EProduct+Name%3A+%3C%2Fb%3ECloud+Storage+Pro%3Cbr%3E%3Cb%3ESeats%3A+%3C%2Fb%3E50%3Cbr%3E%3Cb%3ERenewal+Date%3A+%3C%2Fb%3E2023-12-10%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPurchase+Order+2%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ESKU%3A+%3C%2Fb%3ESaaS-002%3Cbr%3E%3Cb%3EProduct+Name%3A+%3C%2Fb%3EProject+Management+Suite%3Cbr%3E%3Cb%3ESeats%3A+%3C%2Fb%3E30%3Cbr%3E%3Cb%3ERenewal+Date%3A+%3C%2Fb%3E2024-01-15%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

---
## Introduction

The “Get Purchase Information” plugin allows employees to quickly retrieve detailed records of which SKUs(Stock Keeping Unit) a customer has purchased, all through the Moveworks AI Assistant integrated with Salesforce. This streamlines access to key customer data, enabling sales, support, and operations teams to respond faster and more effectively—without needing to manually search Salesforce records.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Which+SKUs+has+IntelliFresh+purchased%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+Salesforce+for+customer+purchase+details%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+purchase+details+for+IntelliFresh.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPurchase+Order+1%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ESKU%3A+%3C%2Fb%3ESaaS-001%3Cbr%3E%3Cb%3EProduct+Name%3A+%3C%2Fb%3ECloud+Storage+Pro%3Cbr%3E%3Cb%3ESeats%3A+%3C%2Fb%3E50%3Cbr%3E%3Cb%3ERenewal+Date%3A+%3C%2Fb%3E2023-12-10%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPurchase+Order+2%3A%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ESKU%3A+%3C%2Fb%3ESaaS-002%3Cbr%3E%3Cb%3EProduct+Name%3A+%3C%2Fb%3EProject+Management+Suite%3Cbr%3E%3Cb%3ESeats%3A+%3C%2Fb%3E30%3Cbr%3E%3Cb%3ERenewal+Date%3A+%3C%2Fb%3E2024-01-15%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [Salesforce Connector Guide](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) to do so. Once completed, follow our plugin installation documentation to install the **Get_Purchase_Information** plugin in minutes.

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

## **Customization Process**

We are using a custom field for Renewal Date, if you already have one, you can update the action to use your own field. 

Below are the steps you can follow to create a custom field 

## **Steps to Create Renewal Date Custom Fields on Product**

1. **Go to Setup**
    - Click the gear icon and select **Setup**.
2. **Open Object Manager**
    - In Setup, select **Object Manager**.
    - Find and click Product.
3. **Access Fields & Relationships**
    - Click **Fields & Relationships** in the left menu.
4. **Create Renewal Date Field**
    - Click **New**.
    - Choose **Date** as the field type, then click **Next**.
    - Enter **Field Label** as "RenewalDate".
    - Complete the required details and click **Next**.
    - Set field-level security and add to page layouts as needed.
    - Click **Save & New** to create another field.

## **Appendix**

### **API #1: Get Account Id by using Account Name**

```bash
curl --location 'https:<YOUR_INSTANCE>/services/data/v60.0/query?q=SELECT Id FROM Account WHERE Name = <Account_Name>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `account_name` (string) – Account name of the purchased product

### **API #2: Get Opportunities for the Specific Account**

```bash
curl --location 'https:<YOUR_INSTANCE>/services/data/v60.0/query?q=SELECT+Id,+Name,+CloseDate+FROM+Opportunity+WHERE+AccountId=<Account_id>+AND+StageName='Closed+Won'' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `Account_ID` (string) – To retrieve opportunities for the specific Account ID

### **API #3: Get Product for the Specific Opportunity**

```bash
curl --location 'https:<YOUR_INSTANCE>/services/data/v60.0/query?q=SELECT+OpportunityId,Product2.Name,Product2.ProductCode,Product2.StockKeepingUnit,Product2.RenewalDate__c,Quantity,TotalPrice+FROM+OpportunityLineItem+WHERE+OpportunityId=<Opportunity_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Query Parameters:**

- `Opportunity_ID` (string) – To retrieve products for the specific opportunity ID
