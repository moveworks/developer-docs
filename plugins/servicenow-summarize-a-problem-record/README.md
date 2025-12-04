---
availability: IDEA
description: A plugin that allows IT administrators and problem managers to generate
  concise summaries of ServiceNow Problem Records via the Moveworks AI Assistant.
  This automation consolidates linked incidents, RCA notes, change requests, and related
  tasks, providing a clear, one-glance view of the problem's current status, impact,
  and next steps to support faster investigation tracking and stakeholder communication.
domain:
- IT
fidelity: GUIDE
name: Summarize a Problem Record
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Summarize+a+problem+in+servicenow%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+summarize+a+ServiceNow+Problem+Record.+Please+specify+the+problem+by+providing+a%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EProblem+name%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EProblem+ID+%28e.g.%2C+PRB001234%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EProblem+Short+Description%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EProblem+State%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESelecting+from+problems+assigned+to+you%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESelecting+from+problems+linked+to+your+assignment+groups%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22problems+owned+by+me%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+ServiceNow+for+problem+records+assigned+to+the+current+user.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+these+problems+assigned+to+you.+Which+one+would+you+like+to+summarize%3F%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EPRB001001%3C%2Fb%3E+-+Network+Connectivity+Issues+-+%3Ci%3EIntermittent+connectivity+affecting+multiple+users+in+the+US+region.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001005%3C%2Fb%3E+-+Database+Performance+Degradation+-+%3Ci%3ESlowdowns+observed+on+the+primary+production+database+server.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001012%3C%2Fb%3E+-+Email+Delivery+Delays+-+%3Ci%3EInternal+and+external+email+delivery+experiencing+significant+delays.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001020%3C%2Fb%3E+-+VPN+Client+Authentication+Failure+-+%3Ci%3EUsers+unable+to+authenticate+with+VPN+client+after+recent+update.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001033%3C%2Fb%3E+-+Application+Crash+on+Login+-+%3Ci%3ESpecific+internal+application+crashing+for+a+subset+of+users+upon+login.%3C%2Fi%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Number+1%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+%27PRB001001+-+Network+Connectivity+Issues%27.+Retrieving+detailed+information+from+ServiceNow.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Consolidating+problem+description%2C+linked+incidents%2C+RCA+notes%2C+related+change+requests%2C+and+tasks.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Generating+a+concise+summary+based+on+the+retrieved+data+and+specified+criteria.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Ch4+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESummary+for+PRB001001+-+Network+Connectivity+Issues%3C%2Fh4%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOverview%3A%3C%2Fb%3E+This+problem%2C+currently+in+%27Investigating%27+state+with+%27High%27+priority+and+assigned+to+the+%27Network+Operations%27+group%2C+addresses+intermittent+network+connectivity+issues+impacting+various+users+across+the+US+region.%3C%2Fli%3E%3Cli%3E%3Cb%3ELinked+Incidents%3A%3C%2Fb%3E+A+total+of+45+incidents+are+linked%2C+predominantly+reporting+%27intermittent+network+drops%27+and+%27unable+to+access+shared+drives%27.+Resolution+progress+is+ongoing%2C+with+several+incidents+still+open+awaiting+problem+resolution.%3C%2Fli%3E%3Cli%3E%3Cb%3ERoot+Cause+Analysis%3A%3C%2Fb%3E+Initial+RCA+indicates+a+potential+misconfiguration+within+the+core+routing+infrastructure%2C+specifically+related+to+a+recent+firmware+upgrade+on+Router-X.+Further+investigation+is+required+to+confirm.%3C%2Fli%3E%3Cli%3E%3Cb%3ERelated+Change+Requests+%26amp%3B+Tasks%3A%3C%2Fb%3E+One+pending+change+request+%28CHG000551%29+exists+to+roll+back+the+firmware+on+Router-X+if+the+RCA+confirms+it+as+the+cause.+Several+tasks+are+open+for+network+monitoring+and+diagnostic+data+collection.%3C%2Fli%3E%3Cli%3E%3Cb%3ENext+Planned+Actions%3A%3C%2Fb%3E%3Cul%3E%3Cli%3EComplete+diagnostic+data+collection+by+EOD+2024-08-15.%3C%2Fli%3E%3Cli%3EPerform+detailed+log+analysis+of+Router-X+to+identify+configuration+discrepancies.%3C%2Fli%3E%3Cli%3ESchedule+emergency+change+%28CHG000551%29+for+firmware+rollback%2C+if+justified%2C+by+2024-08-16.%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ERemediation+Recommendations%3A%3C%2Fb%3E+Based+on+current+findings%2C+immediate+focus+should+be+on+validating+the+router+firmware+as+the+root+cause.+If+confirmed%2C+a+rollback+is+recommended%2C+followed+by+a+phased+testing+approach+for+future+firmware+updates.+Consider+implementing+pre-production+testing+for+critical+network+infrastructure+changes.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22PRB001001+-+Network+Connectivity+Issues%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---
## **Introduction**

The “**Summarize Problem Record**” plugin enables IT admins and problem managers to quickly generate clear overviews of ServiceNow Problem Records through the **Moveworks AI Assistant**. It consolidates linked incidents, RCA notes, change requests, and tasks into a single snapshot, making it easy to understand the problem’s status, impact, and next steps.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Summarize+a+problem+in+servicenow%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+summarize+a+ServiceNow+Problem+Record.+Please+specify+the+problem+by+providing+a%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EProblem+name%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EProblem+ID+%28e.g.%2C+PRB001234%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EProblem+Short+Description%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EProblem+State%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESelecting+from+problems+assigned+to+you%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3ESelecting+from+problems+linked+to+your+assignment+groups%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22problems+owned+by+me%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+ServiceNow+for+problem+records+assigned+to+the+current+user.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+these+problems+assigned+to+you.+Which+one+would+you+like+to+summarize%3F%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EPRB001001%3C%2Fb%3E+-+Network+Connectivity+Issues+-+%3Ci%3EIntermittent+connectivity+affecting+multiple+users+in+the+US+region.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001005%3C%2Fb%3E+-+Database+Performance+Degradation+-+%3Ci%3ESlowdowns+observed+on+the+primary+production+database+server.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001012%3C%2Fb%3E+-+Email+Delivery+Delays+-+%3Ci%3EInternal+and+external+email+delivery+experiencing+significant+delays.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001020%3C%2Fb%3E+-+VPN+Client+Authentication+Failure+-+%3Ci%3EUsers+unable+to+authenticate+with+VPN+client+after+recent+update.%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EPRB001033%3C%2Fb%3E+-+Application+Crash+on+Login+-+%3Ci%3ESpecific+internal+application+crashing+for+a+subset+of+users+upon+login.%3C%2Fi%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Number+1%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22User+selected+%27PRB001001+-+Network+Connectivity+Issues%27.+Retrieving+detailed+information+from+ServiceNow.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Consolidating+problem+description%2C+linked+incidents%2C+RCA+notes%2C+related+change+requests%2C+and+tasks.%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Generating+a+concise+summary+based+on+the+retrieved+data+and+specified+criteria.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Ch4+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESummary+for+PRB001001+-+Network+Connectivity+Issues%3C%2Fh4%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EOverview%3A%3C%2Fb%3E+This+problem%2C+currently+in+%27Investigating%27+state+with+%27High%27+priority+and+assigned+to+the+%27Network+Operations%27+group%2C+addresses+intermittent+network+connectivity+issues+impacting+various+users+across+the+US+region.%3C%2Fli%3E%3Cli%3E%3Cb%3ELinked+Incidents%3A%3C%2Fb%3E+A+total+of+45+incidents+are+linked%2C+predominantly+reporting+%27intermittent+network+drops%27+and+%27unable+to+access+shared+drives%27.+Resolution+progress+is+ongoing%2C+with+several+incidents+still+open+awaiting+problem+resolution.%3C%2Fli%3E%3Cli%3E%3Cb%3ERoot+Cause+Analysis%3A%3C%2Fb%3E+Initial+RCA+indicates+a+potential+misconfiguration+within+the+core+routing+infrastructure%2C+specifically+related+to+a+recent+firmware+upgrade+on+Router-X.+Further+investigation+is+required+to+confirm.%3C%2Fli%3E%3Cli%3E%3Cb%3ERelated+Change+Requests+%26amp%3B+Tasks%3A%3C%2Fb%3E+One+pending+change+request+%28CHG000551%29+exists+to+roll+back+the+firmware+on+Router-X+if+the+RCA+confirms+it+as+the+cause.+Several+tasks+are+open+for+network+monitoring+and+diagnostic+data+collection.%3C%2Fli%3E%3Cli%3E%3Cb%3ENext+Planned+Actions%3A%3C%2Fb%3E%3Cul%3E%3Cli%3EComplete+diagnostic+data+collection+by+EOD+2024-08-15.%3C%2Fli%3E%3Cli%3EPerform+detailed+log+analysis+of+Router-X+to+identify+configuration+discrepancies.%3C%2Fli%3E%3Cli%3ESchedule+emergency+change+%28CHG000551%29+for+firmware+rollback%2C+if+justified%2C+by+2024-08-16.%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ERemediation+Recommendations%3A%3C%2Fb%3E+Based+on+current+findings%2C+immediate+focus+should+be+on+validating+the+router+firmware+as+the+root+cause.+If+confirmed%2C+a+rollback+is+recommended%2C+followed+by+a+phased+testing+approach+for+future+firmware+updates.+Consider+implementing+pre-production+testing+for+critical+network+infrastructure+changes.%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22PRB001001+-+Network+Connectivity+Issues%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user_grmember`, `problem`, `incident`, `change_request`, `task` tables to summarize problem records with related links.
- **Field Access:** Sufficient access to retrieve user details, problems and related links from ServiceNow.

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

### **API #2 : Get Problems**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/problem?sysparm_query={{FILTER_QUERY}}%5EORDERBYsys_created_on&sysparm_display_value=true&sysparm_fields=number%2Cstate%2Csys_created_by%2Cimpact%2Cpriority%2Cshort_description%2Cdescription%2Cassigned_to.name%2Cassignment_group.name%2Csys_id%2Curgency%2Ccompany%2Capproval%2Cdue_date%2Ccategory&sysparm_limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `FILTER_QUERY` **(string)** – Filter assets by specific property values.
    - You can filter by **Problem number**, **Problem short description, Assignment group or Assigned to the user**.
        - Example filters:
            - `^assignment_groupIN{{assignment_group_id}}` – Returns problems by assignment group id.
            - `number={{problem_number}}^assignment_groupIN{{assignment_group_id}}` – Returns problems by problem number from specific assignment group.
            - `short_descriptionLIKE{{short_description}}^assignment_groupIN{{assignment_group_id}}` – Returns problems by problem short description from specific assignment group
            - `assigned_to.email={{user_email}}` – Returns only the problems assigned to the user.
- `sysparm_fields` (string) – Fields to include in the response.

**Note:** This workflow utilizes a Dynamic Resolver Strategy with **Context Passing** to automatically retrieve **Problem records** filtered by the value selected in the 'assignment_groups' slot.

### **API #3 : Get Linked Incidents By Problem Sys ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=problem_id%3D{{PROBLEM_SYS_ID}}%5EORDERBYsys_created_on&sysparm_display_value=true&sysparm_fields=number%2Cstate%2Cimpact%2Cpriority%2Cshort_description%2Cdescription%2Cwork_notes%2Ccomments%2Cassigned_to.name%2Cassignment_group.name%2Csys_id%2Curgency%2Cincident_state%2Ccompany.name%2Cdue_date&sysparm_limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `PROBLEM_SYS_ID` – Returns specific problems linked incidents.
- `sysparm_fields` (string) – Fields to include in the response.

### **API #4 :  Get Change Requests By Problem Sys ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/change_request?sysparm_query=problem_id%3D{{PROBLEM_SYS_ID}}%5EORDERBYsys_created_on&sysparm_display_value=true&sysparm_fields=number%2Cstate%2Cshort_description%2Cdescription%2Cimpact%2Cpriority%2Cwork_start%2Cwork_end%2Cassigned_to.name%2Cassignment_group.name%2Csys_id%2Curgency%2Ccompany.name%2Ccomments%2Cclose_notes%2Crisk%2Ccategory&sysparm_limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `PROBLEM_SYS_ID` – Returns specific problems change requests.
- `sysparm_fields` (string) – Fields to include in the response.

### **API #5 :  Get Related Tasks By Problem Sys ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/task?sysparm_query=parent%3D{{PROBLEM_SYS_ID}}%5EORDERBYsys_created_on&sysparm_display_value=true&sysparm_fields=number%2Cstate%2Cshort_description%2Cdescription%2Cpriority%2Cimpact%2Curgency%2Cassignment_group.name%2Cassigned_to.name%2Csys_id%2Cwork_notes%2Ccomments%2Cdue_date%2Ccompany.name&sysparm_limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `PROBLEM_SYS_ID` – Returns specific problems change requests.
- `sysparm_fields` (string) – Fields to include in the response.