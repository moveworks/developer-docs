---
availability: INSTALLABLE
description: A plugin that allows an agent to update the status of a given case.
installation_asset_uuid: 59b3482e-8485-4794-aeb2-0b8fbb8e547f
name: Update Status of a Case
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27ve+just+sorted+out+that+network+glitch.+Need+to+mark+it+as+resolved+in+ServiceNow.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+found+two+cases+for+you+about+network+issues%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ECase+1%3A+IT-12345+-+Network+outage+in+finance+department%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+In+Progress%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ECase+2%3A+IT-67890+-+Network+speed+issue+in+HR+department%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+Open%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EIt%27s+the+first+one%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELet%27s+update+the+status+of+the+case+IT-12345.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+case+update%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECase+ID%3A%3C%2Fb%3E+IT-12345%3Cbr%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+In+Progress%3Cbr%3E%3Cb%3ENew+Status%3A%3C%2Fb%3E+Resolved%3Cbr%3E%3Cb%3ESummary%3A%3C%2Fb%3E+Fixed+the+network+outage+reported+by+the+finance+department.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Update+Status+in+SNOW%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## **Introduction:-**

The **“Update Status of a Case”** plugin allows users to easily update the status of a ServiceNow case directly through the Moveworks AI Assistant. By providing the case number and selecting a status like In Progress, Resolved, or Closed, users can manage incidents faster without navigating ServiceNow. When marking a case as Resolved or Closed, the plugin also collects required fields like Resolution Code and Resolution Notes.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27ve+just+sorted+out+that+network+glitch.+Need+to+mark+it+as+resolved+in+ServiceNow.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+found+two+cases+for+you+about+network+issues%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ECase+1%3A+IT-12345+-+Network+outage+in+finance+department%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+In+Progress%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ECase+2%3A+IT-67890+-+Network+speed+issue+in+HR+department%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+Open%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EIt%27s+the+first+one%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELet%27s+update+the+status+of+the+case+IT-12345.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+case+update%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ECase+ID%3A%3C%2Fb%3E+IT-12345%3Cbr%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+In+Progress%3Cbr%3E%3Cb%3ENew+Status%3A%3C%2Fb%3E+Resolved%3Cbr%3E%3Cb%3ESummary%3A%3C%2Fb%3E+Fixed+the+network+outage+reported+by+the+finance+department.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Update+Status+in+SNOW%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the  [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API #1 : Get Incident By Category**

```bash
curl --location 'https://<your-instance>.service-now.com/api/now/table/incident?category={{category}}&sysparm_limit=100&sysparm_query=ORDERBYDESCnumber' \
--header 'Authorization: Bearer <your-access-token>'

```

**Query Parameters:**

- `{{category}}` → Replace with the incident category you're querying (e.g., `"network"`, `"software"`, `"hardware"`).
- `sysparm_limit` → Optional: Limit the number of returned records (e.g., `30`, `50`, `100`). The maximum is  `10000` if not explicitly set.

**API #2 : Get Incident By Incident Number**

```bash
curl --location 'https://<your-instance>.service-now.com/api/now/table/incident?number=<incident-number>' \
--header 'Authorization: Bearer <your-access-token>'
```

**Query Parameters:**

- `{{number}}` → Replace with the **incident number** you want to retrieve (e.g., `"INC0010001"`).

**API #3 : PUT Update State Of A Case**

```bash
curl --location --request PUT 'https://<your-instance>.service-now.com/api/now/table/incident/<incident-sys_id>' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
  "state": "{{state-value}}",
  "close_notes": "{{resolution_notes}}",
  "close_code": "{{resolution_code}}"
}'
```

**Query Parameters:**

- `{{incident_sys_id}}` → Replace with the **`sys_id`** of the incident you want to update

### Body Parameters:

- `{{state-value}}` → Provide the numeric value representing the new state of the incident (e.g., `6` for Resolved, `7` for Closed).
- `{{resolution_notes}}` → Enter the resolution or closing notes explaining how the issue was resolved.
- `{{resolution_code}}` → Choose a resolution code that best describes the resolution reason