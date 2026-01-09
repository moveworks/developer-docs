---
availability: INSTALLABLE
description: A plugin that allows a user to identify which epics have been rolled
  over to a new sprint.
installation_asset_uuid: 38885b68-bff3-4ab1-b497-8d84119ec8c1
name: Look up Delayed Epics
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+make+sure+my+projects+don%27t+get+delayed+twice%2C+which+of+my+active+epics+have+been+rolled+over+already%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+check+that+for+you.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+active+epics...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+2+active+epics+that+have+been+rolled+over.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ESure%21+Here+are+your+rolled+over+epics%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EMigrate+ETL+infrastructure+to+new+platform%3C%2Fb%3E%3Cul%3E%3Cli%3EEpic+ID%3A+BD-723%3C%2Fli%3E%3Cli%3EStatus%3A+In+Progress%3C%2Fli%3E%3Cli%3EOriginal+Due+Date%3A+November+23%3C%2Fli%3E%3Cli%3ENew+Due+Date%3A+December+10%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAdd+multiple+sorting+levels+to+BizOps+table%3C%2Fb%3E%3Cul%3E%3Cli%3EEpic+ID%3A+BD-860%3C%2Fli%3E%3Cli%3EStatus%3A+In+Progress%3C%2Fli%3E%3Cli%3EOriginal+Due+Date%3A+November+18%3C%2Fli%3E%3Cli%3ENew+Due+Date%3A+December+6%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22BD-723%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22BD-860%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---

# **Introduction**

JIRA is a leading platform for managing projects and tasks across various industries. The **Look up Delayed Epics** designed to help teams track epics that have been carried over to a new sprint in Jira.

By integrating this feature into your bot, users can quickly identify which epics were not completed in their original sprint and have been rolled over, enabling better sprint planning and backlog management. This eliminates the need for manual tracking, saving time and improving project visibility.

This guide walks you through adding the **Look up Delayed Epics** feature to your bot using **Agent Studio**.

Let's get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+make+sure+my+projects+don%27t+get+delayed+twice%2C+which+of+my+active+epics+have+been+rolled+over+already%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+check+that+for+you.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+active+epics...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Found+2+active+epics+that+have+been+rolled+over.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3ESure%21+Here+are+your+rolled+over+epics%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EMigrate+ETL+infrastructure+to+new+platform%3C%2Fb%3E%3Cul%3E%3Cli%3EEpic+ID%3A+BD-723%3C%2Fli%3E%3Cli%3EStatus%3A+In+Progress%3C%2Fli%3E%3Cli%3EOriginal+Due+Date%3A+November+23%3C%2Fli%3E%3Cli%3ENew+Due+Date%3A+December+10%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAdd+multiple+sorting+levels+to+BizOps+table%3C%2Fb%3E%3Cul%3E%3Cli%3EEpic+ID%3A+BD-860%3C%2Fli%3E%3Cli%3EStatus%3A+In+Progress%3C%2Fli%3E%3Cli%3EOriginal+Due+Date%3A+November+18%3C%2Fli%3E%3Cli%3ENew+Due+Date%3A+December+6%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22BD-723%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22BD-860%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently implement the use case of fetching issues linked to a specific epic, we utilize two APIs with JQL filters.

![Delayed epics.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/fea6d706-1514-4e67-af30-aa7976eb8f46.png)

## **API #1: Search for Inprogress Epic issues**

The [Search for Inprogress epic issues using JQL enhanced search (GET)](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API enables you to retrieve in-progress epics using Jira Query Language (JQL). This API is ideal for filtering epics that are not closed across all accessible projects. It also supports additional query parameters for refining search results, such as specifying fields to include in the response.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## **API #2: Get changelogs**

Once the epic’s unique key is identified, the [Get changelogs](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issues/#api-rest-api-3-issue-issueidorkey-changelog-get) API can be used to fetch due date details of that particular epic.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueIdOrKey}/changelog' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```