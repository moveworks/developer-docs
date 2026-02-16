---
availability: INSTALLABLE
description: A plugin that adds a line item a quote for a qualified opportunity.
installation_asset_uuid: 977ac086-f008-495d-b90b-0cda407bb656
name: Add a Line Item to a Quote
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+add+a+product+to+a+quote+in+Salesforce.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Please+provide+the+opportunity+name%2C+quote+name%2C+product+name%2C+quantity%2C+and+sales+price.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+opportunity+name+is+%27Palm+Tree+Corp%27%2C+the+quote+name+is+%27Q3+Sales+Quote%27%2C+and+I+need+to+add+%2710+Service+Hours%27.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+Now%2C+please+provide+the+quantity+and+sales+price.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Quantity+is+5+and+the+sales+price+is+%24200+each.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+confirm+the+details+below+before+I+add+the+line+item+to+the+quote.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EConfirm+Line+Item+Details%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunity+Name%3A+%3C%2Fb%3EAcme+Corp%3Cbr%3E%3Cb%3EQuote+Name%3A+%3C%2Fb%3EQ3+Sales+Quote%3Cbr%3E%3Cb%3EProduct+Name%3A+%3C%2Fb%3E10+Service+Hours%3Cbr%3E%3Cb%3EQuantity%3A+%3C%2Fb%3E5%3Cbr%3E%3Cb%3ESales+Price%3A+%3C%2Fb%3E%24200+each%3Cbr%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Add+to+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Ok%2C+adding+it+now.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Adding+product+%2710+Service+Hours%27+to+quote+%27Q3+Sales+Quote%27+in+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+added+the+product+to+the+quote.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Q3+Sales+Quote%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

## **Introduction**

The **“Add a Line Item to a Quote”** plugin enables sales representatives to easily add products to an existing quote for a qualified opportunity directly through the Moveworks AI Assistant. This simplifies updating quotes in Salesforce without having to navigate the system manually.

This guide will walk you through installing and setting up the plugin in **Agent Studio**, so your team can quickly add line items to quotes and keep deals moving forward efficiently. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+add+a+product+to+a+quote+in+Salesforce.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.+Please+provide+the+opportunity+name%2C+quote+name%2C+product+name%2C+quantity%2C+and+sales+price.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+opportunity+name+is+%27Palm+Tree+Corp%27%2C+the+quote+name+is+%27Q3+Sales+Quote%27%2C+and+I+need+to+add+%2710+Service+Hours%27.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+Now%2C+please+provide+the+quantity+and+sales+price.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Quantity+is+5+and+the+sales+price+is+%24200+each.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+confirm+the+details+below+before+I+add+the+line+item+to+the+quote.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EConfirm+Line+Item+Details%3C%2Fb%3E%3Cbr%3E%3Cb%3EOpportunity+Name%3A+%3C%2Fb%3EAcme+Corp%3Cbr%3E%3Cb%3EQuote+Name%3A+%3C%2Fb%3EQ3+Sales+Quote%3Cbr%3E%3Cb%3EProduct+Name%3A+%3C%2Fb%3E10+Service+Hours%3Cbr%3E%3Cb%3EQuantity%3A+%3C%2Fb%3E5%3Cbr%3E%3Cb%3ESales+Price%3A+%3C%2Fb%3E%24200+each%3Cbr%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Add+to+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Ok%2C+adding+it+now.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Adding+product+%2710+Service+Hours%27+to+quote+%27Q3+Sales+Quote%27+in+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+added+the+product+to+the+quote.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Q3+Sales+Quote%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Add a Line Item to a Quote functionality, ensure the Salesforce integration user has the necessary object and field-level permissions.

Specifically, confirm the following permissions are granted:

- **Object Access**: `Read` and `Create` access to the **QuoteLineItem**, **Quote**, and **PricebookEntry** objects.
- **Field Access**: `Read` and `Edit` access to fields such as **QuoteId**, **PricebookEntryId**, **Quantity**, **UnitPrice**, and any custom fields your organization uses for quote line items.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Retrieve Opportunity and Quote Information:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+StageName,+%28SELECT+Id,+Name+FROM+Quotes+WHERE+Name=%27{{quote_name}}%27%29+FROM+Opportunity+WHERE+Name+LIKE+%27%25{{opportunity_name}}%25%27+AND+%28StageName=%27Qualification%27+OR+StageName=%27Qualified%27%29' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `opportunity_name` (string) - The name of the Opportunity you want to search for. This helps filter Opportunities based on their names.
- `quote_name` (string)- The exact name of the Quote you're looking for under the matched Opportunity. This filters the related Quotes.

### **API #2: Retrieve Product and Pricebook Entry Information:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+%28SELECT+Pricebook2Id,+Id+FROM+PricebookEntries+WHERE+Pricebook2.IsActive+=+TRUE%29+FROM+Product2+WHERE+Name+LIKE+%27%25{{product_name}}%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- `product_name` (string) - The name of the Product you want to search for. This is used to find matching products and their active price book entries in Salesforce.

### **API #3: Create Quote Line Item:**

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/QuoteLineItem' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "QuoteId": "<quote_id>",  
  "PricebookEntryId": "<PricebookEntryId>",  
  "Product2Id": "<Product2Id>",
  "Quantity": "<quantity>",
  "UnitPrice": "<unit_price>"
}'
```

**Request Body Fields:**

- `quote_id` (string) - The ID of the Quote this line item belongs to, linking the product to the specific quote.
- `Pricebook2Id` (string) - The ID of the Price Book used for this Quote. This determines which set of products and prices will be available.
- `Product2Id` (string) - The ID of the Product used for this Quote. This determines which set of products and prices will be available.
- `quantity` (string) - The number of units quoted for this product.
- `unit_price` (string) - The price per unit of the product.