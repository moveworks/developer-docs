---
availability: IDEA
description: A plugin that allows users and support managers to analyze and summarize the overall
  health of their ServiceNow incident backlog via the Moveworks AI Assistant. This
  automation provides instant insights into open incident volume, priority distribution,
  SLA breaches, and aging trends, helping teams quickly assess workload balance and
  identify areas needing attention.
domain:
- IT
fidelity: GUIDE
name: Summarize Incident Backlog Health
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+summarize+incident+backlog+health+in+servicenow%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Eservicenow%3C%2Fb%3E+for+assignment+groups+matching+%27network+support+team%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+assignment+groups+related+to+%27Network+Support%27.+Please+select+the+correct+one%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ENetwork+Support+-+India%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ENetwork+Support+-+USA%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ENetwork+Support+-+EMEA%3C%2Fb%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Support+-+India%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+open+incidents+for+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ENetwork+Support+-+India%3C%2Fb%3E+assignment+group+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Eservicenow%3C%2Fb%3E+and+analyzing+backlog+health.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere%27s+a+summary+of+the+incident+backlog+health+for+%3Cb%3ENetwork+Support+-+India%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ETotal+open+incidents%3C%2Fb%3E%3A+125+%28an+increase+of+10%25+in+the+last+7+days%29%3C%2Fli%3E%3Cli%3E%3Cb%3EPriority+distribution%3C%2Fb%3E%3A%3Cul%3E%3Cli%3EP1%3A+5+%284%25%29+-+Critical+and+stable.%3C%2Fli%3E%3Cli%3EP2%3A+20+%2816%25%29+-+Requires+attention%2C+some+nearing+SLA+breach.%3C%2Fli%3E%3Cli%3EP3%3A+50+%2840%25%29+-+Largest+volume%2C+significant+number+approaching+or+past+SLA.%3C%2Fli%3E%3Cli%3EP4%3A+35+%2828%25%29+-+Moderate+volume%2C+generally+stable.%3C%2Fli%3E%3Cli%3EP5%3A+15+%2812%25%29+-+Lowest+priority%2C+manageable.%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESLA+breach+rate%3C%2Fb%3E%3A+18%25+%2822+incidents+breached%29.+This+is+primarily+driven+by+P3+incidents.%3C%2Fli%3E%3Cli%3E%3Cb%3EAverage+incident+age%3C%2Fb%3E%3A+5.7+days%2C+with+several+P3+incidents+exceeding+10+days.%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EOverall+Backlog+Health+Rating%3C%2Fb%3E%3A+%3Cb%3EModerate%3C%2Fb%3E.+While+critical+P1+incidents+are+low%2C+the+high+volume+of+P3+incidents+and+a+notable+SLA+breach+rate%2C+particularly+within+the+P3+category%2C+indicate+a+need+for+focused+action+to+prevent+escalation+and+improve+response+times.+The+recent+increase+in+total+open+incidents+suggests+a+growing+workload+that+needs+addressing.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EDetailed+Recommendation%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EAddress+SLA+Breaches%3A%3C%2Fb%3E+Immediately+prioritize+the+22+incidents+that+have+already+breached+SLA%2C+with+a+focus+on+P2+and+P3+tickets%2C+to+mitigate+potential+service+impact.%3C%2Fli%3E%3Cli%3E%3Cb%3EProactive+P3+Management%3A%3C%2Fb%3E+Review+P3+incidents+proactively%2C+especially+those+nearing+their+SLA+deadline+or+with+an+average+age+exceeding+7+days.+Consider+re-prioritization+or+resource+allocation+to+prevent+further+breaches.%3C%2Fli%3E%3Cli%3E%3Cb%3ERoot+Cause+Analysis%3A%3C%2Fb%3E+Conduct+a+deeper+analysis+on+the+common+themes+or+causes+behind+the+P2+and+P3+incidents+that+are+frequently+breaching+SLA+to+implement+preventative+measures.%3C%2Fli%3E%3Cli%3E%3Cb%3EWorkload+Distribution%3A%3C%2Fb%3E+Evaluate+current+resource+allocation+within+the+Network+Support+-+India+team+in+light+of+the+10%25+increase+in+open+incidents+to+ensure+capacity+matches+demand.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Network+Support+-+India+Backlog%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---
## **Introduction**

The **“Summarize Incident Backlog Health”** plugin enables support managers to instantly assess the overall health of their ServiceNow incident backlog through the **Moveworks AI Assistant**. It provides quick insights into open incident volume, priority distribution, SLA breaches, and aging trends—all in one place—helping teams proactively monitor workloads, identify bottlenecks, and take timely action to improve incident management efficiency.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+summarize+incident+backlog+health+in+servicenow%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Eservicenow%3C%2Fb%3E+for+assignment+groups+matching+%27network+support+team%27.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+assignment+groups+related+to+%27Network+Support%27.+Please+select+the+correct+one%3A%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ENetwork+Support+-+India%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ENetwork+Support+-+USA%3C%2Fb%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ENetwork+Support+-+EMEA%3C%2Fb%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Support+-+India%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+open+incidents+for+the+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ENetwork+Support+-+India%3C%2Fb%3E+assignment+group+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3Eservicenow%3C%2Fb%3E+and+analyzing+backlog+health.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere%27s+a+summary+of+the+incident+backlog+health+for+%3Cb%3ENetwork+Support+-+India%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ETotal+open+incidents%3C%2Fb%3E%3A+125+%28an+increase+of+10%25+in+the+last+7+days%29%3C%2Fli%3E%3Cli%3E%3Cb%3EPriority+distribution%3C%2Fb%3E%3A%3Cul%3E%3Cli%3EP1%3A+5+%284%25%29+-+Critical+and+stable.%3C%2Fli%3E%3Cli%3EP2%3A+20+%2816%25%29+-+Requires+attention%2C+some+nearing+SLA+breach.%3C%2Fli%3E%3Cli%3EP3%3A+50+%2840%25%29+-+Largest+volume%2C+significant+number+approaching+or+past+SLA.%3C%2Fli%3E%3Cli%3EP4%3A+35+%2828%25%29+-+Moderate+volume%2C+generally+stable.%3C%2Fli%3E%3Cli%3EP5%3A+15+%2812%25%29+-+Lowest+priority%2C+manageable.%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ESLA+breach+rate%3C%2Fb%3E%3A+18%25+%2822+incidents+breached%29.+This+is+primarily+driven+by+P3+incidents.%3C%2Fli%3E%3Cli%3E%3Cb%3EAverage+incident+age%3C%2Fb%3E%3A+5.7+days%2C+with+several+P3+incidents+exceeding+10+days.%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EOverall+Backlog+Health+Rating%3C%2Fb%3E%3A+%3Cb%3EModerate%3C%2Fb%3E.+While+critical+P1+incidents+are+low%2C+the+high+volume+of+P3+incidents+and+a+notable+SLA+breach+rate%2C+particularly+within+the+P3+category%2C+indicate+a+need+for+focused+action+to+prevent+escalation+and+improve+response+times.+The+recent+increase+in+total+open+incidents+suggests+a+growing+workload+that+needs+addressing.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EDetailed+Recommendation%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EAddress+SLA+Breaches%3A%3C%2Fb%3E+Immediately+prioritize+the+22+incidents+that+have+already+breached+SLA%2C+with+a+focus+on+P2+and+P3+tickets%2C+to+mitigate+potential+service+impact.%3C%2Fli%3E%3Cli%3E%3Cb%3EProactive+P3+Management%3A%3C%2Fb%3E+Review+P3+incidents+proactively%2C+especially+those+nearing+their+SLA+deadline+or+with+an+average+age+exceeding+7+days.+Consider+re-prioritization+or+resource+allocation+to+prevent+further+breaches.%3C%2Fli%3E%3Cli%3E%3Cb%3ERoot+Cause+Analysis%3A%3C%2Fb%3E+Conduct+a+deeper+analysis+on+the+common+themes+or+causes+behind+the+P2+and+P3+incidents+that+are+frequently+breaching+SLA+to+implement+preventative+measures.%3C%2Fli%3E%3Cli%3E%3Cb%3EWorkload+Distribution%3A%3C%2Fb%3E+Evaluate+current+resource+allocation+within+the+Network+Support+-+India+team+in+light+of+the+10%25+increase+in+open+incidents+to+ensure+capacity+matches+demand.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22Network+Support+-+India+Backlog%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user_grmember`, `incident` and `task_sla` tables.
- **Field Access:** Sufficient access to retrieve incident details and user group information from ServiceNow.

**Your Instance Configuration:**

All ServiceNow API endpoints in this plugin use `<YOUR_INSTANCE>` as a placeholder. After installation, replace `<YOUR_INSTANCE>` in the action definitions with your actual ServiceNow instance name.

To find your instance name:

- Log in to your ServiceNow account.
- Check the URL in your browser — the instance name appears before `.service-now.com`, e.g.:
    
    `https://**your_instance**.service-now.com/...`
    

Make sure to update this across all actions that reference the ServiceNow API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix:-**

### **API #1 : Get Assignment Groups By User Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user_grmember?sysparm_display_value=all&sysparm_query=user.email%3D{{USER_EMAIL}}&sysparm_fields=group' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `USER_EMAIL`(string) – Email address of the user to retrieve `assignment_group_id`.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value=all` – Returns display values for referenced fields

### **API #2 : Get All Open Incidents By Assignment Group ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=active%3Dtrue%5EstateIN2%2C3%5Eassignment_groupIN1{{ASSIGNMENT_GROUP_ID}}%5EORDERBYDESCsys_created_on&sysparm_fields=number%2Csys_id%2Cpriority%2Cshort_description%2Copened_at%2Cstate%2Cimpact%2Cpriority%2Curgency%2Cseverity%2Ccategory%2Cassigned_to.name%2Cassignment_group.name&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `ASSIGNMENT_GROUP_ID` (string) – The unique ID of the assignment group for which the incidents need to be retrieved.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value=true` – Returns display values for referenced fields

### **API #3 : Get SLA Linked Incidents By Incident System ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/task_sla?sysparm_query=taskIN{{INCIDENT_SYS_ID}}&sysparm_fields=task.number%2Ctask.sys_id%2Chas_breached%2Cbreach_time%2Cduration%2Cbusiness_time_left%2Cpercentage%2Cstage%2Cstart_time%2Cplanned_end_time%2Csla.name%2Coriginal_breach_time&sysparm_display_value=true&sysparm_limit=100' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `INCIDENT_SYS_ID` (string) – The unique ID of the incident for which SLA-linked details need to be retrieved.
- `sysparm_fields` (string) – Fields to include in the response
- `sysparm_display_value=true` – Returns display values for referenced fields
