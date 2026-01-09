---
availability: INSTALLABLE
description: A plugin that allows hiring managers or recruiters to retrieve candidate
  applications for a specific job.
installation_asset_uuid: 42fb6e17-8122-4eb7-8237-8c374eb90d57
name: Lookup Job Applications
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetch+all+job+applications+for+the+Data+Engineer+role%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Greenhouse+for+job+applications+matching+the+%27Data+Engineer%27+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+job+applications+for+the+%3Cstrong%3EData+Engineer%3C%2Fstrong%3E+role%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Sudheer+Sunkara%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume1%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Dasari+Manoj+Kumar%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume2%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Pradeep+VR%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Coding+Review%2FTechnical+Design%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume3%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Data+Engineer+Job%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- greenhouse
---

# Introduction

The **Lookup Job Applications** plugin enables hiring managers and recruiters to effortlessly retrieve candidate applications for a specific job in Greenhouse through the Moveworks AI Assistant. This allows for quick access to applicant details, streamlining the hiring process and improving recruitment efficiency.

This guide will walk you through the simple installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetch+all+job+applications+for+the+Data+Engineer+role%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+job+applications+for+the+%3Cstrong%3EData+Engineer%3C%2Fstrong%3E+role%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Sudheer+Sunkara%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume1%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Dasari+Manoj+Kumar%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume2%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Pradeep+VR%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Coding+Review%2FTechnical+Design%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume3%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

Note: Make sure only hiring managers, recruiters or HR team members can use this plugin to fetch candidate applications. In the plugin settings, choose "Launch to selected users" and add their email addresses. This keeps the "Lookup Job Applications" feature secure and only available to the right people. Check the Launch Rules [guide](https://help.moveworks.com/docs/launch-configuration) for help.

# Customization Options

We need the **board_token** as part of the API endpoint to fetch open jobs. Please follow these steps to find the board_token in Greenhouse:

- Go to Greenhouse **Settings**
    - Log in to your Greenhouse account.
    - Click on **Configure (⚙️)** → **Job Boards & Posts**.
- Open Job Board Settings
    - Find your job board under **Job Boards**.
    - Click on the **Board Name** to open its setting
- Locate the **board_token**
    - In the Board Settings section, find the URL field.
    - The last part of the URL is the **board_token**
- Use the board_token in the API Request
    - Once you have the **board_token**, use it in the Greenhouse Job Board API to fetch open jobs.
    - Replace **{board_token}** with the value found in previous step.

# Appendix

### **API #1: List Jobs**

The [**List Jobs**](https://developers.greenhouse.io/job-board.html#list-jobs) endpoint allows you to retrieve a list of all currently open job roles within the company. Job board data is publicly available, so authentication is not required for any GET endpoints.

```jsx
curl --request GET \
  --url 'https://boards-api.greenhouse.io/v1/boards/{board_token}/jobs'\
```

### API #2: Fetch Job Applications

The [List Candidates](https://developers.greenhouse.io/harvest.html?shell#get-list-candidates) API in Greenhouse allows you to retrieve candidate applications for a specific job. The API will be queried using the `job_id` parameter to filter applications. Additionally, we’ll use the `fields` parameter to limit the API response to relevant details, ensuring efficient data retrieval.

```bash
curl 'https://harvest.greenhouse.io/v1/candidates?job_id={{internal_job_id}}&updated_after={{updated_after}}'
--user '<api_key>:'
```

**Query Parameters :**

- Key ( **job_id** ) : Value ( **{{internal_job_id}}** )
- Key ( **updated_after** ) : Value ( **{{updated_after}}** )
    - This value is dynamically derived through LLM logic to always fetch applications that have been updated in the last 14 days relative to the date when the user triggers the query.