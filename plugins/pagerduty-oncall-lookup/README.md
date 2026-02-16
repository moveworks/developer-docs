---
availability: INSTALLABLE
description: A plugin that retrieves the current on call members for a team from Pagerduty.
installation_asset_uuid: 1e9bca2b-d8ed-464a-8444-1d848bfc13ae
name: Look up Oncall Members
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Who+is+the+current+on-call+for+the+%3Cb%3EInfrastructure%3C%2Fb%3E+team%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Sure+thing%21+Here+is+the+current+on-call+details+for+the+Infrastructure+team%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EIT+Infrastructure%3A+Paul+Brudebaker%3C%2Fb%3E%3Cbr%3E%3Cb%3EEmergency+Phone%3C%2Fb%3E%3A+%2B1+%28555%29+999-0000%5Cn%3Cb%3EOn-call+Since%3C%2Fb%3E%3A+July+1%2C+2023%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- pagerduty
---

## **Introduction:-**

The **“Look Up On-Call Members”** plugin enables users to instantly retrieve current on-call personnel for a specified PagerDuty team—directly through the Moveworks AI Assistant. By simply providing the team name, users can access key details like member names, contact numbers, and shift start times. This streamlined approach eliminates the need to navigate PagerDuty, accelerating escalations and improving response times.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Who+is+the+current+on-call+for+the+%3Cb%3EInfrastructure%3C%2Fb%3E+team%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Sure+thing%21+Here+is+the+current+on-call+details+for+the+Infrastructure+team%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EIT+Infrastructure%3A+Paul+Brudebaker%3C%2Fb%3E%3Cbr%3E%3Cb%3EEmergency+Phone%3C%2Fb%3E%3A+%2B1+%28555%29+999-0000%5Cn%3Cb%3EOn-call+Since%3C%2Fb%3E%3A+July+1%2C+2023%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for PagerDuty first, prior to installing this plugin. Please follow the  [PagerDuty Connector](https://developer.moveworks.com/marketplace/package/?id=pagerduty&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

**API #1 : Get Teams By Query**

```bash
curl --location 'https://api.pagerduty.com/teams?query={{team_name}}' \
--header 'Authorization: Bearer {{your_auth_token}}'
```

**Query Parameters:**

- `{{team_name}}` → Replace with the name of the team you're querying (e.g., `"Infrastructure"`).

**API #2 : GET Schedules By Team Id**

```bash
curl --location --globoff 'https://api.pagerduty.com/schedules?team_ids[]={{team_id}}' \
--header 'Authorization: Bearer {{your_auth_token}}'
```

**Query Parameters:**

- `{{team_id}}` → Replace with the actual PagerDuty Team ID.

**API #3 : GET Users By Schedule**

```bash
curl --location 'https://api.pagerduty.com/schedules/{{schedule_id}}/users' \
--header 'Authorization: Bearer {{your_auth_token}}'
```

**Query Parameters:**

- `{{schedule_id}}`: The ID of the PagerDuty schedule

**API #4 : GET User Contact Method**

```bash
curl --location 'https://api.pagerduty.com/users/{{user_id}}/contact_methods/{{contact_method_id}}' \
--header 'Authorization: Bearer {{your_auth_token}}'
```

**Query Parameters:**

- `{{user_id}}`: The ID of the PagerDuty user
- `{{contact_method_id}}`: The ID of the contact method for that user

**API #5 : GET Schedule Details**

```bash
curl --location 'https://api.pagerduty.com/schedules/{{schedule_id}}' \
--header 'Authorization: Bearer {{your_auth_token}}'
```

**Query Parameters:**

- `{{schedule_id}}`: The ID of the PagerDuty schedule