---
availability: IDEA
description: A plugin that allows looking up SLA breaches within a specified period.
domain:
- IT
- Project Management
fidelity: GUIDE
name: Lookup SLA Breach Report
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+get+me+the+latest+SLA+breach+report%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure.+For+which+time+period+would+you+like+the+report%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Last+24+Hours%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Last+7+Days%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Last+30+Days%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+7+Days%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+that+breached+their+SLA+in+the+last+7+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+SLA+breach+summary+for+the+last+7+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EHighest%3A%3C%2Fb%3E+3+breached+issues%3C%2Fli%3E%3Cli%3E%3Cb%3EHigh%3A%3C%2Fb%3E+8+breached+issues%3C%2Fli%3E%3Cli%3E%3Cb%3EMedium%3A%3C%2Fb%3E+15+breached+issues%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThe+most+recent+critical+breaches+were%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SUP-1234%3A+Payment+gateway+unresponsive%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22SUP-1230%3A+Website+login+unavailable+for+SSO+users%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22View+Details%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Export+Report%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22View+Details%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhich+issue+would+you+like+to+see+details+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22SUP-1234%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22SUP-1230%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22SUP-1234%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+%3Cb%3ESUP-1234%3C%2Fb%3E%3A%3C%2Fp%3E%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22summary%5C%22%3A+%5C%22Payment+gateway+unresponsive%5C%22%2C%5Cn++%5C%22assignee%5C%22%3A+%7B%5Cn++++%5C%22displayName%5C%22%3A+%5C%22Billing+Systems+Team%5C%22%5Cn+++%7D%2C%5Cn++%5C%22status%5C%22%3A+%7B%5Cn++++%5C%22name%5C%22%3A+%5C%22In+Progress%5C%22%5Cn++%7D%2C%5Cn++%5C%22priority%5C%22%3A+%7B%5Cn++++%5C%22name%5C%22%3A+%5C%22Highest%5C%22%5Cn++%7D%2C%5Cn++%5C%22sla%5C%22%3A+%7B%5Cn++++%5C%22status%5C%22%3A+%5C%22breached%5C%22%2C%5Cn++++%5C%22breachedAt%5C%22%3A+%5C%222024-05-29T10%3A15%3A00Z%5C%22%2C%5Cn++++%5C%22timeToResolution%5C%22%3A+%5C%224+hours%5C%22%5Cn++%7D%5Cn%7D%22%2C%22connectorName%22%3A%22jira%22%2C%22title%22%3A%22GET+%2Fissue%2FSUP-1234%22%7D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Add+Comment%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Reassign+Issue%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira

---
## **Introduction**

The **“Lookup SLA Breach Report”** plugin helps users track and review issues that have breached SLA targets across different projects. It supports multiple SLA metrics—(e.g., Time to First Response, Time to Resolution, etc.)—and allows for custom date range selection. The report provides key issue details, including summary, status, assignee, and breach time, with the option to view complete information using the issue key.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+get+me+the+latest+SLA+breach+report%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure.+For+which+time+period+would+you+like+the+report%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Last+24+Hours%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Last+7+Days%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Last+30+Days%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Last+7+Days%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+that+breached+their+SLA+in+the+last+7+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+SLA+breach+summary+for+the+last+7+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EHighest%3A%3C%2Fb%3E+3+breached+issues%3C%2Fli%3E%3Cli%3E%3Cb%3EHigh%3A%3C%2Fb%3E+8+breached+issues%3C%2Fli%3E%3Cli%3E%3Cb%3EMedium%3A%3C%2Fb%3E+15+breached+issues%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EThe+most+recent+critical+breaches+were%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22SUP-1234%3A+Payment+gateway+unresponsive%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22SUP-1230%3A+Website+login+unavailable+for+SSO+users%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22View+Details%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Export+Report%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22View+Details%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhich+issue+would+you+like+to+see+details+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22SUP-1234%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22SUP-1230%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22SUP-1234%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+%3Cb%3ESUP-1234%3C%2Fb%3E%3A%3C%2Fp%3E%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22summary%5C%22%3A+%5C%22Payment+gateway+unresponsive%5C%22%2C%5Cn++%5C%22assignee%5C%22%3A+%7B%5Cn++++%5C%22displayName%5C%22%3A+%5C%22Billing+Systems+Team%5C%22%5Cn+++%7D%2C%5Cn++%5C%22status%5C%22%3A+%7B%5Cn++++%5C%22name%5C%22%3A+%5C%22In+Progress%5C%22%5Cn++%7D%2C%5Cn++%5C%22priority%5C%22%3A+%7B%5Cn++++%5C%22name%5C%22%3A+%5C%22Highest%5C%22%5Cn++%7D%2C%5Cn++%5C%22sla%5C%22%3A+%7B%5Cn++++%5C%22status%5C%22%3A+%5C%22breached%5C%22%2C%5Cn++++%5C%22breachedAt%5C%22%3A+%5C%222024-05-29T10%3A15%3A00Z%5C%22%2C%5Cn++++%5C%22timeToResolution%5C%22%3A+%5C%224+hours%5C%22%5Cn++%7D%5Cn%7D%22%2C%22connectorName%22%3A%22jira%22%2C%22title%22%3A%22GET+%2Fissue%2FSUP-1234%22%7D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Add+Comment%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Reassign+Issue%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **Jira** before installing this plugin. Please follow the [Jira Connector](https://marketplace.moveworks.com/connectors/jira?hist=home%2Cbrws#how-to-implement) guide to configure the connection.

**Ensure the following permissions are granted:**

- **Admin Access**: Required to configure and retrieve SLA fields.
- **Project Access**: Required to view and manage issues within the Jira project.
- **Field Access**: Required to read fields such as priority and issue key.

**Note:**

- This plugin is intended for **project administrators** or users with **admin privileges** on a **Premium Jira Service Management account**. It is **not supported for agent-level users** or users on standard/free plans, as they may not have the necessary permissions or access to SLA metrics.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Customization Process:**

In Jira Service Management, the **SLA field** is visible by default in service projects on a **Premium or higher plan**. If it's not showing, ensure the project uses a service management template, SLA tracking is enabled, and the user is a **Project Admin**.

Please follow the steps below to create the SLA field:

### SLA Fields setup in Jira Service Management

- **Go to**: *Project settings → SLAs* (Admin access required)
- **Create/Edit**: Add or modify SLA (e.g., *Time to Resolution*)
- **Set Conditions**: Define Start, Pause, and Stop using JQL
- **Set Goals**: Add time goals by priority (e.g., 4h for High)
- **Apply Calendar**: Choose working hours (e.g., 9–5 or 24/7)
- **Save & Apply**: SLA timers appear on matching issues
- **Visibility**: Shown to **admins & licensed agents**; hidden from **customers**

## **Appendix**

### **API #1: Get Issues With SLA Breach By Priority**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=created >= {{create_date}} AND "{{sla_field}}" = breached() AND priority = {{priority}} AND fields= priority,key' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
```

**Query Parameter:**

`create_date` : (string) - Filters by issues created in a given time range (e.g., `7d`, `-14`, etc.)

`sla_field` : (string) - Filters the issue using the SLA fields name (e.g., Time to first response, Time to resolution, etc.)

`priority` : (string) - Filters the issue with their priority (e.g., Highest, Medium, Lowest)

### **API #2: Fetch Issue Details by Key**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/issue/{{issue_key}}' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <API_TOKEN>'
```

**Path Parameter:**

`issue_key`  :(string) - Filters the summary for the specified issue key (e.g.,ISAD-32).