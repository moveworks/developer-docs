---
description: A plugin that allows a user to fetch all public Slack channels.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: e9638b01-e658-4d57-ba6a-f73e43b38d68
name: Fetch Public Slack Channels
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+tell+me+which+public+channels+exist+in+our+workspace%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+%3Cb%3Epublic+Slack+channels%3C%2Fb%3E+currently+available+in+our+workspace%3A%3C%2Fp%3E%5Cn%3Col%3E%5Cn++%3Cli%3E%3Cb%3Erandom%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Ecricket%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Esocial%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Ecreator-studio%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Egeneral%3C%2Fb%3E%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
systems:
- slack
time_in_minutes: 30
---

# Introduction

The **Fetch Public Slack Channels** plugin lets users quickly view all public Slack channels through the Moveworks AI Assistant. It connects to your Slack workspace and makes it easy to find the right channels for communication and collaboration.

This guide will walk you through the quick and easy installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+tell+me+which+public+channels+exist+in+our+workspace%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+%3Cb%3Epublic+Slack+channels%3C%2Fb%3E+currently+available+in+our+workspace%3A%3C%2Fp%3E%5Cn%3Col%3E%5Cn++%3Cli%3E%3Cb%3Erandom%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Ecricket%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Esocial%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Ecreator-studio%3C%2Fb%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3Egeneral%3C%2Fb%3E%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Slack first, prior to installing this plugin. Please follow the [Slack Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=slack) guide to create the connector.

**Note**: For **Fetch Public Slack Channels** functionality, you will need to also add the following permissions (the connector guide will walk you through how to add permissions): 

- Assign the `channels:read`, `groups:read`, `im:read` and `mpim:read` scopes to the User token that is being used.

Once the connector is configured, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace) for more information on how to install a plugin. 

# Appendix

### API #1: **conversations.list**

The [conversations.list](https://api.slack.com/methods/conversations.list) API in Slack allows you to retrieve all public channels available in a workspace.