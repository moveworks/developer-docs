---
availability: INSTALLABLE
description: A plugin that allows a user to update the status of an issue.
installation_asset_uuid: e46b69d5-fece-49ff-839d-c3ec796e8c6f
name: Update Issue Status
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+change+the+status+of+an+issue+regarding+server+upgrade+in+Jira.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+issues+related+to+%27server+upgrade%27...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+found+these+issues.+Which+one+are+you+referring+to%3F%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJT-123+-+Prepare+server+upgrade+plan%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJT-456+-+Finalize+server+upgrade%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+available+statuses+for+JT-123...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22For+JT-123%2C+the+available+statuses+are%3A%5Cn-+To+Do%5Cn-+In+Progress%5Cn-+Done%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+let+me+know+which+status+you+would+like+to+set+for+JT-123.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Done%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Are+you+sure+you+want+to+set+JT-123+to+Done%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+JT-123+status+to+Done...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22OK.+I%27ve+updated+the+status.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22JT-123%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

# **Introduction**

JIRA is a leading platform for project and task management. The **Update Issue Status** plugin streamlines workflow management by allowing users to update the status of an issue quickly and effortlessly. By integrating this feature into your bot, you enable users to modify issue statuses conversationally, reducing manual effort and improving team efficiency.

This guide walks you through adding the **Update Issue Status** feature to your bot using **Agent Studio**.

Let’s get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+change+the+status+of+an+issue+regarding+server+upgrade+in+Jira.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+with+that.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+issues+related+to+%27server+upgrade%27...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+found+these+issues.+Which+one+are+you+referring+to%3F%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJT-123+-+Prepare+server+upgrade+plan%3C%2Fb%3E%3Cbr%3EStatus%3A+To+Do%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJT-456+-+Finalize+server+upgrade%3C%2Fb%3E%3Cbr%3EStatus%3A+In+Progress%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+first+one%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+available+statuses+for+JT-123...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22For+JT-123%2C+the+available+statuses+are%3A%5Cn-+To+Do%5Cn-+In+Progress%5Cn-+Done%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+let+me+know+which+status+you+would+like+to+set+for+JT-123.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Done%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Are+you+sure+you+want+to+set+JT-123+to+Done%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Updating+JT-123+status+to+Done...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22OK.+I%27ve+updated+the+status.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22JT-123%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To efficiently build the use case for updating the status of a specific issue, we utilize a single API alongside the APIs already employed in the [**Look Up Issue by Keyword**](https://developer.moveworks.com/creator-studio/resources/plugin?id=jira-lookup-issue-keyword) and [**Lookup Issue Status**](https://developer.moveworks.com/creator-studio/resources/plugin?id=jira-lookup-issue-status) plugins.

## **API #1: Update the Issue's Status**

The **Update Issue Status** API allows you to update the status of a specific issue.
```bash
curl --request POST \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueKey}/transitions' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
  --data '{
    "transition":
    {
      "id": "{{statusId}}"
    }
  }'
```