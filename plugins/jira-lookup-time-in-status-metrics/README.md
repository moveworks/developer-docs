---
availability: INSTALLABLE
description: A plugin that allows looking up time-in-status metrics, such as calculating
  the average time spent in a specific status for issues in a given period.
installation_asset_uuid: 1bc4214e-8fae-4f94-82ee-637adcfc9850
name: Lookup Time-in-Status Metrics
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Calculate+average+time+in+In+Progress+for+bugs+this+month.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+calculate+the+average+time+bugs+spent+in+the+%27In+Progress%27+status+this+month.+Which+Jira+project%28s%29+should+I+look+at%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22PROJ-MOBILE%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+Jira+project+%27PROJ-MOBILE%27%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Filtering+for+issue+type+%27Bug%27+updated+this+month.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Calculating+average+time+spent+in+the+%27In+Progress%27+status+for+15+issues.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+average+time+in+%27In+Progress%27+for+bugs+in+the+%3Cb%3EPROJ-MOBILE%3C%2Fb%3E+project+this+month+is+%3Cb%3E2.7+days%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-MOBILE%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

## **Introduction**

The “Lookup Time-in-Status Metrics” plugin allows users to retrieve and analyze how long Jira issues have remained in a specific status within a chosen time range, directly through the Moveworks AI Assistant. By eliminating the need to manually extract and calculate these metrics in Jira, this plugin provides quick visibility into workflow performance—helping teams identify bottlenecks, measure efficiency, and make data-driven decisions to optimize processes.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Calculate+average+time+in+In+Progress+for+bugs+this+month.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+calculate+the+average+time+bugs+spent+in+the+%27In+Progress%27+status+this+month.+Which+Jira+project%28s%29+should+I+look+at%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22PROJ-MOBILE%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+Jira+project+%27PROJ-MOBILE%27%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Filtering+for+issue+type+%27Bug%27+updated+this+month.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Calculating+average+time+spent+in+the+%27In+Progress%27+status+for+15+issues.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+average+time+in+%27In+Progress%27+for+bugs+in+the+%3Cb%3EPROJ-MOBILE%3C%2Fb%3E+project+this+month+is+%3Cb%3E2.7+days%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-MOBILE%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up the **Jira Connector** before installing this plugin. Please follow the [Jira Connector](https://marketplace.moveworks.com/connectors/jira?hist=home#how-to-implement) guide to configure the connection.

Ensure the following permissions are granted:

- **Worklog Access**: `Read` access to view time entries (including **Clockwork** logs), retrieved via the `worklogDate` and `timespent` fields
- **Project Access:** Ability to view and manage issues in the target Jira projects.
- **Issue Access**: `View Issues` permission, including access to fields like `summary`, `status`, and `timetracking`

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

**Enabling the Time Tracking Field in Jira Projects:** 
You don’t need to be a Jira site administrator to enable the Time Tracking field. If you can create projects or are assigned as a Project Administrator, you already have the required access. Steps to Enable Time Tracking for an Issue Type:

1. Log in to Jira.
2. Navigate to Projects and select the project where you want to enable time tracking.
3. Click the more options (⋮) menu next to the project name, then select Project settings.
4. In the sidebar, go to Issue types (or Work types, depending on your Jira version).
5. Select the issue type where you want to enable time tracking.
6. In the right-hand Fields panel, locate Time tracking and drag it onto the issue layout.
7. Repeat these steps for other issue types, if required.

**Important Notes:**

1. Project Administrators of any project (including ones created by others) can enable the field.
2. The bot will only retrieve time-tracking data if:
    1. The Time Tracking field is added to the issue type/s, and
    2. Users manually enter time values in this field.

**Permissions Required to Log Time:** Adding the field only makes it available. To actually log work against an issue, a user must also have the Work On Issues project permission. Without this permission, the Time Tracking field will be visible but not editable.

## **Appendix**

### **API #1: Lookup Jira Issues for Time-in-Status Metrics**

```bash
curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search/jql?jql=project%3D%22{{project_name}}%22%20AND%20issuetype%3D{{issuetype}}%20AND%20status%20changed%20TO%20%22{{state}}%22%20AFTER%20%22{{time_filter}}%22%20AND%20timespent%20is%20not%20EMPTY&fields=summary%2Cstatus%2Ctimetracking&maxResults=500' \
--header 'Accept: application/json' \
--header 'Authorization: Basic {{access_token}}'
```

**Query Parameters:**

- `project_name` (string) – The Jira project key or name to query issues from (e.g., `MPT`)
- `issuetype`(string) – The type of issue to filter (e.g., `Task`, `Bug` etc.)
- `state`(string) – The target status to evaluate (e.g., `In Progress`, `Done`)
- `time_filter`(string, date) – Start date to evaluate status transition from (format: `YYYY-MM-DD`, e.g., `2025-07-01`)
- `maxResults` (integer) – The maximum number of issues to return (default: `50`, maximum allowed: `1000`, e.g., `500`)