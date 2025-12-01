---
availability: IDEA
description: A plugin that allows sales representatives and managers to easily add
  product modules to an Opportunity through the Moveworks AI Assistant. This automation
  streamlines deal configuration, improves product consistency, eliminates manual
  data entry errors, and ensures opportunities are accurately tagged with the correct
  products.
domain:
- Sales
- Productivity
fidelity: GUIDE
name: Add Products to an Opportunity
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+product+SKUs+to+an+opportunity%2C+we+just+signed+with+a+new+customer%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Authenticating+user+and+checking+permissions+for+Salesforce+Opportunity+and+Pricebook+access...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+has+read%2Fwrite+access+to+Opportunities+and+OpportunityLineItems%2C+and+visibility+to+standard+Pricebooks.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ETo+add+products%2C+I+need+to+know+which+opportunity+you%27re+referring+to.+Could+you+please+provide+one+of+the+following%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EOpportunity+Name%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EAssociated+Account%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EOwnership+%28e.g.%2C+%27my+opportunities%27%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ELifecycle+Stage%2FStatus%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+opportunities+for+ACME+account%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Salesforce+for+opportunities+associated+with+the+%3Cb%3EACME%3C%2Fb%3E+account...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+a+few+opportunities+associated+with+%3Cb%3EACME+Corp%3C%2Fb%3E.+Please+select+the+correct+one+by+name+or+number%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E+%28Amount%3A+%24120%2C000%2C+Stage%3A+Prospecting%2C+Close+Date%3A+2024-09-30%29%3C%2Fli%3E%3Cli%3E%3Cb%3EACME+Corp+-+Expansion+Project%3C%2Fb%3E+%28Amount%3A+%2450%2C000%2C+Stage%3A+Qualification%2C+Close+Date%3A+2024-12-15%29%3C%2Fli%3E%3Cli%3E%3Cb%3EACME+Corp+-+Renewals+FY25%3C%2Fb%3E+%28Amount%3A+%2480%2C000%2C+Stage%3A+Closed+Won%2C+Close+Date%3A+2024-06-30%29%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%2C+%27ACME+Corp+-+New+Business+Q3%27.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Confirming+selection%3A+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27ve+selected+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E.+Now%2C+please+provide+the+product+names+or+SKUs+you%27d+like+to+add.+You+can+list+multiple%2C+separated+by+commas.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22MWCP-P%2C+MWPM-S%2C+ADD-PR-U%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Salesforce+for+products+matching+%3Cb%3EMWCP-P%3C%2Fb%3E%2C+%3Cb%3EMWPM-S%3C%2Fb%3E%2C+and+%3Cb%3EADD-PR-U%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22All+products+found+in+the+standard+Pricebook+for+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E.+Defaulting+quantity+to+1+for+each.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+are+about+to+add+the+following+products+to+the+opportunity+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EMWCP-P%3C%2Fb%3E+%28Quantity%3A+1%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMWPM-S%3C%2Fb%3E+%28Quantity%3A+1%29%3C%2Fli%3E%3Cli%3E%3Cb%3EADD-PR-U%3C%2Fb%3E+%28Quantity%3A+1%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Submit%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Adding+products+to+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E+in+Salesforce...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22OpportunityLineItems+created+for+MWCP-P%2C+MWPM-S%2C+and+ADD-PR-U.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EProducts+successfully+added+to+the+Opportunity+in+Salesforce.%3C%2Fp%3E%3Cp%3E%3C%2Fp%3E%3Cp%3EOpportunity%3A+%3Cstrong%3EACME+Corp+-+New+Business+Q3%3C%2Fstrong%3E%3C%2Fp%3E%3Cp%3EStage%3A%3Cstrong%3E+Prospecting%3C%2Fstrong%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMWCP-P+%28Qty+1%29%3C%2Fstrong%3E+%E2%86%92+Added%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMWPM-S+%28Qty+1%29%3C%2Fstrong%3E+%E2%86%92+Added%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EADD-PR-U+%28Qty+1%29%3C%2Fstrong%3E+%E2%86%92+Added%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22ACME+Corp+-+New+Business+Q3%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce

---
The Salesforce **“Add Products to an Opportunity”** plugin empowers sales teams to seamlessly configure deals by attaching the right product modules to any Opportunity directly through the Moveworks AI Assistant. By simplifying the selection and addition of products—including pricing, product mapping, and quantity inputs—it eliminates manual navigation in Salesforce and reduces errors. This ensures faster deal setup, improved accuracy, and a more efficient sales workflow.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+product+SKUs+to+an+opportunity%2C+we+just+signed+with+a+new+customer%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Authenticating+user+and+checking+permissions+for+Salesforce+Opportunity+and+Pricebook+access...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+has+read%2Fwrite+access+to+Opportunities+and+OpportunityLineItems%2C+and+visibility+to+standard+Pricebooks.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ETo+add+products%2C+I+need+to+know+which+opportunity+you%27re+referring+to.+Could+you+please+provide+one+of+the+following%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EOpportunity+Name%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EAssociated+Account%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EOwnership+%28e.g.%2C+%27my+opportunities%27%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ELifecycle+Stage%2FStatus%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+opportunities+for+ACME+account%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Salesforce+for+opportunities+associated+with+the+%3Cb%3EACME%3C%2Fb%3E+account...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+a+few+opportunities+associated+with+%3Cb%3EACME+Corp%3C%2Fb%3E.+Please+select+the+correct+one+by+name+or+number%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E+%28Amount%3A+%24120%2C000%2C+Stage%3A+Prospecting%2C+Close+Date%3A+2024-09-30%29%3C%2Fli%3E%3Cli%3E%3Cb%3EACME+Corp+-+Expansion+Project%3C%2Fb%3E+%28Amount%3A+%2450%2C000%2C+Stage%3A+Qualification%2C+Close+Date%3A+2024-12-15%29%3C%2Fli%3E%3Cli%3E%3Cb%3EACME+Corp+-+Renewals+FY25%3C%2Fb%3E+%28Amount%3A+%2480%2C000%2C+Stage%3A+Closed+Won%2C+Close+Date%3A+2024-06-30%29%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%2C+%27ACME+Corp+-+New+Business+Q3%27.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Confirming+selection%3A+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27ve+selected+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E.+Now%2C+please+provide+the+product+names+or+SKUs+you%27d+like+to+add.+You+can+list+multiple%2C+separated+by+commas.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22MWCP-P%2C+MWPM-S%2C+ADD-PR-U%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+Salesforce+for+products+matching+%3Cb%3EMWCP-P%3C%2Fb%3E%2C+%3Cb%3EMWPM-S%3C%2Fb%3E%2C+and+%3Cb%3EADD-PR-U%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22All+products+found+in+the+standard+Pricebook+for+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E.+Defaulting+quantity+to+1+for+each.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+are+about+to+add+the+following+products+to+the+opportunity+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EMWCP-P%3C%2Fb%3E+%28Quantity%3A+1%29%3C%2Fli%3E%3Cli%3E%3Cb%3EMWPM-S%3C%2Fb%3E+%28Quantity%3A+1%29%3C%2Fli%3E%3Cli%3E%3Cb%3EADD-PR-U%3C%2Fb%3E+%28Quantity%3A+1%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Submit%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Adding+products+to+%3Cb%3EACME+Corp+-+New+Business+Q3%3C%2Fb%3E+in+Salesforce...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22OpportunityLineItems+created+for+MWCP-P%2C+MWPM-S%2C+and+ADD-PR-U.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EProducts+successfully+added+to+the+Opportunity+in+Salesforce.%3C%2Fp%3E%3Cp%3E%3C%2Fp%3E%3Cp%3EOpportunity%3A+%3Cstrong%3EACME+Corp+-+New+Business+Q3%3C%2Fstrong%3E%3C%2Fp%3E%3Cp%3EStage%3A%3Cstrong%3E+Prospecting%3C%2Fstrong%3E%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMWCP-P+%28Qty+1%29%3C%2Fstrong%3E+%E2%86%92+Added%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EMWPM-S+%28Qty+1%29%3C%2Fstrong%3E+%E2%86%92+Added%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EADD-PR-U+%28Qty+1%29%3C%2Fstrong%3E+%E2%86%92+Added%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22ACME+Corp+-+New+Business+Q3%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Salesforce** before installing this plugin. Please follow the [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce?hist=home%2Cbrws#how-to-implement) guide to configure the connection.

**User Consent Authentication Benefits:**

With OAuth 2.0 User Consent Authentication enabled, users can securely access their own Salesforce data—such as opportunities, OpportunityLineItem, and related records—through Moveworks without sharing credentials. By authenticating once through Salesforce’s login page, each user allows the bot to securely access and retrieve opportunity details on their behalf.

This ensures data privacy, role-based access control, and a seamless self-service experience where users only see the data they are authorized to view.

**Required Salesforce Permissions:**

To enable access to the Salesforce API endpoints used in this plugin, ensure your Salesforce connected app has the correct OAuth scope configured under:

- **Setup → App Manager → Connected Apps → [Your Connected App]**

**Required OAuth Scope:**

- **Access and manage your data (api)**

This scope is essential for retrieving Opportunities, Products, OpportunityLineItem, and related records via Salesforce REST APIs.

**Required Object Permissions:**

Ensure the integration user (via profile or permission sets) has **read and write access** to:

- Opportunity
- Products
- OpportunityLineItem

These permissions are required to retrieve opportunity details and add products to an opportunity.

**Your Instance Configuration:**

All Salesforce API endpoints in this plugin use **`'YOUR_INSTANCE`** as a placeholder.

Follow the steps below to update it correctly after installation:

1. Go to your **Salesforce Setup**.
2. In the **Quick Find** box, search for **My Domain** and select it.
3. Locate your **Salesforce org’s My Domain URL** (e.g., **`yourcompany.my.salesforce.com`**).
4. Replace **`'YOUR_INSTANCE'`** with your actual My Domain URL in all **action definitions** within the connector.
5. Ensure all API requests use **HTTPS** and leverage **OAuth 2.0 authentication**.
6. Save your configuration to ensure that all API requests are routed correctly and securely to your Salesforce instance

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Opportunity Details**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Name%2C+StageName%2C+Amount%2C+CloseDate%2C+LastActivityDate+FROM+Opportunity+WHERE+{{FILTER_QUERY}}+ORDER+BY+LastModifiedDate+DESC+LIMIT+50' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameter:**

- **`$filter_query` : (string)** – Filter Opportunities by specific property values.
    - You can filter by **opportunity name**, **account name**, **stage name**, or **owner email**.
        - Example filters:
            - **`Name LIKE '%{{opportunity_name}}%'`** → Returns the opportunity with the matching or similar name.
            - **`Account.Name LIKE '%{{account_name}}%'`**→ Returns opportunities where the related account name contains “zoro”.
            - **`StageName LIKE '%{{stage_name}}%'`** → Returns opportunities in the “Closed Won” stage.
            - **`'{{owner_email}}'`** → Returns opportunities owned by the specific user.
- **`limit`**: Maximum number of opportunities to return.
- **`order_by`**: Defines the field used to sort results (e.g., **`LastModifiedDate DESC`**).
- **`fields`**: Comma-separated list of Opportunity fields to return: **`Id, Name, Amount, StageName, Owner.Name, Owner.Email, AccountId, Account.Name, CreatedDate`**.

### **API #2: Get Product Details**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Product2Id%2C+Product2.Name%2C+UnitPrice+FROM+PricebookEntry+WHERE+Product2.Name+LIKE+%27%25{{product_name}}%25%27+AND+Pricebook2.IsStandard+%3D+TRUE' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
```

**Query Parameter:**

`product_name` : (string) - Used to retrieve the product name using the partial search.

### **API #3: Add Products To An Opportunity**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/composite' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '
{
    "allOrNone": false,
    "compositeRequest": [
      {
        "method": "POST",
        "url": "/services/data/v64.0/sobjects/OpportunityLineItem",
        "referenceId": "product1",
        "body": {
          "OpportunityId": "{{opportunity_id}}",
          "PricebookEntryId": "{{price_book_entry_id}}",
          "Quantity": {{quantity}},
          "UnitPrice": {{unit_price}}

        }
      }
    ]
  }'
```

**Requested Body Parameter:**

- **`OpportunityId`** – The ID of the Opportunity record where the product will be added (parent container).
- **`PricebookEntryId`** – The Pricebook Entry that links the selected Product to the Opportunity’s Price Book.
- **`Quantity`** – Number of product units to be added to the Opportunity.
    - Example: `2` (adds two units of the product).
- **`UnitPrice`** – The price per unit for the product line item.
    - Example: `1200` (unit price for the added product).

**Notes:**

- **`allOrNone: false`** ensures if one subrequest fails, others still succeed.
- Each request uses a **referenceId** to correlate responses.