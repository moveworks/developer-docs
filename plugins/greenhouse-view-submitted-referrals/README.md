---
availability: INSTALLABLE
description: A plugin that allows recruiters or HR to query the bot for a list of
  job referrals submitted by employees.
installation_asset_uuid: f2e06341-096d-489a-b7b2-a81d83c0e859
name: View Submitted Referrals
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+employee+referrals+for+the+%3Cb%3ESoftware+Engineer%3C%2Fb%3E+role.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%F0%9F%94%8D+%3Cb%3EEmployee+Referrals+for+Software+Engineer%3A%3C%2Fb%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+referrals+with+the+role+%27Software+Engineer%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+candidates%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Col%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+John+Doe%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+Alice+Johnson%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+18%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Under+Review%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+Sarah+Smith%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+David+Lee%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+16%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Interview+Scheduled+%28Feb+22%2C+2025%29%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Software+Engineer%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- greenhouse
---

# **Introduction**

Greenhouse is a leading Applicant Tracking System (ATS) that helps companies streamline their hiring process. The **View Submitted Referrals** plugin enables recruiters and HR teams to retrieve a list of employee-submitted job referrals through the bot.

By integrating this feature into your bot, recruiters and HR professionals can efficiently track employee referrals, view candidate progress and stay updated on application statuses without manual searches—enhancing recruitment efficiency and employee engagement.

This guide walks you through adding the **View Submitted Referrals** feature to your bot using **Agent Studio**.

Let’s get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+employee+referrals+for+the+%3Cb%3ESoftware+Engineer%3C%2Fb%3E+role.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%F0%9F%94%8D+%3Cb%3EEmployee+Referrals+for+Software+Engineer%3A%3C%2Fb%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+referrals+with+the+role+%27Software+Engineer%27%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+2+candidates%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Col%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+John+Doe%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+Alice+Johnson%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+18%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Under+Review%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+Sarah+Smith%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+David+Lee%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+16%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Interview+Scheduled+%28Feb+22%2C+2025%29%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Software+Engineer%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

**Launch Configuration**

- For this plugin, select **"Allow selected users"** and specify the emails of recruiters, as this plugin contains sensitive information. This ensures only authorized HR or recruiters can access **View Submitted Referrals**, maintaining data security. See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules.

# Appendix

To implement the View Submitted Referrals plugin, we utilize two API endpoints. These APIs help retrieve job referrals submitted by employees, track application status and monitor interview progress and hiring decisions.

## **API #1: List Applications**

The [List Applications](https://developers.greenhouse.io/harvest.html#get-list-applications) endpoint retrieves all job applications, including those submitted via employee referrals.

```bash
curl 'https://harvest.greenhouse.io/v1/applications'
--user '<api_key>:'
```

## API #2: List Candidates

The [List Candidates](https://developers.greenhouse.io/harvest.html#get-list-candidates) endpoint fetches candidate details, allowing recruiters to track their progress through the hiring process.

```bash
curl 'https://harvest.greenhouse.io/v1/candidates'
--user '<api_key>:'
```