---
agent_capabilities:
- Structured Data Analyzer
availability: IDEA
description: Analyzes all Closed-Won deals in the current fiscal year and breaks down
  revenue by New Business vs. Expansion — helping GTM leaders understand growth mix.
name: New vs. Expansion Business Mix
difficulty_level: INTERMEDIATE
time_in_minutes: 25
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+percentage+of+our+revenue+this+year+has+come+from+new+logos+versus+expanding+existing+customer+accounts%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECertainly.+I%27m+analyzing+your+Salesforce+data+to+get+that+breakdown+for+you.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EQuerying+Salesforce+for+all+Closed-Won+opportunities+in+the+current+fiscal+year.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ERunning+a+Python+script+to+aggregate+the+results+by+business+type.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22query%5C%22%3A+%5C%22SELECT+Amount%2C+Type+FROM+Opportunity+WHERE+IsWon+%3D+true+AND+CloseDate+%3D+THIS_FISCAL_YEAR%5C%22%5Cn%7D%22%2C%22caption%22%3A%22action_1%3A+Get+Salesforce+Opportunities%22%2C%22connectorName%22%3A%22salesforce%22%2C%22title%22%3A%22SOQL+Query%22%7D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22opportunities+%3D+%7B%7Bactions.action_1.output.records%7D%7D%5Cn%5Cnnew_business_revenue+%3D+0%5Cnexpansion_revenue+%3D+0%5Cn%5Cnfor+opp+in+opportunities%3A%5Cn++if+opp%5B%27Type%27%5D+%3D%3D+%27New+Business%27%3A%5Cn++++new_business_revenue+%2B%3D+opp%5B%27Amount%27%5D%5Cn++elif+opp%5B%27Type%27%5D+%3D%3D+%27Expansion%27%3A%5Cn++++expansion_revenue+%2B%3D+opp%5B%27Amount%27%5D%5Cn%5Cntotal_revenue+%3D+new_business_revenue+%2B+expansion_revenue%5Cn%5Cnif+total_revenue+%3E+0%3A%5Cn++++new_business_percentage+%3D+%28new_business_revenue+%2F+total_revenue%29+*+100%5Cn++++expansion_percentage+%3D+%28expansion_revenue+%2F+total_revenue%29+*+100%5Cnelse%3A%5Cn++++new_business_percentage+%3D+0%5Cn++++expansion_percentage+%3D+0%5Cn%5Cnprint%28%7B%5Cn++++%5C%22new_business_revenue%5C%22%3A+new_business_revenue%2C%5Cn++++%5C%22expansion_revenue%5C%22%3A+expansion_revenue%2C%5Cn++++%5C%22total_revenue%5C%22%3A+total_revenue%2C%5Cn++++%5C%22new_business_percentage%5C%22%3A+new_business_percentage%2C%5Cn++++%5C%22expansion_percentage%5C%22%3A+expansion_percentage%5Cn%7D%29%22%2C%22caption%22%3A%22action_2%3A+Analyze+Revenue+Mix%22%2C%22connectorName%22%3A%22code-interpreter%22%2C%22title%22%3A%22Python+Script%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+revenue+breakdown+for+the+current+fiscal+year%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ENew+Business%3A%3C%2Fb%3E+%244%2C500%2C000+%2860%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3EExpansion%3A%3C%2Fb%3E+%243%2C000%2C000+%2840%25%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThe+total+revenue+from+Closed-Won+deals+is+%247%2C500%2C000.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22FY24+Closed-Won+Opportunities%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---
## **Introduction**

The Salesforce **“New vs. Expansion Business Mix”** plugin analyzes all Closed-Won deals in the in a given timeframe/time period and breaks down revenue by **New Business** vs. **Expansion** — giving GTM leaders instant visibility into their true growth mix. By eliminating the need to manually build Salesforce reports or navigate complex dashboards, the plugin allows leaders to quickly understand where revenue is coming from, how their mix is trending, and which areas need attention. This ensures faster strategic decisions, clearer alignment across teams, and a more efficient way to evaluate business performance.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+percentage+of+our+revenue+this+year+has+come+from+new+logos+versus+expanding+existing+customer+accounts%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ECertainly.+I%27m+analyzing+your+Salesforce+data+to+get+that+breakdown+for+you.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EQuerying+Salesforce+for+all+Closed-Won+opportunities+in+the+current+fiscal+year.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ERunning+a+Python+script+to+aggregate+the+results+by+business+type.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22query%5C%22%3A+%5C%22SELECT+Amount%2C+Type+FROM+Opportunity+WHERE+IsWon+%3D+true+AND+CloseDate+%3D+THIS_FISCAL_YEAR%5C%22%5Cn%7D%22%2C%22caption%22%3A%22action_1%3A+Get+Salesforce+Opportunities%22%2C%22connectorName%22%3A%22salesforce%22%2C%22title%22%3A%22SOQL+Query%22%7D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22opportunities+%3D+%7B%7Bactions.action_1.output.records%7D%7D%5Cn%5Cnnew_business_revenue+%3D+0%5Cnexpansion_revenue+%3D+0%5Cn%5Cnfor+opp+in+opportunities%3A%5Cn++if+opp%5B%27Type%27%5D+%3D%3D+%27New+Business%27%3A%5Cn++++new_business_revenue+%2B%3D+opp%5B%27Amount%27%5D%5Cn++elif+opp%5B%27Type%27%5D+%3D%3D+%27Expansion%27%3A%5Cn++++expansion_revenue+%2B%3D+opp%5B%27Amount%27%5D%5Cn%5Cntotal_revenue+%3D+new_business_revenue+%2B+expansion_revenue%5Cn%5Cnif+total_revenue+%3E+0%3A%5Cn++++new_business_percentage+%3D+%28new_business_revenue+%2F+total_revenue%29+*+100%5Cn++++expansion_percentage+%3D+%28expansion_revenue+%2F+total_revenue%29+*+100%5Cnelse%3A%5Cn++++new_business_percentage+%3D+0%5Cn++++expansion_percentage+%3D+0%5Cn%5Cnprint%28%7B%5Cn++++%5C%22new_business_revenue%5C%22%3A+new_business_revenue%2C%5Cn++++%5C%22expansion_revenue%5C%22%3A+expansion_revenue%2C%5Cn++++%5C%22total_revenue%5C%22%3A+total_revenue%2C%5Cn++++%5C%22new_business_percentage%5C%22%3A+new_business_percentage%2C%5Cn++++%5C%22expansion_percentage%5C%22%3A+expansion_percentage%5Cn%7D%29%22%2C%22caption%22%3A%22action_2%3A+Analyze+Revenue+Mix%22%2C%22connectorName%22%3A%22code-interpreter%22%2C%22title%22%3A%22Python+Script%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+is+the+revenue+breakdown+for+the+current+fiscal+year%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ENew+Business%3A%3C%2Fb%3E+%244%2C500%2C000+%2860%25%29%3C%2Fli%3E%3Cli%3E%3Cb%3EExpansion%3A%3C%2Fb%3E+%243%2C000%2C000+%2840%25%29%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThe+total+revenue+from+Closed-Won+deals+is+%247%2C500%2C000.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22FY24+Closed-Won+Opportunities%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend using user consent authentication (authorization grant type). This plugin was built using APIs that follow the Authorization Code grant type flow. You can find the required permissions for user consent authentication under **Required Salesforce Permissions**. For implementation details, refer to the [Salesforce connector](https://marketplace.moveworks.com/connectors/salesforce#how-to-implement) guide to configure the connection.

**User Consent Authentication Benefits:**

With OAuth 2.0 user consent authentication enabled, users can securely access their own Salesforce data through Moveworks without sharing credentials. By authenticating once through Salesforce’s login page, each user allows the bot to securely access and retrieve data on their behalf.

This ensures data privacy, role-based access control, and a seamless self-service experience where users only see the information they are authorized to view.

**Required Salesforce Permissions:**

To enable access to the Salesforce API endpoints used in this plugin, ensure your Salesforce connected app has the correct OAuth scope configured under:

- **Setup → App Manager → Connected Apps → [Your Connected App]**

**Required Object Permissions**

Ensure the integration user (via profile or permission sets) has **read access** to:

- **Opportunity** (including the Type field for New Business vs. Expansion classification)
- **User**
- **Roles**

These permissions are required to retrieve Closed-Won opportunities, determine whether each deal is New Business or Expansion based on the Opportunity Type, and fetch role and user details for manager/team-level analysis

## Customization Process

### Create or Identify Required Fields (Segment, Region, and Type)

This plugin enables revenue analysis by **Segment** and **Region**, and classifies opportunities as **New Business** or **Expansion** using the Opportunity **Type** field.

Salesforce does not provide standard fields for **Segment** or **Region** by default. Additionally, although the **Opportunity Type** field exists, it may not include the values required to distinguish **New Business** from **Expansion**.

To ensure accurate filtering, reporting, and classification, follow **one of the paths below** based on your Salesforce configuration.

### Path 1: If Segment, Region, and Type Fields Already Exist

If your Salesforce instance already tracks Segment or Region (even under different field names), you **do not need to create new fields**.

### Step A: Identify Existing Fields

Navigate to:

**Setup → Object Manager → Opportunity → Fields & Relationships**

Identify fields that represent:

**Segment** (examples):

- `Segment__c`
- `Market_Segment__c`
- `Industry__c`
- `Vertical__c`

**Region** (examples):

- `Region__c`
- `Territory__c`
- `Geo__c`

Note the **API Name** of each selected field (for example, `My_Custom_Region__c`).

These API names are required during plugin configuration.

### Step B: Verify Opportunity Type Values

Navigate to:

**Setup → Object Manager → Opportunity → Fields & Relationships → Type**

Confirm that the **Type** field includes values that can be mapped to:

- `New Business`
- `Expansion` (for example, Upsell, Cross-sell, Renewal)

If different terminology is used, ensure the plugin logic is updated accordingly.

Ensure the **Type** field is **Visible** to the **Integration User**.

### Path 2: If Segment, Region, or Type Fields Do NOT Exist

If your Salesforce instance does **not** track Segment or Region, or if the Opportunity Type field does not contain suitable values, you must create or update the required fields.

**Steps to Create Custom Fields on Opportunity**

**1. Go to Setup**

- Click the **gear icon** and select **Setup**.

**2. Open Object Manager**

- In Setup, select **Object Manager**.
- Find and click **Opportunity**.

**3. Access Fields & Relationships**

- Click **Fields & Relationships** in the left-hand menu.

**4. Create Segment Field**

- Click **New**.
- **Field Type:** Picklist
- **Field Label:** Segment
- **Field Name:** Segment
- **Values:** Add your segment options
    - Example: `SMB`, `Mid-Market`, `Enterprise`
- Click **Next**.
- Set **Field-Level Security** to **Visible**.
- Add the field to required **Page Layouts**.
- Click **Save & New**.

**5. Create Region Field**

- Click **New**.
- **Field Type:** Picklist
- **Field Label:** Region
- **Field Name:** Region
- **Values:** Add your region list
    - Example: `APAC`, `EMEA`, `AMER`
- Click **Next**.
- Set **Field-Level Security** to **Visible**.
- Add the field to required **Page Layouts**.
- Click **Save & New**.

**6. Update Opportunity Type Field (New Business vs. Expansion)**

- Navigate to:
    
    **Opportunity → Fields & Relationships → Type**
    
- Add or confirm the following values:
    - `New Business`
    - `Expansion`
- Ensure these values align with your organization’s reporting standards.
- Confirm the field is **Visible** to the **Integration User**.
- Click **Save**.

### Plugin Configuration (Agent Studio)

After completing **Path 1 or Path 2**, configure the plugin to reference the correct Salesforce fields.

### Configuration Steps

1. Navigate to **Agent Studio → Plugins**.
2. Open **Salesforce New vs. Expansion Business Mix**.
3. Click **Edit** and open the **Configuration / Process** tab.
4. Select the **Action Activity** block (typically the primary Compound Action).
5. In the **Input Mapping** section, provide the following values as **String Literals (constants)**:

| Argument Name | Description | Example Value |
| --- | --- | --- |
| `segment_field_api_name` | API name of the Segment field | `'Segment__c'` or `'Industry__c'` |
| `region_field_api_name` | API name of the Region field | `'Region__c'` or `'Territory__c'` |

**Important Notes:**

- API names **must be enclosed in single quotes** (for example, `'Territory__c'`).
- Segment, Region, and Type fields must be populated on Opportunities for accurate results.
- The **Integration User** must have **Read Access** to all referenced fields.

**Validation Checklist:**

- Segment field exists and is populated
- Region field exists and is populated
- Opportunity Type includes New Business and Expansion values
- Integration User has access to required fields
- Correct API names are configured in Agent Studio

**Your Instance Configuration:**

All Salesforce API endpoints in this plugin use `{{YOUR_INSTANCE_DOMAIN}}` as a placeholder.

**Follow the steps below to update it correctly after installation:**

1. Go to your **Salesforce Setup**.
2. In the **Quick Find** box, search for **My Domain** and select it.
3. Locate your **Salesforce org’s My Domain URL** (e.g., **`yourcompany.my.salesforce.com`**).
4. Replace `{{YOUR_INSTANCE_DOMAIN}}` with your actual My Domain URL in all **action definitions** within the connector.
5. Ensure all API requests use **HTTPS** and leverage **OAuth 2.0 authentication**.
6. Save your configuration to ensure that all API requests are routed correctly and securely to your Salesforce instance

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Search Closed-Won Opportunities by Criteria**

```bash
curl --location 'https://<YOUR_INSTANCE_DOMAIN>/services/data/v57.0/query/?q=SELECT+FIELDS(ALL)+FROM+Opportunity+WHERE+IsWon=TRUE+AND+{{{filter_query}}}+ORDER+BY+CloseDate+DESC+LIMIT+200' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json'
```

### **Query Parameters**

- **`filter_query`** — A dynamic **SOQL WHERE clause** built based on the user’s selected filter criteria.
- **`start_date/ end_date`** — Filters Closed-Won opportunities by a **ClosedDate** range.
- **`region`** — Filters by partial match on **Region**.
- **`segment`** — Filters by partial match on **Segment**.

**Note:** If **Path 1** is followed, you must provide your **configured Salesforce field API names** in the `filter_query`

- **`order_by`** — Sorts results (default: `CloseDate DESC`).
- **`owner_id`** — Filters opportunities by one or more Owner IDs (for individual or team-level filtering).
- **`limit`** — Maximum records returned (default: `200`).
- **`fields`** — Returns **all fields** using `FIELDS(ALL)`.

**RSQL Filtering Notes**

- Use **SOQL syntax** in the `filter_query` parameter to filter Closed-Won opportunities based on different criteria.
- Common examples:
    - **Close Date Range:** `CloseDate >= {{start_date}} AND CloseDate <= {{end_date}}`
    - **Region:** `Region__c LIKE '%{{region_name}}%'`
    - **Segment:** `Segment__c LIKE '%{{segment_name}}%'`
    - Owner ID: `OwnerId IN ('{{owner_id}}')`
- Filters can be **combined** using:
    - `AND` → both conditions must be true
    - `OR` → either condition may be true

**Example of a Compound Filter Query:**

```bash
CloseDate >= '{{start_date}}' AND CloseDate <= '{{end_date}}'
```

**Example Response:**

```bash
{
    "Id": "{{opportunity_id}}",
    "Name": "{{opportunity_name}}",
    "StageName": "Closed Won",
    "Amount": "{{amount}}",
    "CloseDate": "{{close_date}}",
    "Type": "{{opportunity_type}}",
    "IsClosed": true,
    "IsWon": true,
    "OwnerId": "{{owner_id}}",
    "Segment__c": "{{segment}}",
    "Region__c": "{{region}}"
}
```

**Notes:**

- This endpoint supports **flexible filtering**, allowing queries by **Close Date, Region, Segment**, Owner_ID and more.
- Returns **all Opportunity fields** using `FIELDS(ALL)` for Closed-Won opportunities.

### API #2: Get Opportunities by Team Manager Email

```bash
curl --location "https://<YOUR_INSTANCE_DOMAIN>/services/data/v64.0/query/?q=SELECT+Id,+Name,+Email,+UserRoleId,+UserRole.Name+FROM+User+WHERE+Email=%27{{manager_email}}%27&order_by=Name+ASC&limit=50" \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters**

- `manager_email` **(string)** – Email of the team manager.
- `order_by` – Field to sort results in aescending (ASC) order
- `limit` – Maximum number of records to return.

### API #3: Get Users by Role ID

```bash
curl --location --request GET "https://<YOUR_INSTANCE_DOMAIN>/services/data/v64.0/query/?q=SELECT+Id,+Name+FROM+User+WHERE+UserRoleId='{{user_role_id}}'&order_by=Name+ASC&limit=100" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN" \
--header "Content-Type: application/json"
```

**Query Parameters**

- `user_role_id` **(string)** – Salesforce Role ID to filter users by their assigned role.
- `order_by` – Field to sort results in ascending(ASC) order
- `limit` – Maximum number of records to return.

### API #4: Get Opportunities by Owner IDs

```bash
curl --location --request GET "https://<YOUR_INSTANCE_DOMAIN>/services/data/v64.0/query/?q=SELECT+Id,+Name,+StageName,+CloseDate,+Amount,+OwnerId,+Owner.Name+FROM+Opportunity+WHERE+OwnerId+IN+('{{owner_id}}')&order_by=CloseDate+DESC&limit=200" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN" \
--header "Content-Type: application/json
```

**Query Parameters**

- `Owner_id` **(string / array)** – Salesforce User IDs of opportunity owners to filter opportunities.
- `order_by` – Field to sort results in descending (DESC) order
- `limit` – Maximum number of records to return.