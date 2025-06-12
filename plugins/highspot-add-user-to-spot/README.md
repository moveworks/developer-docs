---
description: A plugin that allows you to add a user to a spot in Highspot.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 7afb6dc9-dc81-4e80-b3e2-b6b40c38a3d1
name: Add a User to a Spot
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+add+Jay+Scotto+to+the+product+roadmap+spot%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EAdding+Jay+Scotto+to+Product+Roadmap+Spot+in+Highspot%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Ok%2C+adding+Jay+Scotto+to+the+Product+Roadmap+spot+in+Highspot.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Product+Roadmap%22%2C%22connectorName%22%3A%22highspot%22%7D%2C%7B%22citationTitle%22%3A%22Jay+Scotto%22%2C%22connectorName%22%3A%22highspot%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- highspot
time_in_minutes: 30
---

# Add User to Share Spot You Own

The **highspot_add_user_to_spot** plugin allows users to add team members to a **Spot** they own in **Highspot**, enabling collaboration and shared access to content. Users can quickly assign viewer permissions by providing the teammate’s email and the Spot ID.

This guide will help you install the plugin using Agent Studio. Let’s get started!

## Prerequisites

- Access to **Agent Studio**

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+add+Jay+Scotto+to+the+product+roadmap+spot%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EAdding+Jay+Scotto+to+Product+Roadmap+Spot+in+Highspot%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Ok%2C+adding+Jay+Scotto+to+the+Product+Roadmap+spot+in+Highspot.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Product+Roadmap%22%2C%22connectorName%22%3A%22highspot%22%7D%2C%7B%22citationTitle%22%3A%22Jay+Scotto%22%2C%22connectorName%22%3A%22highspot%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend creating the [Highspot connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=highspot) first before installing this plugin.

Please follow the [Highspot API Access Guide](https://api.highspot.com/) to configure API credentials and enable POST access.

For the **Add User to Share Spot You Own** plugin, ensure the connector includes the following headers:

- `hs-user` (email of the authenticated Highspot user)
- `Authorization` (Basic Auth with Base64 encoding)

Once the connector is configured, continue with the standard plugin installation process in Agent Studio.

[Visit our plugin installation documentation →](https://help.moveworks.com/docs/ai-agent-marketplace)

## Customization Options

You can configure the plugin to support different roles such as `viewer`, `editor`, or `owner`, depending on how your organization shares Spots.

## Appendix

### API: Add User to Spot

**Method:** `POST`

**Endpoint:**

```bash
https://api.highspot.com/v1.0/spots/{{spot_id}}/users?role=viewer
```

**Headers:**

```bash
Content-Type: application/json
hs-user: <user_email>
Authorization: Basic <base64 credential>
```

**Payload:**

```json
{
  "users": [
    "<new_user_email>"
  ]
}
```

**Example:**

```bash
curl --location 'https://api.highspot.com/v1.0/spots/{{spot_id}}/users?role=viewer' \
--header 'Content-Type: application/json' \
--header 'hs-user: your.name@company.com' \
--header 'Authorization: Basic dX******' \
--data-raw '{
  "users": [
    "teammate@company.com"
  ]
}'
```

**Docs:** [Highspot API Docs](https://api.highspot.com/)