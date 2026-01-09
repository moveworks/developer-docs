---
availability: INSTALLABLE
description: A plugin that provides a summary of open incidents to stay on top of
  critical issues.
installation_asset_uuid: e1dfcd50-6cd9-417f-8634-86f7ccbbd152
name: Identify Open Incidents
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+show+me+a+summary+of+open+incidents%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+let+me+fetch+the+open+incidents+for+you.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+data+from+PagerDuty%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+these+open+incidents%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EIncident+1%3A%3C%2Fstrong%3E+Database+issues%3C%2Fp%3E%3Cp%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+High%3C%2Fp%3E%3Cp%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Triggered%3C%2Fp%3E%3Cp%3E%3Cstrong%3EAssigned+to%3A%3C%2Fstrong%3E+John+Doe%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EIncident+2%3A%3C%2Fstrong%3E+Network+outage%3C%2Fp%3E%3Cp%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+Critical%3C%2Fp%3E%3Cp%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Acknowledged%3C%2Fp%3E%3Cp%3E%3Cstrong%3EAssigned+to%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Engineering
- IT
systems:
- pagerduty
video: https://www.loom.com/share/d75d0a5d724e40b59e9b0f8376a39f78?sid=c0db0449-8c69-4628-86f9-2b3a2c7f9ff5
---

# Identify Open Incidents

## **Introduction:-**

The **“Identify Open Incidents”** Plugin equips support and incident response teams with instant visibility into unresolved incidents in PagerDuty. By surfacing active (non-resolved) incidents directly in Moveworks conversations, this plugin streamlines triage, reduces time spent checking external dashboards, and accelerates issue resolution.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+show+me+a+summary+of+open+incidents%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+let+me+fetch+the+open+incidents+for+you.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+data+from+PagerDuty%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+these+open+incidents%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EIncident+1%3A%3C%2Fstrong%3E+Database+issues%3C%2Fp%3E%3Cp%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+High%3C%2Fp%3E%3Cp%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Triggered%3C%2Fp%3E%3Cp%3E%3Cstrong%3EAssigned+to%3A%3C%2Fstrong%3E+John+Doe%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3EIncident+2%3A%3C%2Fstrong%3E+Network+outage%3C%2Fp%3E%3Cp%3E%3Cstrong%3EPriority%3A%3C%2Fstrong%3E+Critical%3C%2Fp%3E%3Cp%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Acknowledged%3C%2Fp%3E%3Cp%3E%3Cstrong%3EAssigned+to%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for PagerDuty first, prior to installing this plugin. Please follow the  [PagerDuty Connector](https://developer.moveworks.com/marketplace/package/?id=pagerduty&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API #1 : Get Unresolved Incidents** 

```bash
curl --location --globoff 'https://api.pagerduty.com/incidents?since={{from_date}}&until={{date_until}}&statuses[]=triggered&statuses[]=acknowledged&limit=100' \
--header 'Authorization: Token <Your Access Token>'
```

### **Query Parameters:**

- **`since`** *(string, ISO 8601)* – Start of the time range to fetch incidents from.
    
    Example: `2024-06-01T00:00:00Z`
    
- **`until`** *(string, ISO 8601)* – End of the time range to fetch incidents up to.
    
    Example: `2024-06-20T23:59:59Z`
    
- **`statuses[]`** *(array)* – Filters incidents by their status. Common values:
    - `triggered`: Incident has been created and is awaiting acknowledgment.
    - `acknowledged`: Incident has been acknowledged by a responder.

---

### **Pagination:**

- **`limit`** *(integer)* – Maximum number of incidents to return in a single response.
    - Default: `25`
    - Maximum: `100`