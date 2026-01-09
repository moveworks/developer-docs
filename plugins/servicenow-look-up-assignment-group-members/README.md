---
availability: INSTALLABLE
description: A plugin that allows a user to look up the members of assignment groups
  they are a part of.
installation_asset_uuid: cdd5ed1c-de01-462b-ab58-faf5d2fcae6c
name: Look Up My Assignment Group's Members
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+members+of+my+assignment+groups+in+servicenow%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assignment+groups+you+are+a+member+of.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+you+are+a+member+of+3+assignment+groups+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+one+would+you+like+to+see+the+members+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22IT+Support+-+Tier+1%22%7D%2C%7B%22buttonText%22%3A%22Network+Operations%22%7D%2C%7B%22buttonText%22%3A%22Change+Management%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Operations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+members+for+the+%27Network+Operations%27+group+from+%3Cb%3EServiceNow%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+members+of+the+%3Cb%3ENetwork+Operations%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3EAlice+Johnson%3C%2Fli%3E%3Cli%3EBob+Williams%3C%2Fli%3E%3Cli%3ECharlie+Brown%3C%2Fli%3E%3Cli%3EDiana+Prince%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Network+Operations%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow
---

## **Introduction:-**

The **“Look Up My Assignment Group's Members”** capability enables users to effortlessly view the members of their assignment group in ServiceNow through the Moveworks AI Assistant. By identifying the user's group association, the assistant retrieves and displays a real-time list of group members. This reduces dependency on manual lookups, promotes team visibility, and streamlines collaboration across IT support teams for faster issue resolution.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+members+of+my+assignment+groups+in+servicenow%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EServiceNow%3C%2Fb%3E+for+assignment+groups+you+are+a+member+of.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+you+are+a+member+of+3+assignment+groups+in+%3Cb%3EServiceNow%3C%2Fb%3E.+Which+one+would+you+like+to+see+the+members+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22IT+Support+-+Tier+1%22%7D%2C%7B%22buttonText%22%3A%22Network+Operations%22%7D%2C%7B%22buttonText%22%3A%22Change+Management%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Network+Operations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+members+for+the+%27Network+Operations%27+group+from+%3Cb%3EServiceNow%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+members+of+the+%3Cb%3ENetwork+Operations%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cul%3E%3Cli%3EAlice+Johnson%3C%2Fli%3E%3Cli%3EBob+Williams%3C%2Fli%3E%3Cli%3ECharlie+Brown%3C%2Fli%3E%3Cli%3EDiana+Prince%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Network+Operations%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for Servicenow first, prior to installing this plugin. Please follow the  [Servicenow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to set up the connector.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user`, `sys_user_group` and `incident` tables.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API # 1 : Get Users Groups By Email**

```bash
curl "https://<instance>.service-now.com/api/now/table/sys_user_grmember?sysparm_query=user.email={{email}}&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all" \
  --request GET \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic <your_access_token>"
```

### **Query Parameters:-**

- `email` – Dynamic placeholder for the user’s email address. This will be used to filter records based on the user.

**API # 2: Get Members Of A Group**

```bash
curl "https://<instance>.service-now.com/api/now/table/sys_user_grmember?sysparm_query=group=<group_sys_id>&sysparm_display_value=true&sysparm_fields=user" \
  --request GET \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic <your_access_token>"
```

### **Query Parameters:-**

- `<group_sys_id>` – Sys_id of the assignment group you want to look up.