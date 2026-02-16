---
availability: INSTALLABLE
description: A plugin that allows managing the archiving process of resolved incident
  tickets based on age.
installation_asset_uuid: e288a655-5c15-4924-8b37-0c7894262c2a
name: Manage Issue Ticket Archives
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+manage+our+issue+ticket+archives.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+can+help+with+that.+To+start%2C+what%27s+the+cutoff+date+for+archiving%3F+For+instance%2C+do+you+want+to+archive+tickets+resolved+more+than+90+days+ago%2C+or+6+months+ago%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+archive+all+resolved+tickets+older+than+180+days.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it.+And+which+issue+types+are+you+looking+to+archive%3F+You+can+select+one+or+more.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Bug%22%7D%2C%7B%22buttonText%22%3A%22Story%22%7D%2C%7B%22buttonText%22%3A%22Task%22%7D%2C%7B%22buttonText%22%3A%22All+Types%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Bug%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Jira+for+resolved+%27Bug%27+issue+tickets+with+a+resolution+date+older+than+180+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+%3Cb%3E87+resolved+%27Bug%27+issue+tickets%3C%2Fb%3E+in+Jira+that+are+older+than+180+days.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAre+you+sure+you+want+to+archive+them%3F+This+action+cannot+be+undone.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Archive+87+Tickets%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Archive+87+Tickets%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Initiating+bulk+archive+process+in+Jira.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+archived+87+tickets.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+have+successfully+archived+the+87+resolved+%27Bug%27+issue+tickets.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira
---

## **Introduction**

The **"Manage Issue Ticket Archives"** plugin helps you clean up old resolved tickets in Jira by archiving them based on their age like tickets closed 90 days ago, 6 months ago, or on a specific date.

Instead of doing this manually, the plugin makes the process quick and automatic. It works with **Jira Premium or Enterprise plans** and is great for keeping your project tidy and organized.

This guide will show you how to set it up in **Agent Studio** in just a few steps. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+manage+our+issue+ticket+archives.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+can+help+with+that.+To+start%2C+what%27s+the+cutoff+date+for+archiving%3F+For+instance%2C+do+you+want+to+archive+tickets+resolved+more+than+90+days+ago%2C+or+6+months+ago%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Let%27s+archive+all+resolved+tickets+older+than+180+days.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it.+And+which+issue+types+are+you+looking+to+archive%3F+You+can+select+one+or+more.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Bug%22%7D%2C%7B%22buttonText%22%3A%22Story%22%7D%2C%7B%22buttonText%22%3A%22Task%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Bug%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Jira+for+resolved+%27Bug%27+issue+tickets+with+a+resolution+date+older+than+180+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+%3Cb%3E87+resolved+%27Bug%27+issue+tickets%3C%2Fb%3E+in+Jira+that+are+older+than+180+days.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EAre+you+sure+you+want+to+archive+them%3F+This+action+cannot+be+undone.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Archive+87+Tickets%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Archive+87+Tickets%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Initiating+bulk+archive+process+in+Jira.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+archived+87+tickets.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+have+successfully+archived+the+87+resolved+%27Bug%27+issue+tickets.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

**Ensure the following permissions are granted:**

- **Admin Access**: Required to archive issues using the Jira API
- **Project Access**: Ability to view and manage issues in the target Jira projects
- **Field Access**: Permission to read and update the **Priority**, **Assignee**, and **Resolution Date** fields

**Note:**

- This plugin requires a **Jira Premium or Enterprise plan**, as the issue archive feature is only available in these plans.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Completed Issues for a Specific Date Range:**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=issuetype={{issue_type}} AND status = Done AND resolution_date >= {{resolution_date}}' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
```

**Query Parameter:**

- `issue_type` (string)– The type of issue to filter by (e.g., `Bug`, `Task`, `Epic`, etc.)
- `resolution_date` (string)– Filters by issues resolution date in a given time range (e.g., `7d`, `30d`, etc.)

### **API #2: Archive Jira Issues:**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/issue/archive' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <API_TOKEN>' \
--data '{
  "jql": "issuetype = {{jira_issue_type}} AND status = Done AND resolutiondate <= {{jira_resolution_date}}"
}'
```

**Request Body Parameters:**

- `jira_issue_type`(string)– The type of issue to filter by (e.g., `Bug`, `Task`, `Epic`, etc.)
- `jira_resolution_date`(string)– Filters by issues resolution date in a given time range (e.g., `7d`, `30d`, etc.)