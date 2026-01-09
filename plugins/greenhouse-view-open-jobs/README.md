---
availability: INSTALLABLE
description: A plugin that allows an employee to identify open roles at the company.
installation_asset_uuid: 8c348433-9e5b-4233-a99a-222c0c7f846d
name: View Open Jobs
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+roles+in+PM+are+available%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Calling+Plugin+%3Cb%3EView+Open+Jobs%3C%2Fb%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+current+open+PM+roles+we+have%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+Senior+Product+Manager%3C%2Fp%3E%5Cn%3Cp%3E2.+Product+Manager+-+New+Initiatives%3C%2Fp%3E%5Cn%3Cp%3E3.+Associate+Product+Manager%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Senior+Product+Manager%22%2C%22connectorName%22%3A%22careers-site%22%7D%2C%7B%22citationTitle%22%3A%22Product+Manager+-+New+Initiatives%22%2C%22connectorName%22%3A%22careers-site%22%7D%2C%7B%22citationTitle%22%3A%22Associate+Product+Manager%22%2C%22connectorName%22%3A%22careers-site%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- greenhouse
---

# **Introduction**

Greenhouse is a leading Applicant Tracking System (ATS) that helps companies streamline their hiring process. The View Open Jobs plugin enables employees to fetch only external, published job postings from Greenhouse—so they see roles that are live and open to applicants outside the organization.

By integrating this feature into your bot, you empower employees to quickly explore externally posted job opportunities without manually searching through Greenhouse, enhancing candidate referrals and external recruitment efforts.

This guide walks you through adding the View Open Jobs feature to your bot using Agent Studio.

Let's get started!

# **Prerequisites**

- Access to Agent Studio

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+roles+in+PM+are+available%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Calling+Plugin+%3Cb%3EView+Open+Jobs%3C%2Fb%3E%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+current+open+PM+roles+we+have%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+Senior+Product+Manager%3C%2Fp%3E%5Cn%3Cp%3E2.+Product+Manager+-+New+Initiatives%3C%2Fp%3E%5Cn%3Cp%3E3.+Associate+Product+Manager%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Senior+Product+Manager%22%2C%22connectorName%22%3A%22careers-site%22%7D%2C%7B%22citationTitle%22%3A%22Product+Manager+-+New+Initiatives%22%2C%22connectorName%22%3A%22careers-site%22%7D%2C%7B%22citationTitle%22%3A%22Associate+Product+Manager%22%2C%22connectorName%22%3A%22careers-site%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector. After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# Customization Options

We need the **board_token** as part of the API endpoint to fetch open jobs. Please follow these steps to find the board_token in Greenhouse:

- Go to Greenhouse **Settings**
    - Log in to your Greenhouse account.
    - Click on **Configure (⚙️)** → **Job Boards & Posts**.
- Open Job Board Settings
    - Find your job board under **Job Boards**.
    - Click on the **Board Name** to open its setting
- Locate the **board_token**
    - In the Board Settings section, find the URL field.
    - The last part of the URL is the **board_token**
- Use the board_token in the API Request
    - Once you have the **board_token**, use it in the Greenhouse Job Board API to fetch open jobs.
    - Replace **{board_token}** with the value found in previous step.
    
# Appendix

To efficiently implement the use case of fetching open jobs, we utilize a single API endpoint. This provides a comprehensive list of all open positions, ensuring employees have visibility into available opportunities.

## **API #1: List Jobs**

The [**List Jobs**](https://developers.greenhouse.io/job-board.html#list-jobs) endpoint allows you to retrieve a list of all currently open job roles within the company. Job board data is publicly available, so authentication is not required for any GET endpoints.

```bash
curl --request GET \
  --url 'https://boards-api.greenhouse.io/v1/boards/{board_token}/jobs' \
```

Why the Job Board is better for fetching Open Jobs :

- The Job Board API (/jobs) only returns published (live) job postings.
- The Harvest API (/jobs?status=open) may include internal or hidden jobs that aren't publicly available.
- Since our goal is to show only open jobs for candidates, the Job Board API ensures you're fetching publicly available jobs.