---
availability: INSTALLABLE
description: A plugin that allows HRs, Directors or Finance leaders to fetch pending
  job requisitions for approval.
installation_asset_uuid: ed690ed3-ed3d-49ab-bbe3-9d0acc522ce4
name: Lookup Pending Job Requisitions for Approval
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22view+my+pending+job+requisitions+for+approval.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%21+Here+are+your+pending+job+requisitions+for+approval%3A%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+pending+job+requisitions+from+Greenhouse...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+retrieved+job+requisitions.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+here+are+the+pending+job+requisitions+waiting+for+your+approval%3A%3C%2Fp%3E%5Cn%3Cp%3E1%EF%B8%8F%E2%83%A3+%3Cstrong%3ESoftware+Engineer%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EOffice+Location%3A%3C%2Fstrong%3E+Bengaluru%2C+India%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EHiring+Manager%3A%3C%2Fstrong%3E+John+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E2%EF%B8%8F%E2%83%A3+%3Cstrong%3ESenior+Data+Scientist%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EOffice+Location%3A%3C%2Fstrong%3E+Bengaluru%2C+India%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EHiring+Manager%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+Job+Requisitions+in+Greenhouse%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- greenhouse
---

The **Lookup Pending Job Requisitions for Approval** plugin enables HRs, Directors, and Finance leaders to quickly retrieve pending job requisitions awaiting approval in Greenhouse, all through the Moveworks AI Assistant. This ensures real-time visibility into approval workflows, streamlining decision-making and maintaining compliance with hiring policies.

This guide will walk you through the quick and easy installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22view+my+pending+job+requisitions+for+approval.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%21+Here+are+your+pending+job+requisitions+for+approval%3A%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+pending+job+requisitions+from+Greenhouse...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+retrieved+job+requisitions.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+here+are+the+pending+job+requisitions+waiting+for+your+approval%3A%3C%2Fp%3E%5Cn%3Cp%3E1%EF%B8%8F%E2%83%A3+%3Cstrong%3ESoftware+Engineer%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EOffice+Location%3A%3C%2Fstrong%3E+Bengaluru%2C+India%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EHiring+Manager%3A%3C%2Fstrong%3E+John+Doe%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E2%EF%B8%8F%E2%83%A3+%3Cstrong%3ESenior+Data+Scientist%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EOffice+Location%3A%3C%2Fstrong%3E+Bengaluru%2C+India%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EHiring+Manager%3A%3C%2Fstrong%3E+Jane+Smith%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22View+Job+Requisitions+in+Greenhouse%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

For approval-related actions, update the **redirectional link** in the `instructions_for_model` block of the compound action script. Replace `YOUR_DOMAIN` in the link `https://YOUR_DOMAIN/approvals` with your organization's domain URL.

# Appendix

### API #1: Fetch User Id

The [List Users](https://developers.greenhouse.io/harvest.html?shell#get-list-users) API in Greenhouse allows you to retrieve details about users within the system. The API response will be used to extract the `user_id`, which will then be used to ensure that candidate applications are only shown for jobs the user has permission to access.

```bash
curl 'https://harvest.greenhouse.io/v1/users?email={{user.email_addr}}'
--user '<api_key>:'
```

**Query Parameters :**

- Key ( **email** ) : Value ( **{{user.email_addr}}** )

### API #2: Fetch Pending Approvals

The [Pending Approvals for User](https://developers.greenhouse.io/harvest.html?shell#get-pending-approvals-for-user) API in Greenhouse allows you to retrieve a list of pending job requisitions awaiting approval for a specific user. 

```bash
curl 'https://harvest.greenhouse.io/v1/users/{user_id}/pending_approvals'
--user '<api_key>:'
```

### API #3: Fetch Job Details

The [Retrieve Job](https://developers.greenhouse.io/harvest.html?shell#get-retrieve-job) API in Greenhouse allows you to retrieve detailed information about a specific job. 

```bash
curl 'https://harvest.greenhouse.io/v1/jobs/{id}'
--user '<api_key>:'
```