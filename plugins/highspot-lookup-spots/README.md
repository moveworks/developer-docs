---
availability: INSTALLABLE
description: A plugin that allows you to lookup a user's spots in Highspot.
installation_asset_uuid: b547e459-5ebd-49ba-bde9-209b4d076f74
name: Look Up a User’s Spots
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+what+spots+I+have+in+Highspot.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+spots+in+Highspot%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+spots+you+have+in+Highspot%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+%3Cu%3ESomu%27s+Content+%3C%2Fu%3E-+A+spot+for+Somu%27s+personal+items+%3Cbr%3E%5Cn2.+%3Cu%3EProduct+Roadmap%3C%2Fu%3E+-+A+spot+for+all+Product+Roadmap+items%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Somu%27s+Content%22%2C%22connectorName%22%3A%22highspot%22%7D%2C%7B%22citationTitle%22%3A%22Product+Roadmap%22%2C%22connectorName%22%3A%22highspot%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- highspot
---

# Get User’s Spots

The **highspot_get_spots** plugin allows users to retrieve a list of **Spots** they have access to in **Highspot**—including pitch spaces, folders, or collections. This makes it easy to find and interact with relevant content spaces directly through the Moveworks AI Assistant.

This guide will help you install the plugin quickly using Agent Studio. Let’s get started!

## Prerequisites

- Access to **Agent Studio**

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+look+up+what+spots+I+have+in+Highspot.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+spots+in+Highspot%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+spots+you+have+in+Highspot%3A%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E1.+%3Cu%3ESomu%27s+Content+%3C%2Fu%3E-+A+spot+for+Somu%27s+personal+items+%3Cbr%3E%5Cn2.+%3Cu%3EProduct+Roadmap%3C%2Fu%3E+-+A+spot+for+all+Product+Roadmap+items%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Somu%27s+Content%22%2C%22connectorName%22%3A%22highspot%22%7D%2C%7B%22citationTitle%22%3A%22Product+Roadmap%22%2C%22connectorName%22%3A%22highspot%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend creating the connector for Highspot first, prior to installing this plugin. Please follow the [Highspot Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=highspot) Guide to create the
connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

## Appendix

### API: Get User’s Spots

**Method:** `GET`

**Endpoint:**

```bash
https://api.highspot.com/v1.0/spots
```

**Headers:**

```bash
Content-Type: application/json
hs-user: <user_email>
Authorization: Basic <base64 credential>
```

**Example:**

```bash
curl --location 'https://api.highspot.com/v1.0/spots' \
--header 'Content-Type: application/json' \
--header 'hs-user: your.name@company.com' \
--header 'Authorization: Basic dX**********************'
```