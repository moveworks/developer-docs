---
availability: IDEA
description: A plugin that allows looking up time-in-status metrics, such as calculating
  the average time spent in a specific status for issues in a given period.
domain:
- IT
- Project Management
fidelity: GUIDE
name: Lookup Time-in-Status Metrics
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Calculate+average+time+in+In+Progress+for+bugs+this+month.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+calculate+the+average+time+bugs+spent+in+the+%27In+Progress%27+status+this+month.+Which+Jira+project%28s%29+should+I+look+at%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22PROJ-MOBILE%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+Jira+project+%27PROJ-MOBILE%27%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Filtering+for+issue+type+%27Bug%27+updated+this+month.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Calculating+average+time+spent+in+the+%27In+Progress%27+status+for+15+issues.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+average+time+in+%27In+Progress%27+for+bugs+in+the+%3Cb%3EPROJ-MOBILE%3C%2Fb%3E+project+this+month+is+%3Cb%3E2.7+days%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-MOBILE%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira

---

## Introduction

The “Lookup Time-in-Status Metrics” plugin allows users to retrieve and analyze how long Jira issues have remained in a specific status within a chosen time range, directly through the Moveworks AI Assistant. By eliminating the need to manually extract and calculate these metrics in Jira, this plugin provides quick visibility into workflow performance—helping teams identify bottlenecks, measure efficiency, and make data-driven decisions to optimize processes.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started

## Prerequisites

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

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

### Setting Up Time Tracking in Jira

Follow these steps to enable and configure time tracking so your team can log work effectively:

1. **Turn On Time Tracking**
    - Navigate to **Jira Settings → Issues → Time Tracking**.
    - Select **Activate** (or choose **Configure** if it’s already active).
2. **Add Time Tracking to Screens**
    - Go to **Project Settings → Screens**.
    - Edit the relevant screens (such as **Create** and **Edit**).
    - Include the **Time Tracking** field so users can record their work.
3. **Log Time on Issues**
    - Team members should log their work on issues.
    - Issues without logged time will not appear in time-tracking reports.
4. **Test the Setup (Optional)**
    - Create a sample issue and log some work.
    - Verify that the time displays correctly under the **Time Tracking** section of the issue.

## **Appendix**

### **API #1: Lookup Jira Issues for Time-in-Status Metrics**

```bash
curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search/jql?jql=project={{project_name}}%20AND%20issuetype={{issuetype}}%20AND%20status%20changed%20TO%20%22{{state}}%22%20AND%20worklogDate%20>=%20%22{{time_filter}}%22%20AND%20timespent%20is%20not%20EMPTY&fields=summary%2Cstatus%2Ctimetracking' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `project_name` (string) – The Jira project key or name to query issues from (e.g., `MPT`)
- `issuetype`(string) – The type of issue to filter (e.g., `Task`, `Bug` etc.)
- `state`(string) – The target status to evaluate (e.g., `In Progress`, `Done`)
- `time_filter`(string, date) – Start date to evaluate status transition from (format: `YYYY-MM-DD`, e.g., `2025-07-01`)