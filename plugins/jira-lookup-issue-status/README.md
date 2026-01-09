---
availability: INSTALLABLE
description: A plugin that allows retrieving all possible workflow statuses for a
  specific issue.
installation_asset_uuid: 5631157d-c2c2-4c96-a754-c141cb35c12f
name: Lookup Issue Status
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EList+all+statuses+available+for+a+Jira+issue+related+to+Studio.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E1.+JIRA+129+%3A+Creater+studio+Isuues+-+Status%3A+To+Do%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E2.+JIRA+190+%3A++studio+approvals+-+Status%3A+In+Progress%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+issue+you+would+like+to+see+the+available+statuses+for%2C+and+I+will+provide+the+details.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E+2+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Fetch+Statuses+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EUpdate+regarding+issue+JIRA+190%3A+The+available+statuses+for+the+issue+JIRA+190+are%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E1.+To+Do%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E2.+In+Progress%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E3.+Done%3C%2Fb%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---

# **Introduction**

JIRA is a leading platform for project and task management. The **Lookup Issue Status** plugin enhances workflow visibility by retrieving all available statuses for a specific issue.

Integrating this feature into your bot allows users to quickly check issue progress and manage tasks more efficiently, reducing navigation time and boosting productivity.

This guide walks you through adding **Lookup Issue Status** to your bot using **Agent Studio**.

Let’s get started! 

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EList+all+statuses+available+for+a+Jira+issue+related+to+Studio.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Search+Issues+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+%3Cb%3E+Studio%3C%2Fb%3E.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E1.+JIRA+129+%3A+Creater+studio+Isuues+-+Status%3A+To+Do%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E2.+JIRA+190+%3A++studio+approvals+-+Status%3A+In+Progress%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+confirm+which+issue+you+would+like+to+see+the+available+statuses+for%2C+and+I+will+provide+the+details.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E+2+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3E+Fetch+Statuses+%3C%2Fb%3E+%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EUpdate+regarding+issue+JIRA+190%3A+The+available+statuses+for+the+issue+JIRA+190+are%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E1.+To+Do%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E2.+In+Progress%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E3.+Done%3C%2Fb%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case for fetching available statuses for a specific issue, we utilize a single API alongside the APIs already employed in the [**Look Up Issue by Keyword**](https://developer.moveworks.com/creator-studio/resources/plugin?id=jira-lookup-issue-keyword) plugin.

## **API #1: Get Available Transitions**

The **Get Available Transitions** API enables you to retrieve available statuses for a specific issue.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueKey}/transitions' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```