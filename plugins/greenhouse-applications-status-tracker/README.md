---
availability: INSTALLABLE
description: A plugin that allows a recruiter or hiring manager to check-in on the
  status of a candidate / job they've posted.
installation_asset_uuid: b7ed8deb-de42-44d4-ad9d-687484fa1d25
name: Candidate Application Status Tracker
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+view+the+status+of+candidates+for+a+role+I+posted%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+your+access+to+recruitment+tools%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Locating+candidates+for+your+role%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Gathering+the+latest+updates+on+candidate+statuses%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Stay+informed+about+the+progress+of+candidates+through+the+recruitment+process+for+the+role+you%27ve+posted.%22%7D%2C%7B%22richText%22%3A%22Here+are+the+latest+updates%3A%3Cbr%3E%3Cb%3EJane+Doe%3A%3C%2Fb%3E+Interview+scheduled+for+06%2F15+-+%3Ci%3EEngineering+Manager%3C%2Fi%3E%3Cbr%3E%3Cb%3EJohn+Smith%3A%3C%2Fb%3E+Offer+extended+-+%3Ci%3EProduct+Designer%3C%2Fi%3E%3Cbr%3E%3Cb%3EAlice+Johnson%3A%3C%2Fb%3E+Awaiting+reference+check+-+%3Ci%3EMarketing+Specialist%3C%2Fi%3E%3Cbr%3E%3Cb%3EBob+Williams%3A%3C%2Fb%3E+Application+under+review+-+%3Ci%3ESoftware+Developer%3C%2Fi%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Engineering+Manager%22%2C%22connectorName%22%3A%22greenhouse%22%7D%2C%7B%22citationTitle%22%3A%22Product+Designer%22%2C%22connectorName%22%3A%22greenhouse%22%7D%2C%7B%22citationTitle%22%3A%22Marketing+Specialist%22%2C%22connectorName%22%3A%22greenhouse%22%7D%2C%7B%22citationTitle%22%3A%22Software+Developer%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- greenhouse
---

# Introduction

The **Candidate Application Status Tracker** plugin enables recruiters and hiring managers to effortlessly track the status of a candidate or a job they’ve posted in Greenhouse, all through the Moveworks AI Assistant. This ensures real-time visibility into application progress, helping streamline the hiring process and enabling timely decision-making.

This guide will walk you through the quick and easy installation process in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+view+the+status+of+candidates+for+a+role+I+posted%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+your+access+to+recruitment+tools%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Locating+candidates+for+your+role%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Gathering+the+latest+updates+on+candidate+statuses%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22Stay+informed+about+the+progress+of+candidates+through+the+recruitment+process+for+the+role+you%27ve+posted.%22%7D%2C%7B%22richText%22%3A%22Here+are+the+latest+updates%3A%3Cbr%3E%3Cb%3EJane+Doe%3A%3C%2Fb%3E+Interview+scheduled+for+06%2F15+-+%3Ci%3EEngineering+Manager%3C%2Fi%3E%3Cbr%3E%3Cb%3EJohn+Smith%3A%3C%2Fb%3E+Offer+extended+-+%3Ci%3EProduct+Designer%3C%2Fi%3E%3Cbr%3E%3Cb%3EAlice+Johnson%3A%3C%2Fb%3E+Awaiting+reference+check+-+%3Ci%3EMarketing+Specialist%3C%2Fi%3E%3Cbr%3E%3Cb%3EBob+Williams%3A%3C%2Fb%3E+Application+under+review+-+%3Ci%3ESoftware+Developer%3C%2Fi%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Engineering+Manager%22%2C%22connectorName%22%3A%22greenhouse%22%7D%2C%7B%22citationTitle%22%3A%22Product+Designer%22%2C%22connectorName%22%3A%22greenhouse%22%7D%2C%7B%22citationTitle%22%3A%22Marketing+Specialist%22%2C%22connectorName%22%3A%22greenhouse%22%7D%2C%7B%22citationTitle%22%3A%22Software+Developer%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Greenhouse first, prior to installing this plugin. Please follow the [Greenhouse Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create the connector.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### API #1: Fetch User Id

The [List Users](https://developers.greenhouse.io/harvest.html?shell#get-list-users) API in Greenhouse allows you to retrieve details about users within the system. The API response will be used to extract the `user_id`, which will then be used to ensure that candidate applications are only shown for jobs the user has permission to access.

```bash
curl 'https://harvest.greenhouse.io/v1/users?email={{user.email_addr}}'
--user '<api_key>:'
```

### API #2: Fetch Open Jobs

The [List Jobs](https://developers.greenhouse.io/harvest.html?shell#get-list-jobs) API in Greenhouse allows you to retrieve a list of jobs in the system. The `fields` parameter will be used to limit the response to essential details, optimizing data retrieval.

The previously fetched `user_id` will be used to filter only open jobs posted by the recruiter or hiring manager, ensuring that users can easily access and manage the job postings they are responsible for.

```bash
curl 'https://harvest.greenhouse.io/v1/jobs?status=open&updated_after={{updated_after}}'
--user '<api_key>:'
```

### API #3: Fetch Candidate Applications

The [List Applications](https://developers.greenhouse.io/harvest.html?shell#get-list-applications) API in Greenhouse allows you to retrieve all candidate applications for a specific job. The API response will be filtered using the `job_id` parameter to fetch only applications related to the given job. Additionally, the `fields` parameter will be used to limit the response to relevant details, ensuring efficient and structured data retrieval.

```bash
curl 'https://harvest.greenhouse.io/v1/applications?job_id={{job_id}}&last_activity_after={{last_activity_after}}'
--user '<api_key>:'
```