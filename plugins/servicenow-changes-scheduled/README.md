---
availability: INSTALLABLE
description: A plugin that provides a consolidated view of all scheduled changes to
  enhance planning and resource allocation.
installation_asset_uuid: 9e0be65d-57f1-4ad7-9a6d-df7fba54c232
name: Get Changes Currently Scheduled
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+a+consolidated+view+of+all+scheduled+changes+from+ServiceNow%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFinding+all+scheduled+changes+on+ServiceNow%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+3+upcoming+changes+and+consolidated+them+for+you.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+a+consolidated+view+of+all+scheduled+changes+from+%3Cb%3EServiceNow%3C%2Fb%3E+to+enhance+planning+and+resource+allocation%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EDescription%3A%3C%2Fb%3E+Upgrade+Production+Database%3Cbr%3E%3Cb%3EPlanned+Start%3A%3C%2Fb%3E+2024-09-15+01%3A00+AM+UTC%3Cbr%3E%3Cb%3EPlanned+End%3A%3C%2Fb%3E+2024-09-15+04%3A00+AM+UTC%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003002%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EDescription%3A%3C%2Fb%3E+Deploy+new+CRM+application%3Cbr%3E%3Cb%3EPlanned+Start%3A%3C%2Fb%3E+2024-09-21+10%3A00+PM+UTC%3Cbr%3E%3Cb%3EPlanned+End%3A%3C%2Fb%3E+2024-09-22+02%3A00+AM+UTC%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003003%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EDescription%3A%3C%2Fb%3E+Network+switch+replacement+in+DC-01%3Cbr%3E%3Cb%3EPlanned+Start%3A%3C%2Fb%3E+2024-09-28+02%3A00+AM+UTC%3Cbr%3E%3Cb%3EPlanned+End%3A%3C%2Fb%3E+2024-09-28+03%3A00+AM+UTC%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## Introduction

The **“Get Changes Currently Scheduled”** plugin enables IT teams to efficiently **retrieve upcoming scheduled Change Requests** from **ServiceNow** using the Moveworks AI Assistant. This helps improve **planning, coordination, and operational visibility** by automatically listing all change activities that are scheduled but not yet executed.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+a+consolidated+view+of+all+scheduled+changes+from+ServiceNow%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EFinding+all+scheduled+changes+on+ServiceNow%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+3+upcoming+changes+and+consolidated+them+for+you.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+a+consolidated+view+of+all+scheduled+changes+from+%3Cb%3EServiceNow%3C%2Fb%3E+to+enhance+planning+and+resource+allocation%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EDescription%3A%3C%2Fb%3E+Upgrade+Production+Database%3Cbr%3E%3Cb%3EPlanned+Start%3A%3C%2Fb%3E+2024-09-15+01%3A00+AM+UTC%3Cbr%3E%3Cb%3EPlanned+End%3A%3C%2Fb%3E+2024-09-15+04%3A00+AM+UTC%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003002%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EDescription%3A%3C%2Fb%3E+Deploy+new+CRM+application%3Cbr%3E%3Cb%3EPlanned+Start%3A%3C%2Fb%3E+2024-09-21+10%3A00+PM+UTC%3Cbr%3E%3Cb%3EPlanned+End%3A%3C%2Fb%3E+2024-09-22+02%3A00+AM+UTC%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003003%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EDescription%3A%3C%2Fb%3E+Network+switch+replacement+in+DC-01%3Cbr%3E%3Cb%3EPlanned+Start%3A%3C%2Fb%3E+2024-09-28+02%3A00+AM+UTC%3Cbr%3E%3Cb%3EPlanned+End%3A%3C%2Fb%3E+2024-09-28+03%3A00+AM+UTC%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Ensure the following permissions are granted:

- **Table Access**: `Read` access to the Change Request table
- **Field Access**: Sufficient access to retrieve information related to scheduled changes

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**

## **Appendix**

### API #1: **Get Changes Currently Scheduled**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request?sysparm_query=start_date%3Ejavascript%3Ags.now()%5Estart_dateISNOTEMPTY%5Eend_dateISNOTEMPTY%5EstateNOT%20IN6%2C7%2C-5%5EORDERBYstart_date&sysparm_fields=number%2Cshort_description%2Cstart_date%2Cend_date&sysparm_limit=10&sysparm_offset=0' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `start_date > gs.now()` – Filters change requests scheduled to start in the future
- `start_dateISNOTEMPTY & end_dateISNOTEMPTY` – Ensures only valid scheduled records are returned
- `stateNOT IN6,7,-5` – Excludes changes that are canceled, closed, or rejected
- `ORDERBYstart_date` – Sorts results by upcoming start date
- `sysparm_fields` – Limits fields in the response to include only relevant schedule information
- `sysparm_limit` – Max number of records to retrieve
- `sysparm_offset` – Offset for paginated responses