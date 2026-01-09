---
availability: INSTALLABLE
description: A plugin that allows efficient searching for issues using specific keywords,
  helping to improve project tracking and workflow management.
installation_asset_uuid: dfa027a6-7e33-4f2b-81ea-35782b8e1278
name: Look Up Issue by Keyword
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EList+all+Jira+issues+regarding+Studio%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECreator+Studio+Login+Issues%3C%2Fb%3E%3Cbr%3EUpdate+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EStudio+Approvals%3C%2Fb%3E%3Cbr%3EImprove+the+approval+workflow+with+better+automation+and+UI+enhancements.%22%7D%5D%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---

# **Introduction**

JIRA is a leading platform for managing projects and tasks across various industries. The **Look Up Issue by Keyword** plugin enhances project tracking by enabling efficient searching for issues based on specific keywords.

By integrating this feature into your bot, you empower users to quickly find relevant issues without manually searching through Jira, improving workflow efficiency and team productivity.

This guide walks you through adding the **Look Up Issue by Keyword** feature to your bot using **Agent Studio**.

Let's get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EList+all+Jira+issues+regarding+Studio%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ECreator+Studio+Login+Issues%3C%2Fb%3E%3Cbr%3EUpdate+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EStudio+Approvals%3C%2Fb%3E%3Cbr%3EImprove+the+approval+workflow+with+better+automation+and+UI+enhancements.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case of fetching issues based on a specific keyword, we utilize a single API with dynamic JQL filters. This approach simplifies integration, optimizes search accuracy and reduces redundancy while leveraging the power of Jira Query Language (JQL).

## **API #1: Search Issues by Keyword**

The [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API allows you to retrieve issues based on a specified keyword using Jira Query Language (JQL). By applying a filter to search for issues containing the keyword, you can fetch relevant issue details, including issue key, status and other necessary fields for further operations.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```