---
availability: IDEA
description: A plugin that recommends the next best actions to help sales representatives
  move an opportunity forward through the Moveworks AI Assistant. It analyzes opportunity
  details, stage, recent activities, and related notes to suggest actionable next
  steps, such as scheduling meetings, following up with key contacts, or updating
  opportunity information. This helps sales teams stay proactive, shorten deal cycles,
  and improve win rates.
domain:
- Sales
- Productivity
fidelity: GUIDE
name: Suggest Next Best Actions for an Opportunity
difficulty_level: INTERMEDIATE
time_in_minutes: 25
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+the+next+steps+for+an+opportunity%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ETo+help+me+find+the+right+opportunity%2C+could+you+please+provide+some+details%3F+You+can+specify+the%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunity+Name%3C%2Fb%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunities+you+own%3C%2Fb%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EAssociated+Account+Name%3C%2Fb%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EStage%2FStatus%3C%2Fb%3E+%28e.g.%2C+%27negotiation-stage+deal%27%29.%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22opportunities+for+ACME+account%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3ESalesforce%3C%2Fb%3E+for+opportunities+associated+with+%27ACME%27...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+multiple+opportunities+for+ACME.+Please+select+one+to+get+next+steps.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+opportunities+related+to+%27ACME%27.+Which+one+are+you+interested+in%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAcme+Corp+Renewal%3C%2Fb%3E+%28%24120K%2C+Stage%3A+Proposal+Review%29+-+Owned+by+Jane+Doe%3C%2Fli%3E%3Cli%3E%3Cb%3EAcme+Technologies+New+Project%3C%2Fb%3E+%28%2450K%2C+Stage%3A+Qualification%29+-+Owned+by+John+Smith%3C%2Fli%3E%3Cli%3E%3Cb%3EAcme+Solutions+Upgrade%3C%2Fb%3E+%28%2475K%2C+Stage%3A+Negotiation%29+-+Owned+by+Jane+Doe%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EPlease+specify+the+full+name+or+amount.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22the+Acme+Corp+Renewal%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+%27Acme+Corp+Renewal%27+from+%3Cb%3ESalesforce%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Analyzing+opportunity+details%2C+stage%2C+recent+activities%2C+and+notes+to+suggest+next+best+actions.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+next+steps+for+%3Cb%3EAcme+Corp+Renewal%3C%2Fb%3E+%28%24120K%2C+Stage%3A+Proposal+Review%29.+This+opportunity+has+been+in+%27Proposal+Review%27+for+%3Cb%3E15+days%3C%2Fb%3E.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EFollow-up+with+Jane+Smith+%28Decision+Maker%29%3A%3C%2Fb%3E+Last+interaction+%3Cb%3E10+days+ago%3C%2Fb%3E+%28%3Ci%3Eemail+about+revised+pricing%3C%2Fi%3E%29.+Schedule+a+call+to+confirm+receipt+and+address+any+questions+about+the+%3Cb%3EEnterprise+Tier%3C%2Fb%3E+proposal.%3C%2Fli%3E%3Cli%3E%3Cb%3EUpdate+Proposal+Document%3A%3C%2Fb%3E+The+current+proposal+%28v1.2%29+expires+next+week.+Create+a+new+version+incorporating+the+%3Cb%3E15%25+discount%3C%2Fb%3E+discussed+internally%2C+and+upload+it.%3C%2Fli%3E%3Cli%3E%3Cb%3ELog+Recent+Meeting+Notes%3A%3C%2Fb%3E+There+is+an+unlogged+meeting+from+%3Cb%3EJuly+15th+with+the+procurement+team%3C%2Fb%3E.+Summarize+key+discussion+points+and+agreed-upon+next+steps+regarding+implementation+timelines.%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Ci%3ERecommendation%3A%3C%2Fi%3E+Consider+moving+this+opportunity+to+the+%27Negotiation%27+stage+to+reflect+active+discussions+and+improve+forecast+accuracy.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Acme+Corp+Renewal%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce

---
## **Introduction**

The **“Suggest Next Best Actions for an Opportunity”** plugin enables sales users to instantly get actionable recommendations for any Salesforce opportunity — without manually reviewing multiple records. Through the Moveworks AI Assistant, users can select an opportunity and immediately receive a clear, consolidated summary of its status along with intelligent next-step suggestions to help drive it forward.

This guide walks you through how to configure and customize the plugin within Agent Studio so you can deliver these insights in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+are+the+next+steps+for+an+opportunity%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ETo+help+me+find+the+right+opportunity%2C+could+you+please+provide+some+details%3F+You+can+specify+the%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunity+Name%3C%2Fb%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EOpportunities+you+own%3C%2Fb%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EAssociated+Account+Name%3C%2Fb%3E%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cb%3EStage%2FStatus%3C%2Fb%3E+%28e.g.%2C+%27negotiation-stage+deal%27%29.%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22opportunities+for+ACME+account%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3ESalesforce%3C%2Fb%3E+for+opportunities+associated+with+%27ACME%27...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+multiple+opportunities+for+ACME.+Please+select+one+to+get+next+steps.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+opportunities+related+to+%27ACME%27.+Which+one+are+you+interested+in%3F%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAcme+Corp+Renewal%3C%2Fb%3E+%28%24120K%2C+Stage%3A+Proposal+Review%29+-+Owned+by+Jane+Doe%3C%2Fli%3E%3Cli%3E%3Cb%3EAcme+Technologies+New+Project%3C%2Fb%3E+%28%2450K%2C+Stage%3A+Qualification%29+-+Owned+by+John+Smith%3C%2Fli%3E%3Cli%3E%3Cb%3EAcme+Solutions+Upgrade%3C%2Fb%3E+%28%2475K%2C+Stage%3A+Negotiation%29+-+Owned+by+Jane+Doe%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EPlease+specify+the+full+name+or+amount.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22the+Acme+Corp+Renewal%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+details+for+%27Acme+Corp+Renewal%27+from+%3Cb%3ESalesforce%3C%2Fb%3E...%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Analyzing+opportunity+details%2C+stage%2C+recent+activities%2C+and+notes+to+suggest+next+best+actions.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+next+steps+for+%3Cb%3EAcme+Corp+Renewal%3C%2Fb%3E+%28%24120K%2C+Stage%3A+Proposal+Review%29.+This+opportunity+has+been+in+%27Proposal+Review%27+for+%3Cb%3E15+days%3C%2Fb%3E.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EFollow-up+with+Jane+Smith+%28Decision+Maker%29%3A%3C%2Fb%3E+Last+interaction+%3Cb%3E10+days+ago%3C%2Fb%3E+%28%3Ci%3Eemail+about+revised+pricing%3C%2Fi%3E%29.+Schedule+a+call+to+confirm+receipt+and+address+any+questions+about+the+%3Cb%3EEnterprise+Tier%3C%2Fb%3E+proposal.%3C%2Fli%3E%3Cli%3E%3Cb%3EUpdate+Proposal+Document%3A%3C%2Fb%3E+The+current+proposal+%28v1.2%29+expires+next+week.+Create+a+new+version+incorporating+the+%3Cb%3E15%25+discount%3C%2Fb%3E+discussed+internally%2C+and+upload+it.%3C%2Fli%3E%3Cli%3E%3Cb%3ELog+Recent+Meeting+Notes%3A%3C%2Fb%3E+There+is+an+unlogged+meeting+from+%3Cb%3EJuly+15th+with+the+procurement+team%3C%2Fb%3E.+Summarize+key+discussion+points+and+agreed-upon+next+steps+regarding+implementation+timelines.%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Ci%3ERecommendation%3A%3C%2Fi%3E+Consider+moving+this+opportunity+to+the+%27Negotiation%27+stage+to+reflect+active+discussions+and+improve+forecast+accuracy.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Acme+Corp+Renewal%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up the **Salesforce connector** before installing this plugin. Please follow the [**Salesforce Connector**](https://marketplace.moveworks.com/connectors/salesforce#how-to-implement--give) guide to configure the connection.

**User Consent Authentication Benefits:**

With OAuth 2.0 User Consent Authentication enabled, users can securely access their own Salesforce data—such as opportunities, tasks, activities, notes, and related records—through Moveworks without sharing credentials. By authenticating once through Salesforce’s login page, each user allows the bot to securely access and retrieve opportunity details on their behalf. 

This ensures data privacy, role-based access control, and a seamless self-service experience where users only see the data they are authorized to view.

**Required Salesforce Permissions:**

To enable access to the Salesforce API endpoints used in this plugin, ensure your Salesforce connected app has the correct OAuth scope configured under:

- **Setup → App Manager → Connected Apps → [Your Connected App]**

**Required OAuth Scope:**

- **Access and manage your data (api)**

This scope is essential for retrieving Opportunities, Opportunity History, Tasks, Events, Notes, and related records via Salesforce REST APIs.

**Required Object Permissions:**

Ensure the integration user (via profile or permission sets) has **read access** to:

- Opportunity
- Opportunity History
- Tasks
- Events
- Notes
- Opportunity Contact Roles

These permissions are required to retrieve opportunity details and generate accurate Next Best Action recommendations.

**Your Instance Configuration:**

All Salesforce API endpoints in this plugin use `{{YOUR_INSTANCE_DOMAIN}}` as a placeholder.

Follow the steps below to update it correctly after installation:

1. Go to your **Salesforce Setup**.
2. In the **Quick Find** box, search for **My Domain** and select it.
3. Locate your **Salesforce org’s My Domain URL** (e.g., `yourcompany.my.salesforce.com`).
4. Replace `{{YOUR_INSTANCE_DOMAIN}}` with your actual My Domain URL in all **action definitions** within the connector.
5. Ensure all API requests use **HTTPS** and leverage **OAuth 2.0 authentication**.
6. Save your configuration to ensure that all API requests are routed correctly and securely to your Salesforce instance

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for details on installing the plugin in Agent Studio.

### **API #1: Search Opportunities by Criteria**

```bash
curl --location 'https://{{YOUR_INSTANCE_DOMAIN}}/services/data/v62.0/query?q=SELECT Id, Name, Amount, StageName, Owner.Name, Owner.Email, AccountId, Account.Name, CreatedDate FROM Opportunity WHERE {{filter_query}} ORDER BY LastModifiedDate DESC LIMIT 50' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters:**

- **`filter_query`**: A dynamic **SOQL WHERE clause** used to search opportunities based on different criteria.
- **`opportunity_name`**: Filters opportunities by partial or full opportunity name (e.g., SkyBridge).
- **`account_name`**: Filters opportunities by account name (e.g., Logistics)
- **`stage_name`**: Filters opportunities by stage (e.g., Prospecting, Closed Won).
- **`owner_email`**: Retrieves opportunities based on the owner’s email address.
- **`limit`**: Maximum number of opportunities to return.
- **`order_by`**: Defines the field used to sort results (e.g., `LastModifiedDate DESC`).
- **`fields`**:  Comma-separated list of Opportunity fields to return: `Id, Name, Amount, StageName, Owner.Name, Owner.Email, AccountId, Account.Name, CreatedDate`.

**RSQL Filtering Notes:**

- Use **SOQL syntax** in the `filter_query` parameter to filter opportunities based on different criteria.
- Common examples:
    - **Opportunity Name:** `Name LIKE '%{{opportunity_name}}%'`
    - **Account Name:** `Account.Name LIKE '%{{account_name}}%'`
    - **Stage Name:** `StageName LIKE '%{{stage_name}}%'`
    - **Owner Email:** `Owner.Email = '{{owner_email}}'`
- Filters can be **combined** using:
    - `AND` → both conditions must be true
    - `OR` → either condition can be true

**Example of a Compound RSQL Filter:**

```bash
StageName LIKE '%{{stage_name}}%'
```

**Example Response:**

```bash
{
  "totalCount": 2,
  "results": [
    {
      "id": "{{opportunity_id}}",
      "general": {
        "name": "{{opportunity_name}}",
        "amount": "{{amount}}",
        "stageName": "{{stage_name}}",
        "createdDate": "{{created_date}}"
      },
      "owner": {
        "name": "{{owner_name}}",
        "email": "{{owner_email}}"
      },
      "account": {
        "id": "{{account_id}}",
        "name": "{{account_name}}"
      }
    }
  ]
}
```

**Notes:**

- This API endpoint supports **flexible Opportunity searches**, allowing filtering by **opportunity name, account name, stage, and opportunity owner email**.

### **API #2: Get Opportunity Details by Opportunity ID (Batch)**

```bash
curl --location 'https://{{YOUR_INSTANCE_DOMAIN}}/services/data/vXX.0/composite' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--data-raw '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "url": "/services/data/v62.0/sobjects/Opportunity/{{opportunity_id}}",
      "referenceId": "Opportunity"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+CreatedDate,StageName,Amount,Probability,ExpectedRevenue+FROM+OpportunityHistory+WHERE+OpportunityId=%27{{opportunity_id}}%27+ORDER+BY+CreatedDate+DESC",
      "referenceId": "OpportunityHistory"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+Id,Subject,Status,Priority,Owner.Name,Owner.Email,Description,CreatedDate,LastModifiedDate+FROM+Task+WHERE+WhatId=%27{{opportunity_id}}%27+ORDER+BY+CreatedDate+DESC+LIMIT+50",
      "referenceId": "Tasks"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+Id,Subject,StartDateTime,EndDateTime,Owner.Name,Description,Location,CreatedDate,LastModifiedDate+FROM+Event+WHERE+WhatId=%27{{opportunity_id}}%27+ORDER+BY+StartDateTime+DESC+LIMIT+50",
      "referenceId": "Events"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+Id,Title,Body,CreatedDate,CreatedBy.Name+FROM+Note+WHERE+ParentId=%27{{opportunity_id}}%27+ORDER+BY+CreatedDate+DESC",
      "referenceId": "Notes"
    },
    {
      "method": "GET",
      "url": "/services/data/v62.0/query?q=SELECT+ContactId,Contact.Name,Contact.Email,Role,IsPrimary+FROM+OpportunityContactRole+WHERE+OpportunityId=%27{{opportunity_id}}%27",
      "referenceId": "ContactRoles"
    }
  ]
}'
```

**Query Parameters:**

- **`opportunity_id`**: The Salesforce Opportunity ID for which details are retrieved.
- **`LIMIT`**: Maximum number of records returned

**Batch Components Returned:**

- **`Opportunity`**: Core Opportunity details (Id, Name, Amount, StageName, Owner, Account, CreatedDate).
- **`OpportunityHistory`**: Historical changes to the Opportunity (CreatedDate, StageName, Amount, Probability, ExpectedRevenue).
- **`Tasks`**: Associated tasks with the Opportunity (Id, Subject, Status, Priority, Owner, Description, CreatedDate, LastModifiedDate).
- **`Events`**: Associated events with the Opportunity (Id, Subject, StartDateTime, EndDateTime, Owner, Description, Location, CreatedDate, LastModifiedDate).
- **`Notes`**: Notes linked to the Opportunity (Id, Title, Body, CreatedDate, CreatedBy).
- **`ContactRoles`**: Contacts linked to the Opportunity (ContactId, Contact Name, Contact Email, Role, IsPrimary).

**Notes:**

- `allOrNone: false` ensures if one subrequest fails, others still succeed.
- Each request uses a **referenceId** to correlate responses.