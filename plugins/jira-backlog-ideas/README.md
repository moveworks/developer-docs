---
availability: INSTALLABLE
description: A plugin that allows retrieving ideas from your backlog in Jira.
installation_asset_uuid: a3e60d56-5302-4777-bc51-7879c32bcff0
name: Lookup Backlog Ideas
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+backlog+items+from+Project+Iron+that+reference+onboarding.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+%27s+backlog+items+from+Project+Iron+with+keyword+onboarding.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+current+Jira+backlog+for+Project+Iron+with+keyword+%27onboarding%27%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+1%3A+Implement+onboarding+feature%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+High%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-123%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+2%3A+Resolve+onboarding+task+resolution%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Medium%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-124%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+3%3A+Update+user+onboarding+date%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Low%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-125%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Approvals
- IT
- Project Management
systems:
- jira
---

# Introduction

Jira is a leading platform for managing projects and ideas across industries. Jira Backlog Ideas simplifies retrieving ideas or tickets from your backlog by filtering based on project names and keywords, helping teams prioritize and act efficiently.

Integrating this feature with your bot allows you to fetch and manage backlog ideas instantly through conversational queries, boosting productivity.

This guide walks you through adding the "**Lookup Backlog Ideas**" feature to your bot using Agent Studio.

Let's get started!

# Prerequisites

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+backlog+items+from+Project+Iron+that+reference+onboarding.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+%27s+backlog+items+from+Project+Iron+with+keyword+onboarding.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+current+Jira+backlog+for+Project+Iron+with+keyword+%27onboarding%27%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+1%3A+Implement+onboarding+feature%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+High%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-123%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+2%3A+Resolve+onboarding+task+resolution%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Medium%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-124%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3EBacklog+Item+3%3A+Update+user+onboarding+date%3C%2Fb%3E%3Cbr%3E%3Cb%3EStatus%3A%3C%2Fb%3E+To+Do%3Cbr%3E%3Cb%3EPriority%3A%3C%2Fb%3E+Low%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22IR-125%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To build this use case, we will utilize three APIs. Since we are working with Jira backlog ideas, it’s essential to explore the backlog-related APIs provided by Jira. Only three API calls are needed for this use case.

## API #1: Get projects paginated

The [**Get Projects Paginated**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-projects/#api-rest-api-3-project-search-get) API in Jira allows you to retrieve accessible projects in a paginated format, improving efficiency for large instances. It also supports filtering projects by keyword using query parameters.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## API #2: Get Board Details

The **Get Board Details** API in Jira allows you to retrieve board details for all accessible projects. It also supports filtering projects using the projectKeyOrId query parameter.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/agile/1.0/board?projectKeyOrId={projectKeyOrId}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## API #3: Fetch the backlog issues

The **Fetch Backlog Issues** API in Jira allows you to retrieve all issues from specific board IDs. It also supports JQL to filter issues by a specific keyword

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/agile/1.0/board/{boardId}/backlog' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```