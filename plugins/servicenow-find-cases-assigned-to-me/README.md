---
availability: INSTALLABLE
description: A plugin that lists all cases assigned assigned to an employee.
installation_asset_uuid: 6de358c9-5ec1-4fc6-9dab-038dfa2e5827
name: Find Cases Assigned To Me
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+my+cases+in+ServiceNow.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+all+cases+assigned+to+Gwen+from+ServiceNow.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+following+cases+assigned+to+you%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESN-101%3A+Outage+in+Finance+Department%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+In+Progress%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESN-102%3A+Laptop+Battery+Overheating%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Open%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESN-103%3A+Printer+not+working%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+In+Progress%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- servicenow
---

# **Introduction :**

The **“Find Cases Assigned to Me”** plugin allows employees to quickly view all the cases currently assigned to them in ServiceNow directly through the Moveworks AI Assistant. Whether they want to track the progress of their tickets, follow up on pending issues, or manage their workload efficiently, this plugin simplifies the process by retrieving case information without manual searching in ServiceNow.

This guide will walk you through installing and configuring the plugin in Agent Studio, so your team can easily access their assigned cases and stay on top of their tasks. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+my+cases+in+ServiceNow.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+all+cases+assigned+to+Gwen+from+ServiceNow.%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+the+following+cases+assigned+to+you%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESN-101%3A+Outage+in+Finance+Department%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+In+Progress%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESN-102%3A+Laptop+Battery+Overheating%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+Open%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESN-103%3A+Printer+not+working%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EStatus%3A%3C%2Fb%3E+In+Progress%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `sys_user` and `incident` tables.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Appendix**

## API #1: Find cases assigned **using user’s Email**

The **Find cases assigned using user’s Email** API retrieves cases assigned to an employee based on their email address.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/v1/table/incident?sysparm_query=assigned_to.email%3D{{email}}&sysparm_fields=short_description%2Capproval%2Cnumber' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameters**

- `<email>` (string) – The email address of the employee whose assigned cases need to be retrieved.