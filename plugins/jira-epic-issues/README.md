---
availability: INSTALLABLE
description: A plugin that allows efficient searching for JIRA issues linked to a
  specific EPIC, helping improve project tracking.
installation_asset_uuid: 971404c1-a937-4775-aaeb-3ae24da9fa1d
name: Look up JIRA Issues for an Epic
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey%2C+can+you+find+tickets+in+JIRA+that+are+part+of+Creator+Studio+epic%3F%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cstrong%3EEPIC+Summary+%3C%2Fstrong%3Efor+%3Cstrong%3ECreator+Studio%3C%2Fstrong%3E+epic%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+Creator+Studio+epic.+Here+they+are%3A%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-321%3C%2Fb%3E%3Cbr%3EUpdate+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-321%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-322%3C%2Fb%3E%3Cbr%3EDesign+new+user+dashboard.+Goal+is+to+improve+user+engagement+by+redesigning+the+main+dashboard+interface.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-322%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-323%3C%2Fb%3E%3Cbr%3ERefactor+backend+for+better+performance.+This+task+focuses+on+backend+improvements+to+enhance+overall+system+performance.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-323%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---

# **Introduction**

JIRA is a leading platform for managing projects and tasks across various industries. The **Look up JIRA Issues for an Epic** plugin enhances project tracking by providing quick and effortless access to all issues associated with a specific epic.

By integrating this feature into your bot, you empower users to look up and manage linked issues conversationally, reducing time spent navigating JIRA and improving team productivity.

This guide walks you through adding the **Look up JIRA Issues for an Epic** feature to your bot using **Agent Studio**.

Let's get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey%2C+can+you+find+tickets+in+JIRA+that+are+part+of+Creator+Studio+epic%3F%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cstrong%3EEPIC+Summary+%3C%2Fstrong%3Efor+%3Cstrong%3ECreator+Studio%3C%2Fstrong%3E+epic%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+Creator+Studio+epic.+Here+they+are%3A%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-321%3C%2Fb%3E%3Cbr%3EUpdate+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-321%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-322%3C%2Fb%3E%3Cbr%3EDesign+new+user+dashboard.+Goal+is+to+improve+user+engagement+by+redesigning+the+main+dashboard+interface.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-322%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-323%3C%2Fb%3E%3Cbr%3ERefactor+backend+for+better+performance.+This+task+focuses+on+backend+improvements+to+enhance+overall+system+performance.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-323%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case of fetching issues linked to a specific epic, we utilize a single API with two different JQL filters. This approach simplifies integration and reduces redundancy while leveraging the power of Jira Query Language (JQL).

## **API #1: Search for Epic by Name**

The [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API enables you to retrieve epics based on their name using Jira Query Language (JQL). By applying a filter for `issuetype=Epic` and searching for the desired epic name, you can retrieve its unique key and any additional fields required for further operations.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## **API #2: Retrieve Issues Linked to the Epic**

Once the epic's unique key is identified, the same [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API can be used with a different JQL filter to fetch all issues linked to the epic.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```