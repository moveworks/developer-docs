---
description: A plugin that allows someone to look up items in the CMDB.
fidelity: GUIDE
name: Look up CMDB Items
difficulty_level: BEGINNER
time_in_minutes: 15
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+active+databases+are+in+our+CMDB%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+SQL+Database%3C%2Fb%3E%3Cbr%3E-+active%3Dtrue%3Cbr%3E-+type+contains+Database%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+active+databases+I+found+in+our+CMDB%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EDatabase+Instance+1%3C%2Fb%3E%3Cbr%3EType%3A+Database+Instance%3Cbr%3EStatus%3A+Active%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EDatabase+Instance+2%3C%2Fb%3E%3Cbr%3EType%3A+Database+Instance%3Cbr%3EStatus%3A+Active%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
video: https://youtu.be/_KXLx7OfbYM
---

## **Introduction**

The **“Look Up CMDB Items”** plugin enables employees to easily retrieve information about active and installed database instances in your ServiceNow Configuration Management Database (CMDB), directly through the Moveworks AI Assistant. Whether users are looking for database names, types, or statuses, this plugin simplifies access to critical configuration data without the need to navigate ServiceNow manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, so your team can quickly query database CIs and gain visibility into the infrastructure. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+active+databases+are+in+our+CMDB%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+SQL+Database%3C%2Fb%3E%3Cbr%3E-+active%3Dtrue%3Cbr%3E-+type+contains+Database%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+active+databases+I+found+in+our+CMDB%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EDatabase+Instance+1%3C%2Fb%3E%3Cbr%3EType%3A+Database+Instance%3Cbr%3EStatus%3A+Active%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EDatabase+Instance+2%3C%2Fb%3E%3Cbr%3EType%3A+Database+Instance%3Cbr%3EStatus%3A+Active%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Note: To enable the Look Up CMDB Items functionality, ensure the ServiceNow integration user has the appropriate table-level permissions.

Specifically, confirm the following permissions are granted:

- **Table Access**: `Read` access to the `cmdb_ci_database` tables.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Retrieve Active CMDB Items:**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/cmdb_ci_database?sysparm_query=install_status=1' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```
