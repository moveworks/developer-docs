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

The **“Lookup Time-in-Status Metrics”** plugin allows teams to easily view **time-in-status metrics**—such as the **average and total time** issues spend in a specific Jira status—within a selected time range. Using the Moveworks AI Assistant, teams can quickly analyze workflow performance, identify bottlenecks, and optimize processes based on real-time issue data.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Calculate+average+time+in+In+Progress+for+bugs+this+month.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+calculate+the+average+time+bugs+spent+in+the+%27In+Progress%27+status+this+month.+Which+Jira+project%28s%29+should+I+look+at%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22PROJ-MOBILE%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+Jira+project+%27PROJ-MOBILE%27%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Filtering+for+issue+type+%27Bug%27+updated+this+month.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Calculating+average+time+spent+in+the+%27In+Progress%27+status+for+15+issues.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+average+time+in+%27In+Progress%27+for+bugs+in+the+%3Cb%3EPROJ-MOBILE%3C%2Fb%3E+project+this+month+is+%3Cb%3E2.7+days%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-MOBILE%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up the **Jira Connector** before installing this plugin. Please follow the [Jira Connector](https://marketplace.moveworks.com/connectors/jira?hist=home#how-to-implement) guide to configure the connection.

Ensure the following permissions are granted:

- **Worklog Access**: `Read` access to view time entries (including **Clockwork** logs), retrieved via the `worklogDate` and `timespent` fields
- **Project Access**: `Browse Projects` permission to allow access to issues in the target project(s)
- **Issue Access**: `View Issues` permission, including access to fields like `summary`, `status`, and `timetracking`

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

### **Setting Up Time Tracking in Jira**

To ensure accurate time-in-status metrics, you must have the **Time Tracking** field enabled and visible on the issue types in your Jira project.

- **Time Tracking** must be enabled in your Jira project and added to the relevant issue types
- Users must log time in the issues (issues with empty/unfilled time tracking fields will be ignored)

If this isn’t already set up, follow the steps below:

### **How to Enable Time Tracking in Jira**

1. Go to **Jira Settings** > **Issues** > **Time Tracking**.
2. Click **Activate** or **Configure** to enable time tracking for your instance.
3. Next, make sure the **Time Tracking** field is added to the issue types you use:
    - Go to **Project Settings** > **Screens**.
    - Select the screen used when creating or updating issues (e.g., "Default Issue Screen").
    - Click **Add Field**, and select **Time Tracking**.
4. Save the changes.

If you’re unsure which screen to edit, your Jira admin can help identify the correct screen for your project.

## **Appendix**

### **API #1: Lookup Jira Issues for Time-in-Status Metrics**

```bash
curl --location 'https://<YOUR_INSTANCE>.atlassian.net/rest/api/3/search?jql=project={{project_name}}%20AND%20issuetype={{issuetype}}%20AND%20status%20changed%20TO%20%22{{state}}%22%20AND%20worklogDate%20>=%20%22{{time_filter}}%22%20AND%20timespent%20is%20not%20EMPTY&fields=summary%2Cstatus%2Ctimetracking' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `project_name` (string) – The Jira project key or name to query issues from (e.g., `MPT`)
- `issuetype`(string) – The type of issue to filter (e.g., `Task`, `Bug` etc.)
- `state`(string) – The target status to evaluate (e.g., `In Progress`, `Done`)
- `time_filter`(string, date) – Start date to evaluate status transition from (format: `YYYY-MM-DD`, e.g., `2025-07-01`)