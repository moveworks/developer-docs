---
availability: INSTALLABLE
description: A plugin that allows you to search for items in Highspot.
installation_asset_uuid: b52a0a88-8e01-4695-a61e-960901d35897
name: Search Items
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+find+some+sales+enablement+content+on+Highspot.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+what+kind+of+sales+enablement+content+are+you+looking+for%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+battlecards%2C+case+studies%2C+and+competitive+intel.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+Highspot%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+some+sales+enablement+items+I+found+on+%3Cstrong%3EHighspot%3A%3Cbr%3E%5Cn%3C%2Fstrong%3E1.+%3Cu%3EProduct+Vision+and+Capabilities+Deck%3C%2Fu%3E%3A+A+customer-facing+deck+to+introduce+and+speak+about+the+product%3Cbr%3E%5Cn2.+%3Cu%3EIntro+Deck+Template%3C%2Fu%3E+-+A+template+for+creating+intro+decks+with+customers%3Cbr%3E%5Cn3.+%3Cu%3ERoadmap+for+2025%3A%3C%2Fu%3E+A+roadmap+for+product+updates+in+2025.%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%5CnYou+can+explore+these+items+for+more+details+information.+If+you+need+further+assistance+feel+free+to+ask%3Cbr%3E%5Cn%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22highspot%22%2C%22citationTitle%22%3A%22Product+Vision+Deck%22%7D%2C%7B%22connectorName%22%3A%22highspot%22%2C%22citationTitle%22%3A%22Intro+Deck%22%7D%2C%7B%22connectorName%22%3A%22highspot%22%2C%22citationTitle%22%3A%22Roadmap%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- highspot
---

# Search Items in Highspot

The **highspot_get_items** plugin enables users to search for sales content and enablement materials in **Highspot** directly through the Moveworks AI Assistant. Users can find playbooks, presentations, case studies, and more using natural language queries.

This guide will help you install the plugin in just a few minutes using Agent Studio. Let’s get started!

## Prerequisites

- Access to **Agent Studio**

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+find+some+sales+enablement+content+on+Highspot.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+what+kind+of+sales+enablement+content+are+you+looking+for%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+battlecards%2C+case+studies%2C+and+competitive+intel.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+Highspot%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+some+sales+enablement+items+I+found+on+%3Cstrong%3EHighspot%3A%3Cbr%3E%5Cn%3C%2Fstrong%3E1.+%3Cu%3EProduct+Vision+and+Capabilities+Deck%3C%2Fu%3E%3A+A+customer-facing+deck+to+introduce+and+speak+about+the+product%3Cbr%3E%5Cn2.+%3Cu%3EIntro+Deck+Template%3C%2Fu%3E+-+A+template+for+creating+intro+decks+with+customers%3Cbr%3E%5Cn3.+%3Cu%3ERoadmap+for+2025%3A%3C%2Fu%3E+A+roadmap+for+product+updates+in+2025.%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%5CnYou+can+explore+these+items+for+more+details+information.+If+you+need+further+assistance+feel+free+to+ask%3Cbr%3E%5Cn%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22highspot%22%2C%22citationTitle%22%3A%22Product+Vision+Deck%22%7D%2C%7B%22connectorName%22%3A%22highspot%22%2C%22citationTitle%22%3A%22Intro+Deck%22%7D%2C%7B%22connectorName%22%3A%22highspot%22%2C%22citationTitle%22%3A%22Roadmap%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend creating the connector for Highspot first, prior to installing this plugin. Please follow the [Highspot Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=highspot) Guide to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

## Appendix

### API: Search Items in Highspot

**Method:** `GET`

**Endpoint:**

```bash
https://api.highspot.com/v1.0/search/items?query-string={{search_query}}
```

**Headers:**

```bash
Content-Type: application/json
hs-user: <user_email>
Authorization: Basic <base64 credential>
```

**Example:**

```bash
curl --location 'https://api.highspot.com/v1.0/search/items?query-string=sales%20enablement' \
--header 'Content-Type: application/json' \
--header 'hs-user: your.name@company.com' \
--header 'Authorization: Basic dX**********************'
```