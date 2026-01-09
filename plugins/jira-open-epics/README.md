---
availability: INSTALLABLE
description: A plugin that allows looking up assigned epics in Jira that are still
  in progress.
installation_asset_uuid: c8c1aa79-1867-4cdb-b761-fb22ec1b6879
name: Lookup Open Epics
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E+What+open+epics+are+in+project+Kalistar%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERetrieve+Epics+for+Project%3C%2Fb%3E+for+%5C%22Kalistar%5C%22%3Cbr%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+currently+open+epics%3A%3Cbr%3E%3Cb%3EEPIC-111%3A%3C%2Fb%3E+Implement+new+security+protocols%3Cbr%3E%3Cb%3EEPIC-222%3A%3C%2Fb%3E+Upgrade+network+infrastructure%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22EPIC-111%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22EPIC-222%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+visit+JIRA+for+more+details+or+take+any+action+on+these+epics%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---

# Introduction

Jira is a leading platform for managing projects and tasks across industries. The **Lookup Open Epics** plugin streamlines the process of retrieving and tracking epics that are actively assigned but not yet completed. It offers quick visibility into ownership and progress, helping teams stay aligned with their goals and delivery timelines.

Integrating this feature with your bot enables seamless lookup and management of open epics through conversational queries, enhancing team productivity and collaboration.

This guide walks you through adding the "**Lookup Open Epics**" feature to your bot using Agent Studio.

Let's get started!

# Prerequisites

- Access to Agent Studio

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E+What+open+epics+are+in+project+Kalistar%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ERetrieve+Epics+for+Project%3C%2Fb%3E+for+%5C%22Kalistar%5C%22%3Cbr%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+currently+open+epics%3A%3Cbr%3E%3Cb%3EEPIC-111%3A%3C%2Fb%3E+Implement+new+security+protocols%3Cbr%3E%3Cb%3EEPIC-222%3A%3C%2Fb%3E+Upgrade+network+infrastructure%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22EPIC-111%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22EPIC-222%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+visit+JIRA+for+more+details+or+take+any+action+on+these+epics%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To build this use case, we will utilize two APIs. Since our goal is to fetch open, assigned epics, we'll focus on Jira's issue-related APIs. Only two API calls are required to achieve this.

## API #1: Get projects paginated

The [**Get Projects Paginated**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-projects/#api-rest-api-3-project-search-get) API in Jira allows you to retrieve accessible projects in a paginated format, improving efficiency for large instances. It also supports filtering projects by keyword using query parameters.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/project/search' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## API #2: Search for issues using JQL enhanced search (GET)

The [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API enables you to search for issues using Jira Query Language (JQL). This API is ideal for filtering epics assigned to users that are not closed across all accessible projects. It also supports additional query parameters for refining search results, such as specifying fields to include in the response.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```