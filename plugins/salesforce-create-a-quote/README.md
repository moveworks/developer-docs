---
availability: INSTALLABLE
description: A plugin that allows sales representatives to build a quote (configure,
  price, quote) for a customer.
installation_asset_uuid: 82fa707a-6ad9-4c85-a4fb-2b406b57c955
name: Create a Quote
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+build+a+quote+for+Acme+Inc.+for+the+new+X500+SKU+they+are+interested+in+purchasing.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Salesforce+for+Acme+Inc.+and+SKU+details%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+Acme+Inc.+in+Salesforce.+Please+provide+more+details+to+build+the+quote.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EQuote+Details+Needed%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+Acme+Inc.%3Cbr%3E%3Cb%3ESKU%3A%3C%2Fb%3E+X500%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Enter+Quantity%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Enter+Pricing%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Specify+Quote+Validity%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EQuantity+is+100+units+at+a+price+of+%24150+each.+Quote+is+valid+for+30+days.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Validates+provided+details%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+the+quote+details+for+Acme+Inc.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EQuote+Confirmation%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+Acme+Inc.%3Cbr%3E%3Cb%3ESKU%3A%3C%2Fb%3E+X500%3Cbr%3E%3Cb%3EQuantity%3A%3C%2Fb%3E+100+units%3Cbr%3E%3Cb%3EPrice%3A%3C%2Fb%3E+%24150+each%3Cbr%3E%3Cb%3EValidity%3A%3C%2Fb%3E+30+days%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm+and+Build+Quote+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+building+the+quote...%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creates+quote+in+Salesforce%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+I+built+the+quote%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+Quote%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## **Introduction**

The **“Create a Quote”** plugin empowers sales representatives to quickly generate quotes for customers right from the Moveworks AI Assistant. This includes configuring products, setting pricing, and initiating the quote process without logging into Salesforce manually.

This guide will walk you through installing and setting up the plugin in **Agent Studio**, so your sales team can quickly create accurate quotes, respond faster to customer needs, and stay focused on closing deals. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+build+a+quote+for+Acme+Inc.+for+the+new+X500+SKU+they+are+interested+in+purchasing.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+Salesforce+for+Acme+Inc.+and+SKU+details%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+Acme+Inc.+in+Salesforce.+Please+provide+more+details+to+build+the+quote.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EQuote+Details+Needed%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+Acme+Inc.%3Cbr%3E%3Cb%3ESKU%3A%3C%2Fb%3E+X500%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Enter+Quantity%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Enter+Pricing%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Specify+Quote+Validity%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EQuantity+is+100+units+at+a+price+of+%24150+each.+Quote+is+valid+for+30+days.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Validates+provided+details%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+the+quote+details+for+Acme+Inc.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EQuote+Confirmation%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+Acme+Inc.%3Cbr%3E%3Cb%3ESKU%3A%3C%2Fb%3E+X500%3Cbr%3E%3Cb%3EQuantity%3A%3C%2Fb%3E+100+units%3Cbr%3E%3Cb%3EPrice%3A%3C%2Fb%3E+%24150+each%3Cbr%3E%3Cb%3EValidity%3A%3C%2Fb%3E+30+days%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm+and+Build+Quote+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+building+the+quote...%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creates+quote+in+Salesforce%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Okay%2C+I+built+the+quote%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Acme+Inc.+Quote%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Create a Quote functionality, ensure the Salesforce integration user has the necessary object and field-level permissions.

Specifically, confirm the following permissions are granted:

- **Object Access**: `Create` and `Edit` access to the **Quote** object
- **Field Access**: `Read` and `Edit` access to all required fields used during quote creation.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Retrieve Opportunity by Account Name:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+Account.Name,+CloseDate+FROM+Opportunity+WHERE+Account.Name+LIKE+%27%25{{account_name}}%25%27+ORDER+BY+CloseDate+DESC+LIMIT+1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `account_name` (string) - Filters opportunities by the related Account's name

### **API #2: Retrieve Product and Pricing Details by Product Name:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Pricebook2.Id,+Pricebook2.Name,+Product2.Id,+Product2.Name,+Product2.ProductCode,+UnitPrice+FROM+PricebookEntry+WHERE+Product2.Name+LIKE+%27%25{{product_name}}%25%27+AND+Pricebook2.IsActive+=+true' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `product_name` (string) - The name of the product used to retrieve product and pricing details from Salesforce.

### **API #3: Create Quote in Salesforce:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/Quote' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "OpportunityId": "<OpportunityId>",
  "Name": "<name>",
  "Status": "<status>",
  "Pricebook2Id": "<Pricebook2Id>"
}'
```

**Request Body Fields:**

- `OpportunityId` (string) - The ID of the Opportunity the Quote is related to. This links the Quote to a specific sales opportunity.
- `name`(string) - The name or title of the Quote (e.g., "Quote for ABC Corp"). This is how the quote will be labeled in Salesforce.
- `status` (string) - The current status of the Quote (e.g., `"Draft"`, `"In Review"`, `"Approved"`). This helps track where the quote is in the process.
- `Pricebook2Id` (string) - The ID of the Price Book used for this Quote. This determines which set of products and prices will be available.

### **API #4: Retrieve Quote by Quote Name:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name+FROM+Quote+WHERE+Name+LIKE+%27%25{{quote_name}}%25%27' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
```

**Query Parameter:**

- `quote_name` (string) - The name of the quote you want to search for. Used to retrieve matching quotes from Salesforce. (e.g., "ABC Quote").

### **API #5: Create Quote Line Item:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/QuoteLineItem' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "QuoteId": "<quote_id>",  
  "PricebookEntryId": "<PricebookEntryId>",  
  "Quantity": "<quantity>",
  "UnitPrice": "<unit_price>"
}'
```

**Request Body Fields:**

- `quote_id` (string) - The ID of the Quote this line item belongs to, linking the product to the specific quote.
- `Pricebook2Id` (string) - The ID of the Price Book used for this Quote. This determines which set of products and prices will be available.
- `quantity` (string) - The number of units quoted for this product.
- `unit_price` (string) - The price per unit of the product.