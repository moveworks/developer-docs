---
availability: INSTALLABLE
description: A plugin that lets you identify common / standard software available
  to employees at your organization.
installation_asset_uuid: f4003ba5-0407-47fe-bf09-793c705ebd2d
name: Find Standard Software
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+software+do+employees+have+access+to+for+project+management%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EProject+Management+Software%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EFind+Standard+Software%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Employees+have+access+to+the+following+project+management+software%3A%3Cbr%3E-+%3Cb%3EJira%3C%2Fb%3E%3Cbr%3E-+%3Cb%3EAsana%3C%2Fb%3E%3Cbr%3E-+%3Cb%3ETrello%3C%2Fb%3E%3Cbr%3EWould+you+like+to+begin+the+process+to+get+access+to+any+of+these%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Access+Jira%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Access+Asana%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Access+Trello%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%2C+thank+you%22%7D%5D%7D%5D%7D%5D%7D
redirects:
- microsoftpowerautomate-standard-software
solution_tags:
- IT
systems:
- okta
---

## Introduction

The “Find Standard Software” plugin enables employees to easily look up which software and apps are approved and available for use in their company, all through the Moveworks AI Assistant. This allows users to quickly discover IT-sanctioned tools without browsing internal portals or contacting the helpdesk—streamlining access to the right software for their role.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+software+do+employees+have+access+to+for+project+management%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EProject+Management+Software%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EFind+Standard+Software%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Employees+have+access+to+the+following+project+management+software%3A%3Cbr%3E-+%3Cb%3EJira%3C%2Fb%3E%3Cbr%3E-+%3Cb%3EAsana%3C%2Fb%3E%3Cbr%3E-+%3Cb%3ETrello%3C%2Fb%3E%3Cbr%3EWould+you+like+to+begin+the+process+to+get+access+to+any+of+these%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Access+Jira%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Access+Asana%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Access+Trello%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%2C+thank+you%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Okta** before installing this plugin. Please follow the [Okta Connector](https://developer.moveworks.com/marketplace/package/?id=okta&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- `okta.apps.read`
- `okta.groups.read`

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Group Id by using Group Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/v1/groups?q=<GROUP_NAME>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'

```

**Query Parameters:**

- `GROUP_NAME`(string) –  Group Name to retrieve Apps using `group_id`.

### **API #2: Get Apps using the Group Id**

```bash
curl --location "https://<YOUR_INSTANCE>/api/v1/groups/<GROUP_ID>/apps" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"

```

**Path Parameters:**

- `GROUP_ID` (string) –  The unique ID of the group for which to retrieve apps.