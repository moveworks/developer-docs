---
availability: INSTALLABLE
description: A plugin that allows a user to rename a Slack channel.
installation_asset_uuid: 6d6ae678-61c8-450d-8430-9a183d297563
name: Rename Slack Channel
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+convert+%23prospect-visa+to+%23customer-visa%3F%3Cbr%2F%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+help+you+rename+a+Slack+channel.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Verifying+user+permissions+to+rename+Slack+channels...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Confirmed+user+has+necessary+permissions.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+request%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EChannel+to+rename%3A+%23prospect-visa%3Cbr%3ENew+channel+name%3A+%23customer-visa%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Edit+Request%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooks+good%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Renaming+channel...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Channel+renamed+successfully.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+your+channel+has+been+changed.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Productivity
- Project Management
systems:
- slack
---

# Introduction

The **Rename Slack Channel** plugin allows users to easily rename a public Slack channel through the Moveworks AI Assistant. It connects to your Slack workspace and streamlines the process of updating channel names—making workspace organization simpler and more efficient.

This guide will walk you through the quick and easy installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- The **Fetch Public Slack Channels** plugin built in Agent Studio. It retrieves all public slack channels within the workspace. Refer to the [Fetch Public Slack Channels](https://developer.moveworks.com/creator-studio/resources/plugin?id=list-publick-slack-channels) guide for setup instructions.

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+convert+%23prospect-visa+to+%23customer-visa%3F%3Cbr%2F%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+help+you+rename+a+Slack+channel.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Verifying+user+permissions+to+rename+Slack+channels...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Confirmed+user+has+necessary+permissions.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+request%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3EChannel+to+rename%3A+%23prospect-visa%3Cbr%3ENew+channel+name%3A+%23customer-visa%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Edit+Request%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooks+good%21%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Renaming+channel...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Channel+renamed+successfully.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+your+channel+has+been+changed.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Slack first, prior to installing this plugin. Please follow the [Slack Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=slack) guide to create the connector.

**Note**: For **Rename Slack Channel** functionality, you will need to also add the following scopes (the connector guide will walk you through how to add scopes): 

- Assign the `channels:write`, `groups:write`, `im:write` and `mpim:write` scopes to the User token that is being used.

Once the connector is configured, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Customization Options

Some slot descriptions reference the **Fetch Public Slack Channels** plugin. Please update them only if this plugin was referred to by a different name.

# Appendix

### API #1: conversations.rename

The [conversations.rename](https://api.slack.com/methods/conversations.rename) API in Slack allows you to rename all public channels available in a workspace.