---
availability: INSTALLABLE
description: A plugin that allows referrers to track the status of their submitted
  job referrals, including updates on application review, interview progress and hiring
  decisions.
installation_asset_uuid: 7b7653cb-b8ee-47b2-9d9c-ca6cc8a4f268
name: View My Referral Status
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+the+status+of+my+referral%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+candidate%27s+email.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22johndoe%40gmail.com%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+referral+information+for+johndoe%40gmail.com+from+Greenhouse...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%F0%9F%94%8D+Referral+Status+for+johndoe%40gmail.com%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EJob+Applied+For%3A%3C%2Fb%3E+Software+Engineer%3C%2Fli%3E%3Cli%3E%3Cb%3EApplication+Status%3A%3C%2Fb%3E+In+Review%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Stage%3A%3C%2Fb%3E+Interview+Scheduled%3C%2Fli%3E%3Cli%3E%3Cb%3EUpcoming+Interview%3A%3C%2Fb%3E+February+20%2C+2025%2C+at+10%3A00+AM+%28PST%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Doe+Referral%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- greenhouse
---

# **Introduction**

Greenhouse is a leading Applicant Tracking System (ATS) that helps companies streamline their hiring process. The **View My Referral Status** plugin allows employees to track the status of their submitted job referrals effortlessly.

By integrating this feature into your bot, you enable referrers to stay informed about their referral’s progress, including updates on application review, interview stages and final hiring decisions—eliminating the need for manual follow-ups.

This guide walks you through adding the **View My Referral Status** feature to your bot using **Agent Studio.**

Let’s get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+the+status+of+my+referral%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+candidate%27s+email.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22johndoe%40gmail.com%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+referral+information+for+johndoe%40gmail.com+from+Greenhouse...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%F0%9F%94%8D+Referral+Status+for+johndoe%40gmail.com%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EJob+Applied+For%3A%3C%2Fb%3E+Software+Engineer%3C%2Fli%3E%3Cli%3E%3Cb%3EApplication+Status%3A%3C%2Fb%3E+In+Review%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Stage%3A%3C%2Fb%3E+Interview+Scheduled%3C%2Fli%3E%3Cli%3E%3Cb%3EUpcoming+Interview%3A%3C%2Fb%3E+February+20%2C+2025%2C+at+10%3A00+AM+%28PST%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Doe+Referral%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Appendix

To enable referrers to track their submitted job referrals, we utilize two API endpoints. These allow us to identify the referrer and retrieve details on the referred candidates, including their application status, interview progress and hiring decisions.

## **API #1: List Users**

The [List Users](https://developers.greenhouse.io/harvest.html#get-list-users) endpoint retrieves user details based on their email ID. This is essential for verifying the referrer and fetching their Greenhouse User ID.

```bash
curl 'https://harvest.greenhouse.io/v1/users'
--user '<api_key>:'
```

## **API #2: List Candidates**

The [List Candidates](https://developers.greenhouse.io/harvest.html#get-list-candidates) endpoint retrieves user details based on their email ID. This is essential for verifying the referrer and fetching their Greenhouse User ID.

```bash
curl 'https://harvest.greenhouse.io/v1/candidates?email={{candidate_email}}'
--user '<api_key>:'
```