---
availability: INSTALLABLE
description: A plugin that allows the creation of appropriate change requests from
  incidents.
installation_asset_uuid: 18e5a276-e3d7-4a1c-b598-6ac40d42691c
name: Create a Change Request from an Incident
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+change+request+from+a+ServiceNow+incident%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+What+is+the+incident+number+or+can+you+give+me+a+description+to+search+for%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+the+one+about+the+email+server+being+down%2C+I+think+the+number+is+INC0010042%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+for+incidents+matching+a+keyword+%3Ccode%3Eemail+server%3C%2Fcode%3E+and+ID+%3Ccode%3EINC0010042%3C%2Fcode%3E%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFound+one+matching+incident.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+that+incident.+What+type+of+change+request+is+this%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Standard%22%7D%2C%7B%22buttonText%22%3A%22Normal%22%7D%2C%7B%22buttonText%22%3A%22Emergency%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Emergency%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+create+an+%3Cb%3EEmergency%3C%2Fb%3E+change+request+based+on+this+incident.+Here+are+the+details+I%27ve+pulled+from+the+incident%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EShort+Description%3A%3C%2Fb%3E+Email+server+is+down%3C%2Fli%3E%3Cli%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Users+are+reporting+that+they+are+unable+to+send+or+receive+emails.+The+issue+appears+to+have+started+at+2%3A00+PM+EST.+The+mail+queue+is+backed+up+and+not+processing.%3C%2Fli%3E%3Cli%3E%3Cb%3EConfiguration+Item%3A%3C%2Fb%3E+outlook-prod-mail-server-01%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Change+Request%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Create+Change+Request%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECreating+a+new+change+request+in+ServiceNow%2C+linking+it+to+incident+INC0010042%2C+and+assigning+it+to+the+Database+team.%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESuccessfully+created+change+request.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+created+the+change+request+%3Cb%3ECHG0030001%3C%2Fb%3E+and+linked+it+to+the+original+incident.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG0030001%3A+Email+server+is+down%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## **Introduction:**

The **Create Change Request from Incident** plugin empowers IT teams to quickly generate a Change Request in ServiceNow directly from an existing Incident record using the Moveworks AI Assistant. This streamlines the change management process by reducing manual effort, improving traceability, and accelerating the resolution of issues that require infrastructure or process modifications.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:**

- Access to Agent Studio

## **What are we building?**

## **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+change+request+from+a+ServiceNow+incident%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+What+is+the+incident+number+or+can+you+give+me+a+description+to+search+for%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+the+one+about+the+email+server+being+down%2C+I+think+the+number+is+INC0010042%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+for+incidents+matching+a+keyword+%3Ccode%3Eemail+server%3C%2Fcode%3E+and+ID+%3Ccode%3EINC0010042%3C%2Fcode%3E%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFound+one+matching+incident.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+that+incident.+What+type+of+change+request+is+this%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Standard%22%7D%2C%7B%22buttonText%22%3A%22Normal%22%7D%2C%7B%22buttonText%22%3A%22Emergency%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Emergency%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+create+an+%3Cb%3EEmergency%3C%2Fb%3E+change+request+based+on+this+incident.+Here+are+the+details+I%27ve+pulled+from+the+incident%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EShort+Description%3A%3C%2Fb%3E+Email+server+is+down%3C%2Fli%3E%3Cli%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Users+are+reporting+that+they+are+unable+to+send+or+receive+emails.+The+issue+appears+to+have+started+at+2%3A00+PM+EST.+The+mail+queue+is+backed+up+and+not+processing.%3C%2Fli%3E%3Cli%3E%3Cb%3EConfiguration+Item%3A%3C%2Fb%3E+outlook-prod-mail-server-01%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Change+Request%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Create+Change+Request%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECreating+a+new+change+request+in+ServiceNow%2C+linking+it+to+incident+INC0010042%2C+and+assigning+it+to+the+Database+team.%3C%2Fp%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESuccessfully+created+change+request.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+created+the+change+request+%3Cb%3ECHG0030001%3C%2Fb%3E+and+linked+it+to+the+original+incident.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG0030001%3A+Email+server+is+down%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our **[ServiceNow Connector Guide](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement)** for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following required permissions:

- **Read** and **Update** access to the **Incident** (`incident`) table – for fetching incident details and linking a Change Request back to the incident
- **Create** access to the **Change Request** (`change_request`) table – for submitting new change requests
- **Read** access to the **Change Model** (`chg_model`) table – for retrieving change model types

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get Incident Details by Short Description**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=short_descriptionLIKE<SHORT_DESCRIPTION>&sysparm_limit=5&sysparm_fields=number%2Cshort_description' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' 

```

**Query Parameters:**

- `SHORT_DESCRIPTION` – Filters incidents where the short description contains the specified keyword .

### **API #2: Get Incident Details by Incident Number**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=number%3D<INCIDENT_NUMBER>' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <ENCODED_CREDENTIALS>'
```

**Query Parameters:**

- `INCIDENT_NUMBER`  – The unique incident number

### **API #3 Get Change Model List**

```bash

curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/chg_model?sysparm_fields=sys_name%2Csys_id' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `sysparm_fields`(string) – Fields to include in the response

**API #4: Create a Change Request**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/change_request' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "chg_model": "<CHANGE_MODEL_SYS_ID>",
   "short_description": "<SHORT_DESCRIPTION>",
   "cmdb_ci": "<CONFIGURATION_ITEM>"
   }'
```

**Query Parameters:**

- `CHANGE_MODEL_SYS_ID` **(string)** – The Change Model Sys ID. This defines the type of change
- `SHORT_DESCRIPTION` **(string)** – Short description of the Incident for creating the Change Request.
- `CONFIGURATION_ITEM` **(string)** – ****Configuration Item ****of the Incident for creating the Change Request.

### **API #5: Link a Change Request to an Incident**

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident/<INCIDENT_SYS_ID>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "rfc": "<CHANGE_REQUEST_SYS_ID>"
}'

```

**Request Body Parameters:**

- `CHANGE_REQUEST_SYS_ID`  **(string)** – The Sys ID of the change request that caused this incident. This creates a relationship between the incident and the change request.

**Path Parameters:**

- `INCIDENT_SYS_ID` **(string)** – The Sys ID of the incident