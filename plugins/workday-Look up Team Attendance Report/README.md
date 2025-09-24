---
availability: IDEA
description: A plugin that allows a manager to generate an attendance summary for
  their team over a specified period.
domain:
- Productivity
- HR - Performance Management
fidelity: GUIDE
name: Look Up Team Attendance Report
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+attendance+for+my+team+in+June.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Resolving+%27my+team%27+to+the+user%27s+direct+reports+in+%3Cb%3EWorkday%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Setting+the+reporting+period+to+June+2024.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Querying+attendance+data+for+the+team.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+attendance+summary+for+your+team+for+June+2024.+The+month+has+20+working+days.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAnna+Lee%3A%3C%2Fb%3E+19+days+present%2C+1+day+PTO%3C%2Fli%3E%3Cli%3E%3Cb%3EBen+Carter%3A%3C%2Fb%3E+18+days+present%2C+2+days+sick+leave%3C%2Fli%3E%3Cli%3E%3Cb%3EChloe+Davis%3A%3C%2Fb%3E+20+days+present%2C+0+days+off%3C%2Fli%3E%3Cli%3E%3Cb%3EDavid+Smith%3A%3C%2Fb%3E+17+days+present%2C+3+days+PTO%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22June+2024+Team+Attendance+Report%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Performance Management
- Productivity
systems:
- workday

---
## Introduction

The “**Look Up Team Attendance Report**” plugin enables managers to automatically generate an attendance summary for their entire team over a specified period using the **Moveworks AI Assistant**. It dynamically fetches attendance data, making it easier to track and review team attendance in real time.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+attendance+for+my+team+in+June.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Resolving+%27my+team%27+to+the+user%27s+direct+reports+in+%3Cb%3EWorkday%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Setting+the+reporting+period+to+June+2024.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Querying+attendance+data+for+the+team.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+attendance+summary+for+your+team+for+June+2024.+The+month+has+20+working+days.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAnna+Lee%3A%3C%2Fb%3E+19+days+present%2C+1+day+PTO%3C%2Fli%3E%3Cli%3E%3Cb%3EBen+Carter%3A%3C%2Fb%3E+18+days+present%2C+2+days+sick+leave%3C%2Fli%3E%3Cli%3E%3Cb%3EChloe+Davis%3A%3C%2Fb%3E+20+days+present%2C+0+days+off%3C%2Fli%3E%3Cli%3E%3Cb%3EDavid+Smith%3A%3C%2Fb%3E+17+days+present%2C+3+days+PTO%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22June+2024+Team+Attendance+Report%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to check-in and check-out details

**Tenant Configuration:**

All Workday API endpoints in this plugin use `TENANT` as a placeholder. After installation, replace `TENANT` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.:
    
    `https://impl.workday.com/your_tenant/...`
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### API#1: Get Worker Details by Email

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data-raw '{
    "query": "SELECT workdayID, company,fullName,businessTitle, email_PrimaryWorkOrPrimaryHome as email ,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '\''{{EMAIL}}'\''"
}'
```

**Query Parameters:**

- `EMAIL` (string) – The primary home email address of the manager used to look up their Workday ID

### API#2: Get Direct Report by Workday ID

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers/{{WORKER_ID}}/directReports' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `WORKER_ID` (string) – The unique Workday ID of the manager used to retrieve their team members

### API#3: Get Attendance Report By Employee ID

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/timeTracking/v4/<TENANT>/timeClockEvents?worker={{WORKER_ID}}&fromDate={{START_DATE}}&toDate={{END_DATE}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
```

**Query Parameters:**

- `WORKER_ID` (string) – The unique Workday ID of the employee used to retrieve their attendance report
- `START_DATE`   - Used to specify the **beginning date** of the attendance report period.
- `END_DATE`   - Used to specify the **end date** of the attendance report period.

**Note:** If a team member fails to check in or check out, 'No attendance records found' will appear for that time period.