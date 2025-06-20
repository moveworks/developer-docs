---
description: A plugin that allows hiring managers or recruiters to retrieve candidate
  applications for a specific job.
difficulty_level: BEGINNER
fidelity: GUIDE
installation_asset_uuid: 1bcce37f-d556-4883-a34f-c66500c4275a
installation_link: https://my.moveworks.com/agent-studio/plugin-workspace/plugins?externalAssetId=06f6255e-527d-47b4-9dbd-3d74743e7366
name: Lookup Job Applications
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetch+all+job+applications+for+the+Data+Engineer+role%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Greenhouse+for+job+applications+matching+the+%27Data+Engineer%27+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+job+applications+for+the+%3Cstrong%3EData+Engineer%3C%2Fstrong%3E+role%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Sudheer+Sunkara%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume1%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Dasari+Manoj+Kumar%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume2%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Pradeep+VR%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Coding+Review%2FTechnical+Design%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume3%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Data+Engineer+Job%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Recruiting & Talent
systems:
- greenhouse
time_in_minutes: 30
---

# Introduction

The **Lookup Job Applications** plugin enables hiring managers and recruiters to effortlessly retrieve candidate applications for a specific job in Greenhouse through the Moveworks AI Assistant. This allows for quick access to applicant details, streamlining the hiring process and improving recruitment efficiency.

This guide will walk you through the simple installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- The **View Open Jobs** plugin built in Creator Studio. It retrieves all open roles within the organization. Refer to the [View Open Jobs](https://developer.moveworks.com/creator-studio/resources/plugin?id=greenhouse-view-open-jobs) guide for setup instructions.

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetch+all+job+applications+for+the+Data+Engineer+role%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Greenhouse+for+job+applications+matching+the+%27Data+Engineer%27+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+job+applications+for+the+%3Cstrong%3EData+Engineer%3C%2Fstrong%3E+role%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Sudheer+Sunkara%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume1%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Dasari+Manoj+Kumar%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Application+Review%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume2%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%5Cn++++%3Cb%3ECandidate%3A+Pradeep+VR%3C%2Fb%3E%5Cn++++%3Cul%3E%5Cn++++++%3Cli%3ECurrent+Stage%3A+Coding+Review%2FTechnical+Design%3C%2Fli%3E%5Cn++++++%3Cli%3ESource%3A+Referral%3C%2Fli%3E%5Cn++++++%3Cli%3E%3Ca+href%3D%5C%22https%3A%2F%2Fexample.com%2Fresume3%5C%22%3EResume%3C%2Fa%3E%3C%2Fli%3E%5Cn++++%3C%2Ful%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Data+Engineer+Job%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace) for more information on how to install a plugin. 

Note: Make sure only hiring managers, recruiters or HR team members can use this plugin to fetch candidate applications. In the plugin settings, choose "Launch to selected users" and add their email addresses. This keeps the "Lookup Job Applications" feature secure and only available to the right people. Check the Launch Rules [guide](https://help.moveworks.com/docs/launch-configuration) for help.

# Customization Options

Some slot descriptions reference the **View Open Jobs** plugin. Please update them only if this plugin was referred to by a different name.

# Appendix

### API #1: Fetch Job Applications

The [List Candidates](https://developers.greenhouse.io/harvest.html?shell#get-list-candidates) API in Greenhouse allows you to retrieve candidate applications for a specific job. The API will be queried using the `job_id` parameter to filter applications. Additionally, we’ll use the `fields` parameter to limit the API response to relevant details, ensuring efficient data retrieval.

```bash
curl 'https://harvest.greenhouse.io/v1/candidates?job_id={{internal_job_id}}&updated_after={{updated_after}}'
--user '<api_key>:'
```

**Query Parameters :**

- Key ( **job_id** ) : Value ( **{{internal_job_id}}** )
- Key ( **updated_after** ) : Value ( **{{updated_after}}** )