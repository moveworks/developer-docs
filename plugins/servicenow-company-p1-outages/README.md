---
availability: INSTALLABLE
description: A plugin that swiftly shows any outages or service disruptions for employees
  to be aware of.
installation_asset_uuid: b4908f1f-6e7a-4be8-8891-7cf213955fcf
name: Find Company p1 Outages
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+tell+me+about+any+major+outages+that+are+happening+-+someone+mentioned+there+was+a+recent+outage+affecting+some+people.+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EMajor+Outages%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EFind+Company+p1+Outages%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Currently%2C+there+is+a+key+spike+in+network+latency+affecting+our+East+Coast+operations%2C+which+we%27ve+identified+as+a+major+outage.+Our+IT+team+is+actively+working+to+resolve+the+issue.+%3Cbr%3EDo+you+need+details+on+the+expected+resolution+time+or+how+this+may+impact+specific+services%3F%22%7D%5D%7D%5D%7D
solution_tags:
- Engineering
- IT
systems:
- servicenow
---

# **Introduction :**

The **“Find Company P1 Outages”** plugin allows employees to quickly view the active Priority 1 (P1) outages impacting the company in ServiceNow directly through the Moveworks AI Assistant. This plugin streamlines the process by retrieving outage information without manual searching in ServiceNow.

This guide will walk you through installing and configuring the plugin in Agent Studio, so your team can easily access real-time P1 outage information and respond proactively.

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+tell+me+about+any+major+outages+that+are+happening+-+someone+mentioned+there+was+a+recent+outage+affecting+some+people.+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EMajor+Outages%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EFind+Company+p1+Outages%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Currently%2C+there+is+a+key+spike+in+network+latency+affecting+our+East+Coast+operations%2C+which+we%27ve+identified+as+a+major+outage.+Our+IT+team+is+actively+working+to+resolve+the+issue.+%3Cbr%3EDo+you+need+details+on+the+expected+resolution+time+or+how+this+may+impact+specific+services%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Table Access**: `Read` access to the `cmdb_ci_outage` table.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

# **Appendix**

## API #1: Find Company p1 Outages

The **Find Company p1 Outages** API retrieves active p1 outages currently impacting the company.

```bash
curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/table/cmdb_ci_outage?sysparm_query=ORDERBYDESCsys_created_on&sysparm_limit=1&sysparm_display_value=true' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```