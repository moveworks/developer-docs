---
availability: INSTALLABLE
description: A plugin that identifies contracts nearing expiration, facilitating timely
  renewals or negotiations.
installation_asset_uuid: b71351ef-e9f3-4810-820c-fbb28df7ef78
name: Look Up Contracts up for Renewal
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+contracts+nearing+expiration%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+find+contracts+nearing+expiration+in+%3Cb%3EServiceNow%3C%2Fb%3E.+By+default%2C+I%27ll+look+for+contracts+expiring+in+the+next+90+days.+Do+you+want+to+use+a+different+timeframe+or+add+other+filters%2C+like+vendor+name%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Use+90+days%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Set+a+different+timeframe%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Filter+by+Vendor%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EUse+90+days%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+contracts+expiring+in+the+next+90+days.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+5+contracts.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+top+3+contracts+in+%3Cstrong%3EServiceNow%3C%2Fstrong%3E+expiring+in+the+next+90+days%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ECTR-00123+%28Global+Tech+Solutions%29%3C%2Fstrong%3E+-+Expires+in+30+days%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ECTR-00456+%28Innovate+Inc.%29%3C%2Fstrong%3E+-+Expires+in+62+days%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ECTR-00789+%28Data+Systems+LLC%29%3C%2Fstrong%3E+-+Expires+in+85+days%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CTR-00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CTR-00456%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CTR-00789%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## **Introduction:-**

The **“Look Up Contracts up for Renewal”** plugin empowers users to quickly identify contracts nearing their expiration date—directly through the Moveworks AI Assistant. By simply specifying a date range or vendor name, users can access critical contract details such as contract numbers, vendor names, and expiration dates. This proactive capability streamlines contract management, helping teams stay ahead of renewals and avoid service disruptions.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+contracts+nearing+expiration%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+find+contracts+nearing+expiration+in+%3Cb%3EServiceNow%3C%2Fb%3E.+By+default%2C+I%27ll+look+for+contracts+expiring+in+the+next+90+days.+Do+you+want+to+use+a+different+timeframe+or+add+other+filters%2C+like+vendor+name%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Use+90+days%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Set+a+different+timeframe%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Filter+by+Vendor%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EUse+90+days%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+contracts+expiring+in+the+next+90+days.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+5+contracts.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+top+3+contracts+in+%3Cstrong%3EServiceNow%3C%2Fstrong%3E+expiring+in+the+next+90+days%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3ECTR-00123+%28Global+Tech+Solutions%29%3C%2Fstrong%3E+-+Expires+in+30+days%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ECTR-00456+%28Innovate+Inc.%29%3C%2Fstrong%3E+-+Expires+in+62+days%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ECTR-00789+%28Data+Systems+LLC%29%3C%2Fstrong%3E+-+Expires+in+85+days%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CTR-00123%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CTR-00456%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22CTR-00789%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for ServiceNow first, prior to installing this plugin. Please follow the  [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API #1 : Get Contracts** 

```bash
curl --location 'https://<your-instance>.service-now.com/api/now/table/ast_contract?sysparm_limit={{limit}}&sysparm_fields=number%2Cvendor.name%2Cexpiration.name%2Cends&sysparm_query=ORDERBYDESCnumber%5Evendor.name%3D{{vendor_name}}%5EendsBETWEEN{{start_date}}%40{{end_date}}' \
--header 'Authorization: Bearer {{your_access_token}}'
```

**Query Parameters:**

- `sysparm_limit={{limit}}`
    
    Limits the number of contract records returned (e.g., 50, 100).
    
- `sysparm_fields=number,vendor.name,expiration.name,ends`
    
    Returns only the specified fields for each contract:
    
    - `number` → Contract number
    - `vendor.name` → Name of the associated vendor
    - `expiration.name` → Expiration details
    - `ends` → Contract end date
- `sysparm_query=ORDERBYDESCnumber^vendor.name={{vendor_name}}^endsBETWEEN{{start_date}}@{{end_date}}`
    
    Applies a filter and sorting on the results:
    
    - `ORDERBYDESCnumber` → Sorts the contracts by number in descending order
    - `vendor.name={{vendor_name}}` → Filters by vendor name (e.g., *Acer*)
    - `endsBETWEEN{{start_date}}@{{end_date}}` → Retrieves contracts whose end date falls between the given date range (e.g., *2025-07-03 to 2025-10-01*)