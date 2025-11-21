---
availability: IDEA
description: A plugin that allows IT knowledge managers to identify recurring incident
  topics that lack corresponding knowledge base (KB) coverage through the Moveworks
  AI Assistant. This automation retrieves recent incidents from ServiceNow, analyzes
  patterns, compares them against published knowledge articles, and highlights areas
  where knowledge gaps exist.
domain:
- IT
fidelity: GUIDE
name: Identify Knowledge Article Gaps
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+identify+recurring+incident+topics+with+no+KB+coverage%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22To+identify+recurring+incident+topics+without+knowledge+base+%28KB%29+coverage%2C+please+specify+the+date+range+for+incidents+you%27d+like+me+to+analyze.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22last+month%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+%27last+month%27+as+a+30-day+period.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+incidents+from+%3Cb%3EServiceNow%3C%2Fb%3E+for+the+last+30+days.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Analyzing+incident+descriptions+and+categories+using+LLM-based+clustering+to+identify+recurring+topics.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Comparing+identified+clusters+against+published+knowledge+articles+in+%3Cb%3EServiceNow%3C%2Fb%3E+to+determine+KB+coverage.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Highlighting+high-volume+issue+areas+with+no+existing+KB+coverage.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EOverview%3A%3C%2Fb%3E%3Cbr+%2F%3EOver+the+last+30+days%2C+I+analyzed+460+incidents.+Approximately+68%25+were+associated+with+existing+knowledge+articles.+The+remaining+incidents+revealed+3+high-volume+issue+areas+with+no+KB+coverage.%3Chr+%2F%3E%3Cb%3E1.+VPN+Connection+Timeout%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents%3A+27%3C%2Fli%3E%3Cli%3EKB+Coverage%3A+None%3C%2Fli%3E%3Cli%3ECommon+Incident+Titles%3A%3Cul%3E%3Cli%3E%E2%80%9CVPN+client+disconnects+after+5+minutes%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CCannot+reconnect+to+VPN+after+laptop+sleep%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CRemote+session+drops+intermittently%E2%80%9D%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESuggested+KB+Article%3A%3C%2Fb%3E+%E2%80%9CTroubleshooting+VPN+Timeout+Errors%E2%80%9D+%3Ci%3EProvide+step-by-step+guidance+on+resetting+VPN+configurations+and+checking+network+timeouts.%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Chr+%2F%3E%3Cb%3E2.+Disk+Encryption+Failure%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents%3A+19%3C%2Fli%3E%3Cli%3EKB+Coverage%3A+None%3C%2Fli%3E%3Cli%3ECommon+Incident+Titles%3A%3Cul%3E%3Cli%3E%E2%80%9CFileVault+encryption+failed+after+update%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CMac+encryption+stuck+at+75%25%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CDisk+unlock+password+not+accepted%E2%80%9D%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESuggested+KB+Article%3A%3C%2Fb%3E+%E2%80%9CResolving+FileVault+Encryption+Failures%E2%80%9D+%3Ci%3EExplain+root+causes+%28keychain+issues%2C+incomplete+encryption+cycles%29+and+walk+users+through+recovery.%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Chr+%2F%3E%3Cb%3E3.+Password+Reset+Loop%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents%3A+12%3C%2Fli%3E%3Cli%3EKB+Coverage%3A+None%3C%2Fli%3E%3Cli%3ECommon+Incident+Titles%3A%3Cul%3E%3Cli%3E%E2%80%9CReset+password+link+keeps+expiring%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CUser+password+resets+but+can%E2%80%99t+log+in%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CAD+sync+fails+after+password+change%E2%80%9D%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESuggested+KB+Article%3A%3C%2Fb%3E+%E2%80%9CFixing+Password+Reset+Loops%E2%80%9D+%3Ci%3EDocument+how+to+clear+expired+reset+tokens+and+force+AD+resync+for+user+accounts.%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Chr+%2F%3E%3Cb%3ESummary%3A%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents+Analyzed%3A+460%3C%2Fli%3E%3Cli%3EKB+Coverage+Rate%3A+68%25%3C%2Fli%3E%3Cli%3EKnowledge+Gaps+Identified%3A+3%3C%2Fli%3E%3C%2Ful%3ERecommended+Action%3A+Create+new+KB+articles+for+VPN%2C+Disk+Encryption%2C+and+Password+Reset+issues+to+reduce+repeat+incident+volume+and+improve+self-service+resolution+rates.%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22ServiceNow+Incident+Data+Analysis%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---
## **Introduction**

The **"Identify Knowledge Article Gaps"** plugin helps IT knowledge managers proactively uncover missing or insufficient Knowledge Base (KB) coverage. When provided with recent incident data, the plugin retrieves and analyzes incidents from ServiceNow, uses AI-driven clustering to identify recurring themes, and compares these patterns against existing published knowledge articles. It then highlights specific topics with low or no KB coverage, enabling teams to prioritize new article creation and improve self-service efficiency. This ensures that the knowledge base remains comprehensive, relevant, and aligned with real user needs.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+identify+recurring+incident+topics+with+no+KB+coverage%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22To+identify+recurring+incident+topics+without+knowledge+base+%28KB%29+coverage%2C+please+specify+the+date+range+for+incidents+you%27d+like+me+to+analyze.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22last+month%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Parsing+%27last+month%27+as+a+30-day+period.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+incidents+from+%3Cb%3EServiceNow%3C%2Fb%3E+for+the+last+30+days.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Analyzing+incident+descriptions+and+categories+using+LLM-based+clustering+to+identify+recurring+topics.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Comparing+identified+clusters+against+published+knowledge+articles+in+%3Cb%3EServiceNow%3C%2Fb%3E+to+determine+KB+coverage.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Highlighting+high-volume+issue+areas+with+no+existing+KB+coverage.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EOverview%3A%3C%2Fb%3E%3Cbr+%2F%3EOver+the+last+30+days%2C+I+analyzed+460+incidents.+Approximately+68%25+were+associated+with+existing+knowledge+articles.+The+remaining+incidents+revealed+3+high-volume+issue+areas+with+no+KB+coverage.%3Chr+%2F%3E%3Cb%3E1.+VPN+Connection+Timeout%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents%3A+27%3C%2Fli%3E%3Cli%3EKB+Coverage%3A+None%3C%2Fli%3E%3Cli%3ECommon+Incident+Titles%3A%3Cul%3E%3Cli%3E%E2%80%9CVPN+client+disconnects+after+5+minutes%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CCannot+reconnect+to+VPN+after+laptop+sleep%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CRemote+session+drops+intermittently%E2%80%9D%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESuggested+KB+Article%3A%3C%2Fb%3E+%E2%80%9CTroubleshooting+VPN+Timeout+Errors%E2%80%9D+%3Ci%3EProvide+step-by-step+guidance+on+resetting+VPN+configurations+and+checking+network+timeouts.%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Chr+%2F%3E%3Cb%3E2.+Disk+Encryption+Failure%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents%3A+19%3C%2Fli%3E%3Cli%3EKB+Coverage%3A+None%3C%2Fli%3E%3Cli%3ECommon+Incident+Titles%3A%3Cul%3E%3Cli%3E%E2%80%9CFileVault+encryption+failed+after+update%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CMac+encryption+stuck+at+75%25%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CDisk+unlock+password+not+accepted%E2%80%9D%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESuggested+KB+Article%3A%3C%2Fb%3E+%E2%80%9CResolving+FileVault+Encryption+Failures%E2%80%9D+%3Ci%3EExplain+root+causes+%28keychain+issues%2C+incomplete+encryption+cycles%29+and+walk+users+through+recovery.%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Chr+%2F%3E%3Cb%3E3.+Password+Reset+Loop%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents%3A+12%3C%2Fli%3E%3Cli%3EKB+Coverage%3A+None%3C%2Fli%3E%3Cli%3ECommon+Incident+Titles%3A%3Cul%3E%3Cli%3E%E2%80%9CReset+password+link+keeps+expiring%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CUser+password+resets+but+can%E2%80%99t+log+in%E2%80%9D%3C%2Fli%3E%3Cli%3E%E2%80%9CAD+sync+fails+after+password+change%E2%80%9D%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESuggested+KB+Article%3A%3C%2Fb%3E+%E2%80%9CFixing+Password+Reset+Loops%E2%80%9D+%3Ci%3EDocument+how+to+clear+expired+reset+tokens+and+force+AD+resync+for+user+accounts.%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%3Chr+%2F%3E%3Cb%3ESummary%3A%3C%2Fb%3E%3Cul%3E%3Cli%3ETotal+Incidents+Analyzed%3A+460%3C%2Fli%3E%3Cli%3EKB+Coverage+Rate%3A+68%25%3C%2Fli%3E%3Cli%3EKnowledge+Gaps+Identified%3A+3%3C%2Fli%3E%3C%2Ful%3ERecommended+Action%3A+Create+new+KB+articles+for+VPN%2C+Disk+Encryption%2C+and+Password+Reset+issues+to+reduce+repeat+incident+volume+and+improve+self-service+resolution+rates.%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22ServiceNow+Incident+Data+Analysis%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to configure the connection.

**Specifically, confirm the following permissions are granted:**

- `Read` access to the **Incidents** table
- `Read` access to the **kb_knowledge** table

**Your Instance Configuration:**

All ServiceNow API endpoints in this plugin use `'YOUR_INSTANCE'` as a placeholder. After installation, replace `'YOUR_INSTANCE'` in the action definitions with your actual ServiceNow instance name.

To find your instance name:

- Log in to your ServiceNow account.
- Check the URL in your browser — the instance name appears before `.service-now.com`, e.g.:
    
    `https://**your_instance**.service-now.com/...`
    

Make sure to update this across all actions that reference the ServiceNow API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Incidents**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=active=true^opened_at>={{time_range}}^knowledge=false^ORDERBYDESCopened_at&sysparm_fields=short_description,category,subcategory,cmdb_ci,assignment_group,knowledge,sys_id&sysparm_limit=500' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameter:**

`time_range` :  (string) - Represents the start date from which incidents should be retrieved.

**Key Query Parameters:**

- **`active=true`**
    - Retrieves only active incidents.
- **`opened_at>={{time_range}}`**
    - Returns incidents created on or after the user-specified time range.
- **`knowledge=false`**
    - Filters out incidents that already have a linked KB article.
- **`sysparm_fields=short_description,category,subcategory,cmdb_ci,assignment_group,knowledge,sys_id`**
    - Limits output to the relevant fields needed for clustering and analysis.
- **`ORDERBYDESCopened_at`**
    - Sorts incident records **from latest to oldest,** ensuring latest incidents are considered for analysis.

### **API #2: Retrieve Up To Date Knowledge Articles:**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge?sysparm_query=workflow_state=published^valid_to>=today^ORDERBYDESCsys_created_on&sysparm_fields=short_description,text,kb_category,category,sys_id&sysparm_limit=1000' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Key Query Parameters:**

- **`workflow_state=published`**
    - Only returns KB articles that are officially published.
- **`valid_to>=today`**
    - Ensures only KBs that are still valid (not expired) are considered.
- **`sysparm_fields=short_description,text,kb_category,category,sys_id`**
    - Returns only essential fields needed for content analysis and matching.
- **`ORDERBYDESCsys_created_on`**
    - Sorts KB articles **from latest to oldest**, ensuring the most recently created knowledge articles are evaluated first.