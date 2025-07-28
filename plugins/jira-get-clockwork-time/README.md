---
availability: IDEA
description: A plugin that allows fetching the total hours logged on a project over
  a specified period.
domain:
- Project Management
- IT
- Productivity
fidelity: IDEA
name: Get Clockwork Time
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+hours+were+logged+on+the+Phoenix+project+last+month%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+projects+named+%27Phoenix%27+in+Jira.+Which+one+are+you+referring+to%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Phoenix+Mobile+App+%28PMA%29%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Phoenix+Website+%28PHX%29%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Internal+Phoenix+Project+%28IPP%29%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Phoenix+Mobile+App+%28PMA%29%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+time+logs+from+Clockwork+for+project+%27Phoenix+Mobile+App+%28PMA%29%27+for+the+last+month.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Aggregating+total+hours+logged.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+team+logged+a+total+of+%3Cb%3E452+hours%3C%2Fb%3E+for+the+%3Cb%3EPhoenix+Mobile+App+%28PMA%29%3C%2Fb%3E+project+last+month.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Phoenix+Mobile+App+%28PMA%29%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Productivity
- Project Management
systems:
- jira

---
## **Introduction**

The **“Get Clockwork Time”** plugin enables teams to effortlessly retrieve **Clockwork time-tracking data** using the **Moveworks AI Assistant**. This integration simplifies the process of accessing worklog insights, eliminates the need for manual queries, and enhances visibility into time spent across issues—supporting better planning, reporting, and team productivity.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22How+many+hours+were+logged+on+the+Phoenix+project+last+month%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+projects+named+%27Phoenix%27+in+Jira.+Which+one+are+you+referring+to%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Phoenix+Mobile+App+%28PMA%29%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Phoenix+Website+%28PHX%29%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Internal+Phoenix+Project+%28IPP%29%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Phoenix+Mobile+App+%28PMA%29%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+time+logs+from+Clockwork+for+project+%27Phoenix+Mobile+App+%28PMA%29%27+for+the+last+month.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Aggregating+total+hours+logged.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+team+logged+a+total+of+%3Cb%3E452+hours%3C%2Fb%3E+for+the+%3Cb%3EPhoenix+Mobile+App+%28PMA%29%3C%2Fb%3E+project+last+month.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Phoenix+Mobile+App+%28PMA%29%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [**Jira Connector**](https://marketplace.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

**Ensure the following permissions are granted:**

- **Worklog Access**: Required to view time entries (including Clockwork logs) associated with Jira issues.
- **Project Access**: Ability to browse and read issues in the target Jira project(s).
- **Issue Access**: Permission to access issue-level data, including time tracking fields such as **Time Spent** and **Worklog** entries.

Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Jira Issues with Worklogs by Project and Time Range**

```bash

curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search?jql=project%3D<PROJECT_NAME>%20AND%20worklogDate%20%3E%3D%20<TIMERANGE>&fields=key%2Cworklog&maxResults=100' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json' 
```

**Query Parameters:**

- `PROJECT_NAME` – Project Key or name of the Jira project to fetch issues
- `TIMERANGE` – Relative date expression to filter worklogs
- `fields-key,worklog` – Ensures the response includes only the issue key and its worklog data.
- `maxResults-100` – Limits the number of results returned to 100.