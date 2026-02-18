---
availability: INSTALLABLE
description: A plugin that allows IT asset managers to identify and retire assets
  in ServiceNow through the Moveworks AI Assistant. This automation retrieves assets
  and enables IT asset managers to mark them as Retired, ensuring asset hygiene, accurate
  lifecycle tracking, and compliance with ServiceNow asset management policies.
installation_asset_uuid: 78662f6e-1b16-4c50-91e5-b9813a3376a6
domain:
- IT
fidelity: GUIDE
name: Retire an Asset
difficulty_level: INTERMEDIATE
time_in_minutes: 15
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+retire+a+servicenow+asset%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+with+that.+Can+you+specify+the+asset+you%27d+like+to+retire+by+providing+one+or+more+of+the+following+details%3F%3Cbr+%2F%3E%3Cbr+%2F%3E%3Col%3E%3Cli%3EAsset+Name%3C%2Fli%3E%3Cli%3EAsset+Tag%3C%2Fli%3E%3Cli%3ESerial+Number%3C%2Fli%3E%3Cli%3EOwner%3C%2Fli%3E%3Cli%3EModel%3C%2Fli%3E%3Cli%3ELast+Updated+Date%3C%2Fli%3E%3Cli%3ELifecycle+Status%3C%2Fli%3E%3Cli%3EAsset+Condition%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+assets+owned+by+John%2C+he+has+recently+left+ACME%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+users+named+%27John%27...%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+users+named+John.+Which+one+are+you+referring+to%3F%3Cbr+%2F%3E%3Cbr+%2F%3E%3Col%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+-+%3Ccode%3Ejohn.doe%40acme.com%3C%2Fcode%3E%2C+IT+Department%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Smith%3C%2Fb%3E+-+%3Ccode%3Ejohn.smith%40acme.com%3C%2Fcode%3E%2C+Sales+Department%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Levy%3C%2Fb%3E+-+%3Ccode%3Ejohn.levy%40acme.com%3C%2Fcode%3E%2C+Marketing+Department%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+assets+owned+by+John+Doe+from+%3Cb%3EServiceNow%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+assets+owned+by+John+Doe%3A%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3E%3Cstrong%3EHP+ProBook%3C%2Fstrong%3E+%28Asset+Tag%3A+%3Ccode%3EACME-L-00123%3C%2Fcode%3E%2C+Serial+Number%3A+%3Ccode%3EABC123DEF456%3C%2Fcode%3E%2C+Last+Updated%3A+2023-10-26%2C+Condition%3A+Poor%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDell+Monitor%3C%2Fstrong%3E+%28Asset+Tag%3A+%3Ccode%3EACME-M-00456%3C%2Fcode%3E%2C+Serial+Number%3A+%3Ccode%3EGHI789JKL012%3C%2Fcode%3E%2C+Last+Updated%3A+2023-09-15%2C+Condition%3A+Good%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiPhone+13%3C%2Fstrong%3E+%28Asset+Tag%3A+%3Ccode%3EACME-P-00789%3C%2Fcode%3E%2C+Serial+Number%3A+%3Ccode%3EMNO345PQR678%3C%2Fcode%3E%2C+Last+Updated%3A+2023-11-01%2C+Condition%3A+Excellent%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp%3E%3Cbr%3EWhich+asset+would+you+like+to+retire%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22HP+ProBook+%28SN%3A+ABC123DEF456%29%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+will+mark+the+following+asset+as+%3Cb%3ERetired%3C%2Fb%3E+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset+Name%3A%3C%2Fb%3E+HP+ProBook%3C%2Fli%3E%3Cli%3E%3Cb%3EAsset+Tag%3A%3C%2Fb%3E+ACME-L-00123%3C%2Fli%3E%3Cli%3E%3Cb%3ESerial+Number%3A%3C%2Fb%3E+ABC123DEF456%3C%2Fli%3E%3Cli%3E%3Cb%3EOwner%3A%3C%2Fb%3E+John+Doe%3C%2Fli%3E%3C%2Ful%3E%3Cbr+%2F%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+asset+status+to+%3Cb%3ERetired%3C%2Fb%3E+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22The+asset+has+been+successfully+retired.%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22HP+ProBook+%28ACME-L-00123%29%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---


## Introduction

The **“ServiceNow Asset Retirement”** plugin enables IT asset managers to efficiently identify and retire assets in ServiceNow directly through the Moveworks AI Assistant. This automation streamlines asset lifecycle management by retrieving asset details through flexible lookup criteria and allowing managers to mark assets as *Retired* without navigating the ServiceNow interface. With this plugin, organizations can maintain accurate asset records, improve lifecycle hygiene, and reduce administrative overhead.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started.

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+retire+a+servicenow+asset%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+with+that.+Can+you+specify+the+asset+you%27d+like+to+retire+by+providing+one+or+more+of+the+following+details%3F%3Cbr+%2F%3E%3Cbr+%2F%3E%3Col%3E%3Cli%3EAsset+Name%3C%2Fli%3E%3Cli%3EAsset+Tag%3C%2Fli%3E%3Cli%3ESerial+Number%3C%2Fli%3E%3Cli%3EOwner%3C%2Fli%3E%3Cli%3EModel%3C%2Fli%3E%3Cli%3ELast+Updated+Date%3C%2Fli%3E%3Cli%3ELifecycle+Status%3C%2Fli%3E%3Cli%3EAsset+Condition%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+assets+owned+by+John%2C+he+has+recently+left+ACME%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+users+named+%27John%27...%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+users+named+John.+Which+one+are+you+referring+to%3F%3Cbr+%2F%3E%3Cbr+%2F%3E%3Col%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+-+%3Ccode%3Ejohn.doe%40acme.com%3C%2Fcode%3E%2C+IT+Department%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Smith%3C%2Fb%3E+-+%3Ccode%3Ejohn.smith%40acme.com%3C%2Fcode%3E%2C+Sales+Department%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Levy%3C%2Fb%3E+-+%3Ccode%3Ejohn.levy%40acme.com%3C%2Fcode%3E%2C+Marketing+Department%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+assets+owned+by+John+Doe+from+%3Cb%3EServiceNow%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+assets+owned+by+John+Doe%3A%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3E%3Cstrong%3EHP+ProBook%3C%2Fstrong%3E+%28Asset+Tag%3A+%3Ccode%3EACME-L-00123%3C%2Fcode%3E%2C+Serial+Number%3A+%3Ccode%3EABC123DEF456%3C%2Fcode%3E%2C+Last+Updated%3A+2023-10-26%2C+Condition%3A+Poor%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EDell+Monitor%3C%2Fstrong%3E+%28Asset+Tag%3A+%3Ccode%3EACME-M-00456%3C%2Fcode%3E%2C+Serial+Number%3A+%3Ccode%3EGHI789JKL012%3C%2Fcode%3E%2C+Last+Updated%3A+2023-09-15%2C+Condition%3A+Good%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EiPhone+13%3C%2Fstrong%3E+%28Asset+Tag%3A+%3Ccode%3EACME-P-00789%3C%2Fcode%3E%2C+Serial+Number%3A+%3Ccode%3EMNO345PQR678%3C%2Fcode%3E%2C+Last+Updated%3A+2023-11-01%2C+Condition%3A+Excellent%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp%3E%3Cbr%3EWhich+asset+would+you+like+to+retire%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22HP+ProBook+%28SN%3A+ABC123DEF456%29%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+will+mark+the+following+asset+as+%3Cb%3ERetired%3C%2Fb%3E+in+%3Cb%3EServiceNow%3C%2Fb%3E%3A%3Cbr+%2F%3E%3Cbr+%2F%3E%3Cul%3E%3Cli%3E%3Cb%3EAsset+Name%3A%3C%2Fb%3E+HP+ProBook%3C%2Fli%3E%3Cli%3E%3Cb%3EAsset+Tag%3A%3C%2Fb%3E+ACME-L-00123%3C%2Fli%3E%3Cli%3E%3Cb%3ESerial+Number%3A%3C%2Fb%3E+ABC123DEF456%3C%2Fli%3E%3Cli%3E%3Cb%3EOwner%3A%3C%2Fb%3E+John+Doe%3C%2Fli%3E%3C%2Ful%3E%3Cbr+%2F%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+asset+status+to+%3Cb%3ERetired%3C%2Fb%3E+in+%3Cb%3EServiceNow%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22The+asset+has+been+successfully+retired.%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22servicenow%22%2C%22citationTitle%22%3A%22HP+ProBook+%28ACME-L-00123%29%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow the [**ServiceNow Connector Guide**](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) in Agent Studio’s Resources section for detailed setup instructions. Once your ServiceNow connector is successfully configured, proceed to install the **ServiceNow Asset Retirement** plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the appropriate access required to update asset records via the ServiceNow Table API.

**Required Roles / Permissions:**

- Permission to **read** records from the `alm_asset` table
- Permission to **update** records in the `alm_asset` table (including lifecycle fields such as `install_status`)
- Permission to **query** reference fields such as:
    - `assigned_to`
    - `model`
    - `department`
    - `location`

After configuring the connector with the correct permissions, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation)  for more details on completing the setup.

## **Appendix**

## **API #1 : Get Asset Install Status**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_choice?sysparm_query=name%3Dalm_asset%5Eelement%3Dinstall_status&sysparm_fields=value%2Clabel%2Csequence&sysparm_limit=50' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- **`sysparm_query`** – Filters the results to return only the choice values for the
    
    `alm_asset` table’s `install_status` field.
    
- **`sysparm_fields`** – Limits the response to only the required fields:
    - `value` (the internal ID)
    - `label` (the human-readable status)
    - `sequence` (the display order)
- **`sysparm_limit`** – Restricts the number of records returned (e.g., 50).

## **API #2 : Get Non Retired Assets**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_fields=sys_id%2Cdisplay_name%2Casset_tag%2Cassigned_to.name%2Cassigned_to.email%2Cdepartment.name%2Cowned_by.name%2Cserial_number%2Cmodel_category.name%2Ccompany.name%2Cinstall_status%2Ccost%2Csys_updated_on%2Clife_cycle_stage_status&sysparm_query={{FILTER_QUERY}}&sysparm_limit=50&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- **`sysparm_query`** – A ServiceNow encoded query that controls which assets are returned.
    
    Example patterns that may be included inside `{{FILTER_QUERY}}`:
    
    - `display_nameLIKE{{SEARCH_TERM}}` – Filters assets whose name contains a specific value.
    - `install_statusNOT IN7` – Excludes assets marked as *Retired*.
    - Any valid encoded query expression supported by the `alm_asset` table.
- **`sysparm_fields`** – Limits the response to only the fields required for the workflow.
- **`sysparm_limit`** – Specifies the maximum number of records to return (e.g., 50).
- **`sysparm_display_value`** – When set to `true`, returns readable display values instead of raw Sys IDs.

## **API #3 : Retire an Asset**

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/now/table/alm_asset/{{ASSET_SYS_ID}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "install_status": "{{INSTALL_STATUS}}"
}'
```

**Request Body Parameters:**

- **`install_status`**
    
    The updated status value for the asset.
    
    **Path Parameters:**
    
    - **`{{ASSET_SYS_ID}}`**
        
        The unique `sys_id` of the asset record you want to update in the **alm_asset** table.