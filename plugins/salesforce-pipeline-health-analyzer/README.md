---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
description: A plugin that retrieves opportunity data to evaluate the health, distribution,
  and risk level of the sales pipeline. This automation helps Sales Leaders, Sales
  Managers, and RevOps understand pipeline coverage, stage progression, aging, deal
  risk factors, and overall likelihood of hitting targets for a given period.
domain:
- Sales
- Productivity
fidelity: GUIDE
name: Pipeline Health Analyzer
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Analyze+my+sales+pipeline.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that%21+What+period+would+you+like+to+analyze+your+sales+pipeline+for%3F+For+example%2C+%27current+quarter%27%2C+%27next+fiscal+year%27%2C+or+%27Q4+2024%27.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+current+quarter%27s+pipeline.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EAlright%2C+I%27m+fetching+the+sales+pipeline+data+for+the+%3Cb%3Ecurrent+quarter%3C%2Fb%3E+from+Salesforce.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EQuerying+Salesforce+for+all+open+opportunities+scheduled+to+close+in+the+current+fiscal+quarter.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3EAnalyzing+the+retrieved+opportunities+to+calculate+pipeline+health+metrics%2C+stage+distribution%2C+and+potential+risks.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22opportunities+%3D+%7B%7Bactions.action_1.output.records%7D%7D%5Cn%5Cnpipeline_value+%3D+sum%28opp%5B%27Amount%27%5D+for+opp+in+opportunities%29%5Cn%5Cnstage_distribution+%3D+%7B%7D%5Cnfor+opp+in+opportunities%3A%5Cn++stage+%3D+opp%5B%27StageName%27%5D%5Cn++stage_distribution%5Bstage%5D+%3D+stage_distribution.get%28stage%2C+0%29+%2B+opp%5B%27Amount%27%5D%5Cn%5Cn%5Cnimport+datetime%5Cnfrom+collections+import+defaultdict%5Cn%5Cncurrent_date+%3D+datetime.date.today%28%29%5Cn%5Cnage_in_stage+%3D+defaultdict%28lambda%3A+%7B%27total_days%27%3A+0%2C+%27count%27%3A+0%7D%29%5Cn%5Cnfor+opp+in+opportunities%3A%5Cn++++created_date+%3D+datetime.datetime.strptime%28opp%5B%27CreatedDate%27%5D.split%28%27T%27%29%5B0%5D%2C+%27%25Y-%25m-%25d%27%29.date%28%29%5Cn++++days_in_pipeline+%3D+%28current_date+-+created_date%29.days%5Cn++++stage+%3D+opp%5B%27StageName%27%5D%5Cn++++age_in_stage%5Bstage%5D%5B%27total_days%27%5D+%2B%3D+days_in_pipeline%5Cn++++age_in_stage%5Bstage%5D%5B%27count%27%5D+%2B%3D+1%5Cn%5Cn%5Cnaverage_age_by_stage+%3D+%7Bstage%3A+round%28data%5B%27total_days%27%5D+%2F+data%5B%27count%27%5D%29+for+stage%2C+data+in+age_in_stage.items%28%29+if+data%5B%27count%27%5D+%3E+0%7D%5Cn%5Cn%5Cnprint%28%7B%5Cn++++%5C%22pipeline_value%5C%22%3A+pipeline_value%2C%5Cn++++%5C%22num_opportunities%5C%22%3A+len%28opportunities%29%2C%5Cn++++%5C%22stage_distribution%5C%22%3A+stage_distribution%2C%5Cn++++%5C%22average_age_by_stage%5C%22%3A+average_age_by_stage%5Cn%7D%29%22%2C%22caption%22%3A%22action_2%3A+Analyze+Pipeline+Metrics%22%2C%22connectorName%22%3A%22code-interpreter%22%2C%22title%22%3A%22Python+Script%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+an+overview+of+your+sales+pipeline+for+the+%3Cb%3Ecurrent+quarter%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETotal+Pipeline+Value%3A%3C%2Fb%3E+%2415%2C500%2C000%3C%2Fli%3E%3Cli%3E%3Cb%3ENumber+of+Opportunities%3A%3C%2Fb%3E+75%3C%2Fli%3E%3C%2Ful%3E%3Ch3%3EDistribution+by+Stage%3A%3C%2Fh3%3E%3Cul%3E%3Cli%3E%3Cb%3EQualification%3A%3C%2Fb%3E+%243%2C200%2C000+%2820.6%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3EDiscovery%3A%3C%2Fb%3E+%244%2C500%2C000+%2829.0%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3EProposal%3A%3C%2Fb%3E+%245%2C000%2C000+%2832.3%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3ENegotiation%3A%3C%2Fb%3E+%242%2C800%2C000+%2818.1%25%29%3C%2Fli%3E%3C%2Ful%3E%3Ch3%3EAverage+Days+in+Pipeline+%28by+Stage%29%3A%3C%2Fh3%3E%3Cul%3E%3Cli%3E%3Cb%3EQualification%3A%3C%2Fb%3E+15+days%3C%2Fli%3E%3Cli%3E%3Cb%3EDiscovery%3A%3C%2Fb%3E+30+days%3C%2Fli%3E%3Cli%3E%3Cb%3EProposal%3A%3C%2Fb%3E+45+days%3C%2Fli%3E%3Cli%3E%3Cb%3ENegotiation%3A%3C%2Fb%3E+60+days%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThis+provides+a+snapshot+of+your+pipeline+health+and+where+opportunities+are+currently+concentrated.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Q1+2024+Open+Opportunities%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce

---
## Introduction

The **"Pipeline Health Analyzer"** plugin enables Sales Leaders, Sales Managers, and RevOps teams to quickly assess the health and distribution of their sales pipeline directly within the **Moveworks AI Assistant**. It provides actionable insights into opportunity stage progression, aging deals, risk factors, and overall likelihood of hitting targets, helping teams prioritize efforts and make informed decisions.

This guide walks you through how to configure and customize the plugin within Agent Studio so you can deliver these insights in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Analyze+my+sales+pipeline.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that%21+What+period+would+you+like+to+analyze+your+sales+pipeline+for%3F+For+example%2C+%27current+quarter%27%2C+%27next+fiscal+year%27%2C+or+%27Q4+2024%27.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+current+quarter%27s+pipeline.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EAlright%2C+I%27m+fetching+the+sales+pipeline+data+for+the+%3Cb%3Ecurrent+quarter%3C%2Fb%3E+from+Salesforce.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EQuerying+Salesforce+for+all+open+opportunities+scheduled+to+close+in+the+current+fiscal+quarter.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3EAnalyzing+the+retrieved+opportunities+to+calculate+pipeline+health+metrics%2C+stage+distribution%2C+and+potential+risks.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22opportunities+%3D+%7B%7Bactions.action_1.output.records%7D%7D%5Cn%5Cnpipeline_value+%3D+sum%28opp%5B%27Amount%27%5D+for+opp+in+opportunities%29%5Cn%5Cnstage_distribution+%3D+%7B%7D%5Cnfor+opp+in+opportunities%3A%5Cn++stage+%3D+opp%5B%27StageName%27%5D%5Cn++stage_distribution%5Bstage%5D+%3D+stage_distribution.get%28stage%2C+0%29+%2B+opp%5B%27Amount%27%5D%5Cn%5Cn%5Cnimport+datetime%5Cnfrom+collections+import+defaultdict%5Cn%5Cncurrent_date+%3D+datetime.date.today%28%29%5Cn%5Cnage_in_stage+%3D+defaultdict%28lambda%3A+%7B%27total_days%27%3A+0%2C+%27count%27%3A+0%7D%29%5Cn%5Cnfor+opp+in+opportunities%3A%5Cn++++created_date+%3D+datetime.datetime.strptime%28opp%5B%27CreatedDate%27%5D.split%28%27T%27%29%5B0%5D%2C+%27%25Y-%25m-%25d%27%29.date%28%29%5Cn++++days_in_pipeline+%3D+%28current_date+-+created_date%29.days%5Cn++++stage+%3D+opp%5B%27StageName%27%5D%5Cn++++age_in_stage%5Bstage%5D%5B%27total_days%27%5D+%2B%3D+days_in_pipeline%5Cn++++age_in_stage%5Bstage%5D%5B%27count%27%5D+%2B%3D+1%5Cn%5Cn%5Cnaverage_age_by_stage+%3D+%7Bstage%3A+round%28data%5B%27total_days%27%5D+%2F+data%5B%27count%27%5D%29+for+stage%2C+data+in+age_in_stage.items%28%29+if+data%5B%27count%27%5D+%3E+0%7D%5Cn%5Cn%5Cnprint%28%7B%5Cn++++%5C%22pipeline_value%5C%22%3A+pipeline_value%2C%5Cn++++%5C%22num_opportunities%5C%22%3A+len%28opportunities%29%2C%5Cn++++%5C%22stage_distribution%5C%22%3A+stage_distribution%2C%5Cn++++%5C%22average_age_by_stage%5C%22%3A+average_age_by_stage%5Cn%7D%29%22%2C%22caption%22%3A%22action_2%3A+Analyze+Pipeline+Metrics%22%2C%22connectorName%22%3A%22code-interpreter%22%2C%22title%22%3A%22Python+Script%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+an+overview+of+your+sales+pipeline+for+the+%3Cb%3Ecurrent+quarter%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETotal+Pipeline+Value%3A%3C%2Fb%3E+%2415%2C500%2C000%3C%2Fli%3E%3Cli%3E%3Cb%3ENumber+of+Opportunities%3A%3C%2Fb%3E+75%3C%2Fli%3E%3C%2Ful%3E%3Ch3%3EDistribution+by+Stage%3A%3C%2Fh3%3E%3Cul%3E%3Cli%3E%3Cb%3EQualification%3A%3C%2Fb%3E+%243%2C200%2C000+%2820.6%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3EDiscovery%3A%3C%2Fb%3E+%244%2C500%2C000+%2829.0%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3EProposal%3A%3C%2Fb%3E+%245%2C000%2C000+%2832.3%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3ENegotiation%3A%3C%2Fb%3E+%242%2C800%2C000+%2818.1%25%29%3C%2Fli%3E%3C%2Ful%3E%3Ch3%3EAverage+Days+in+Pipeline+%28by+Stage%29%3A%3C%2Fh3%3E%3Cul%3E%3Cli%3E%3Cb%3EQualification%3A%3C%2Fb%3E+15+days%3C%2Fli%3E%3Cli%3E%3Cb%3EDiscovery%3A%3C%2Fb%3E+30+days%3C%2Fli%3E%3Cli%3E%3Cb%3EProposal%3A%3C%2Fb%3E+45+days%3C%2Fli%3E%3Cli%3E%3Cb%3ENegotiation%3A%3C%2Fb%3E+60+days%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThis+provides+a+snapshot+of+your+pipeline+health+and+where+opportunities+are+currently+concentrated.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22salesforce%22%2C%22citationTitle%22%3A%22Q1+2024+Open+Opportunities%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend using user consent auth (authorization grant type). This plugin was made with APIs using authorization code grant type flow. You'll find the required permissions for User consent auth under the 'Required Salesforce Permissions'.

**User Consent Authentication Benefits:**

With OAuth 2.0 User Consent Authentication enabled, users can securely access their own Salesforce data—such as opportunities, tasks, activities, notes, and related records—through Moveworks without sharing credentials. By authenticating once through Salesforce’s login page, each user allows the bot to securely access and retrieve opportunity details on their behalf.

This ensures data privacy, role-based access control, and a seamless self-service experience where users only see the data they are authorized to view.

**Required Salesforce Permissions:**

To enable access to the Salesforce API endpoints used in this plugin, ensure your Salesforce connected app has the correct OAuth scope configured under:

- **Setup → App Manager → Connected Apps → [Your Connected App]**

**Required OAuth Scope:**

- **Access and manage your data (API)**

This scope is essential for retrieving Opportunities, Opportunity History, Tasks, Events, Notes, and related records via Salesforce REST APIs.

**Required Object Permissions:**

Ensure the integration user (via profile or permission sets) has **read access** to:

- **Opportunity**
- **Opportunity History**
- **Tasks**
- **Events**
- **User**
- **Roles**

These permissions are required to retrieve opportunity details and generate accurate Next Best Action recommendations.

**Customization Process**

**Create Required Custom Fields: Segment, Region** 

Salesforce does not include standard fields for tracking **business segment** or **region**, and while **Opportunity Type** exists by default, it may not contain the values needed for classifying deals as New Business or Expansion.

To ensure accurate filtering, reporting, and classification inside this plugin, you must create (or update) the following fields on the Opportunity object.

### **Steps to Create Custom Fields on Opportunity**

1. **Go to Setup**
    - Click the gear icon and select **Setup**.
2. **Open Object Manager**
    - In Setup, select **Object Manager**.
    - Find and click **Opportunity**.
3. **Access Fields & Relationships**
    - Click **Fields & Relationships** in the left menu.
4. **Create Segment Field**
    - Click **New**.
    - **Field Type:** Picklist
    - **Field Label:** `Segment`
    - **Field Name:** `Segment`
    - **Values:** Add your segment options (e.g., SMB, Mid-Market, Enterprise)
    - Click **Next**, set field-level security to **Visible**, and add to page layouts as needed.
    - Click **Save & New** to create the next field.
5. **Create Region Field**
    - Click **New**.
    - **Field Type:** Picklist
    - **Field Label:** `Region`
    - **Field Name:** `Region`
    - **Values:** Add your region list (e.g., APAC, EMEA, AMER)
    - Click **Next**, set field-level security to **Visible**, and add to page layouts as needed.
    - Click **Save & New** to create the next field.

**Your Instance Configuration:**

All Salesforce API endpoints in this plugin use `{{YOUR_INSTANCE_DOMAIN}}` as a placeholder.

Follow the steps below to update it correctly after installation:

1. Go to your **Salesforce Setup**.
2. In the **Quick Find** box, search for **My Domain** and select it.
3. Locate your **Salesforce org’s My Domain URL** (e.g., **`yourcompany.my.salesforce.com`**).
4. Replace `{{YOUR_INSTANCE_DOMAIN}}` with your actual My Domain URL in all **action definitions** within the connector.
5. Ensure all API requests use **HTTPS** and leverage **OAuth 2.0 authentication**.
6. Save your configuration to ensure that all API requests are routed correctly and securely to your Salesforce instance

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

### **API #1: Search Opportunities by Criteria**

```bash
curl --location 'https://yourInstance.salesforce.com/services/data/v64.0/query/?q=SELECT+FIELDS(ALL)+FROM+Opportunity+WHERE+{{{filter_query}}}+ORDER+BY+CloseDate+DESC+LIMIT+200' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json'
```

**Query Parameters**

- **`filter_query`** — A dynamic **SOQL WHERE filter** built based on the user’s search input.
- **`from_date / to_date`** — Filters opportunities by **CreatedDate** range.
- **`region_name`** — Filter opportunities by partial match for Region .
- **`segment_name`** — Filters opportunities by partial match on Segment.
- **`order_by`** — Sorts results (default: `CloseDate DESC`).
- **`limit`** — Maximum number of records to return (default: `200`).
- **`fields`** — Returns **all fields** from Opportunity using:

**RSQL Filtering Notes**

- Use **SOQL syntax** in the `filter_query` parameter to filter opportunities based on different criteria.
- Common examples:
    - **Created Date Range:**
        
        `CreatedDate >= {{from_date}} AND CreatedDate <= {{to_date}}`
        
    - **Region:**
        
        `Region__c LIKE '%{{region_name}}%'`
        
    - **Segment:**
        
        `Segment__c LIKE '%{{segment_name}}%'`
        
- Filters can be **combined** using:
    - `AND` → both conditions must be true
    - `OR` → either condition may be true

**Example of a Compound Filter Query:**

```bash
CreatedDate >= '{{from_date}}' AND CreatedDate <= '{{to_date}}'
```

**Example Response:**

```bash
{
  "totalSize": 1,
  "done": true,
  "records": [
    {
      "attributes": {
        "type": "Opportunity",
        "url": "/services/data/v64.0/sobjects/Opportunity/{{opportunity_id}}"
      },
      "Id": "{{opportunity_id}}",
      "IsDeleted": false,
      "AccountId": "{{account_id}}",
      "IsPrivate": false,
      "Name": "{{opportunity_name}}",
      "Description": "{{description}}",
      "StageName": "{{stage_name}}",
      "Amount": "{{amount}}",
      "Probability": "{{probability}}",
      "ExpectedRevenue": "{{expected_revenue}}",
      "TotalOpportunityQuantity": "{{total_opportunity_qty}}",
      "CloseDate": "{{close_date}}",
      "Type": "{{opportunity_type}}",
      "NextStep": "{{next_step}}",
      "LeadSource": "{{lead_source}}",
      "IsClosed": "{{is_closed}}",
      "IsWon": "{{is_won}}",
      "ForecastCategory": "{{forecast_category}}",
      "ForecastCategoryName": "{{forecast_category_name}}",
      "CampaignId": "{{campaign_id}}",
      "HasOpportunityLineItem": "{{has_line_item}}",
      "Pricebook2Id": "{{pricebook_id}}",
      "OwnerId": "{{owner_id}}",
      "CreatedDate": "{{created_date}}",
      "CreatedById": "{{created_by_id}}",
      "LastModifiedDate": "{{last_modified_date}}",
      "LastModifiedById": "{{last_modified_by_id}}",
      "SystemModstamp": "{{system_modstamp}}",
      "LastActivityDate": "{{last_activity_date}}",
      "PushCount": "{{push_count}}",
      "LastStageChangeDate": "{{last_stage_change_date}}",
      "FiscalQuarter": "{{fiscal_quarter}}",
      "FiscalYear": "{{fiscal_year}}",
      "Fiscal": "{{fiscal}}",
      "ContactId": "{{contact_id}}",
      "LastViewedDate": "{{last_viewed_date}}",
      "LastReferencedDate": "{{last_referenced_date}}",
      "SyncedQuoteId": "{{synced_quote_id}}",
      "HasOpenActivity": "{{has_open_activity}}",
      "HasOverdueTask": "{{has_overdue_task}}",
      "LastAmountChangedHistoryId": "{{last_amount_changed_history_id}}",
      "LastCloseDateChangedHistoryId": "{{last_close_date_changed_history_id}}",
      "DeliveryInstallationStatus__c": "{{delivery_status}}",
      "TrackingNumber__c": "{{tracking_number}}",
      "OrderNumber__c": "{{order_number}}",
      "CurrentGenerators__c": "{{current_generators}}",
      "MainCompetitors__c": "{{main_competitors}}",
      "Phone__c": "{{phone}}",
      "Email__c": "{{email}}",
      "Proposed_Discount__c": "{{proposed_discount}}",
      "Discount__c": "{{discount}}",
      "MRR__c": "{{mrr}}",
      "ARR__c": "{{arr}}",
      "Approved__c": "{{approved}}",
      "Segment__c": "{{segment}}",
      "Region__c": "{{region}}"
    }
  ]
}

```

**Notes:**

- This endpoint supports **flexible filtering**, allowing queries by
    
    **Created Date, Region, Segment, Stage**, and more.
    
- Returns **all Opportunity fields** using `FIELDS(ALL)`.

### **API #2: Get Opportunities by Team Manager Email**

```bash
curl --location "https://yourInstance.salesforce.com/services/data/v64.0/query/?q=SELECT+Id,+Name,+Email,+UserRoleId,+UserRole.Name+FROM+User+WHERE+Email=%27{{manager_email}}%27&order_by=Name+ASC&limit=50" \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters**

- `manager_email` **(string)** – Email of the team manager.
- `order_by` – Field to sort by
- `limit` – Maximum records

### **API #3: Get Users by Role ID**

```bash
curl --location --request GET "https://yourInstance.salesforce.com/services/data/v64.0/query/?q=SELECT+Id,+Name+FROM+User+WHERE+UserRoleId='{{user_role_id}}'&order_by=Name+ASC&limit=100" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN" \
--header "Content-Type: application/json"
```

**Query Parameters**

- `user_role_id` **(string)** – Salesforce Role ID to filter users by their assigned role.
- `order_by` – Field to sort by
- `limit` – Maximum records

### **API #4: Get Opportunities by Owner IDs**

```bash
curl --location --request GET "https://yourInstance.salesforce.com/services/data/v64.0/query/?q=SELECT+Id,+Name,+StageName,+CloseDate,+Amount,+OwnerId,+Owner.Name+FROM+Opportunity+WHERE+OwnerId+IN+('{{owner_id}}')&order_by=CloseDate+DESC&limit=200" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN" \
--header "Content-Type: application/json
```

**Query Parameters**

- `Owner_id` **(string / array)** – Salesforce User IDs of opportunity owners to filter opportunities.
- `order_by` – Field to sort by
- `limit` – Maximum records

### **API #5: Get Opportunities, Tasks, Events, and Stage History by Opportunity IDs**

```bash
curl --location --request POST 'https://yourInstance.salesforce.com/services/data/v64.0/composite' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "referenceId": "opportunities",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+Name,+StageName,+Amount,+ForecastCategory,+Probability,+Type,+LeadSource,+NextStep,+Description,+Owner.Id,+Owner.Name,+Owner.Email,+Account.Id,+Account.Name,+CloseDate,+CreatedDate,+LastActivityDate,+LastModifiedDate,+IsClosed,+IsWon,+FiscalQuarter,+FiscalYear+FROM+Opportunity+WHERE+Id+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+CreatedDate+DESC"
    },
    {
      "method": "GET",
      "referenceId": "tasks",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+Subject,+ActivityDate,+CreatedDate,+LastModifiedDate,+Owner.Id,+Owner.Name,+WhatId,+Status,+Priority+FROM+Task+WHERE+WhatId+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+ActivityDate+DESC"
    },
    {
      "method": "GET",
      "referenceId": "events",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+Subject,+ActivityDate,+CreatedDate,+LastModifiedDate,+Owner.Id,+Owner.Name,+WhatId,+Location+FROM+Event+WHERE+WhatId+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+ActivityDate+DESC"
    },
    {
      "method": "GET",
      "referenceId": "stageHistory",
      "url": "/services/data/v64.0/query/?q=SELECT+Id,+OpportunityId,+StageName,+CreatedDate,+Probability,+Amount,+ForecastCategory+FROM+OpportunityHistory+WHERE+OpportunityId+IN+({{OPPORTUNITY_IDS}})+ORDER+BY+CreatedDate+ASC"
    }
  ]
}'

```

### **Request Body Parameters**

- `OPPORTUNITY_IDS` – Comma-separated list of Salesforce Opportunity IDs.
- `LIMIT` – Optional: Maximum number of records to return per object query

### **Batch Components Returned**

- **`opportunities`** – Core Opportunity details: Id, Name, Amount, StageName, ForecastCategory, Probability, Type, LeadSource, NextStep, Description, Owner details, Account details, CloseDate, CreatedDate, LastActivityDate, LastModifiedDate, IsClosed, IsWon, FiscalQuarter, FiscalYear.
- **`tasks`** – Tasks linked to opportunities: Id, Subject, ActivityDate, CreatedDate, LastModifiedDate, Owner details, WhatId, Status, Priority.
- **`events`** – Events linked to opportunities: Id, Subject, ActivityDate, CreatedDate, LastModifiedDate, Owner details, WhatId, Location.
- **`stageHistory`** – Opportunity stage history: Id, OpportunityId, StageName, CreatedDate, Probability, Amount, ForecastCategory.

**Notes:**

- `allOrNone: false` ensures that if one subrequest fails, other requests still succeed.
- Each request uses a **referenceId** to correlate responses.
- SOQL `IN` clause allows querying multiple Opportunity IDs in a single request.