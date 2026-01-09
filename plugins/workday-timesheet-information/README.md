---
availability: INSTALLABLE
description: A plugin that lookups timesheet information based of a project.
installation_asset_uuid: 68b830ce-b358-4440-b3dd-9c95a56a5fdb
name: Look up Timesheet Information
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+pull+my+timesheet+data+for+project+Hydrogen%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EPull+Timesheet+Data%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Time+Sheet+Information%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22You%27ve+spent+%3Cb%3E120+hours%3C%2Fb%3E+on+project+Hydrogen+this+month.+Do+you+need+detailed+timesheet+entries+or+any+other+project+data%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Workday+Timesheet%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
---

# **Introduction:**

The **Look Up Timesheet Information** plugin enables real-time access to Workday timesheet data through the Moveworks AI Assistant. Managers and employees can instantly retrieve timesheet statuses, hours logged, and approval workflows—without leaving their conversation interface.

This guide details the quick setup to activate timesheet lookups in minutes.

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+pull+my+timesheet+data+for+project+Hydrogen%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EPull+Timesheet+Data%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Time+Sheet+Information%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22You%27ve+spent+%3Cb%3E120+hours%3C%2Fb%3E+on+project+Hydrogen+this+month.+Do+you+need+detailed+timesheet+entries+or+any+other+project+data%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Workday+Timesheet%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

## **Required Permissions:**

- `View and Modify access`to worker data : Time Tracking
- `Get and Put access`to worker data : Time Tracking

> Note: Ensure Workday domain security policies grant API access to these functions.
> 

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## **API #1: GET Worker ID**

```bash
curl --request POST \
curl --location 'https://<YOUR_DOMAIN>/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "query": "SELECT workdayID, fullName,businessTitle, email_PrimaryWorkOrPrimaryHome,employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = '{{email}}'"
}'
```

**Request Body Fields :**

- `email` (string) – The email address of the user whose worker id and timezone want to retrieve.

## **API #2: Retrieve Timesheet Information using WQL**

```bash
curl --location 'https://<YOUR_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT allTimesheetDaysAreWithinTheActivityDateRange, costCenterForWorkerFromTimesheet, criticalValidationExists, eventTarget_01, excludeWeekends, isApproved, isJobExempt, isPayrollTimesheet, isProjectTimesheet, isProjectWorksheet, isTimeInTimeOutTimesheet, lockedInWorkday, moreThan24HoursWorkedInADay, multi_WorkerTimesheetForTimesheet, payrollProcessing, payrollTimesheetLinesAreMissingACostCenter, payrollTimesheetLinesAreMissingAPosition, periodIsInUseByAnotherProjectTimesheetForThisWorker, positionsFilledByWorkerAsOfTimesheetPeriodEndDate, projectTimesheetDefaultDefaultHoursPerDay, projectTimesheetDefaultsSumOfDefaultsHours, projectTimesheetIsDuplicateOfPriorProjectTimesheet, projectTimesheetLinesForTimesheet, referenceID1, savedCustomValidationResult, supervisoryOrganizationOfMulti_WorkerTimesheetForWorkerTimeCard, timeInTimeOut, timesheet, timesheetApprovalDateTime, timesheetDays, timesheetDefaultLinesForTimesheet, timesheetLinesForTimesheet, timesheetPeriod, timesheetPeriodEndDate, timesheetPeriodStartDate, timesheetStatus, totalBillableProjectHoursLogged, totalDaysOffRequestedForTimesheetPeriod, totalHoursLoggedForTimeInTimeOutTimesheetIncludesUnapproved, totalHoursLoggedForTimesheet, totalHoursLoggedForTimesheetApproved, totalHoursOffRequestedForTimesheetPeriod, totalNon_BillableProjectHoursLogged, validationErrorsAndWarnings, workerDefaultWeeklyHours, workerOnTimesheet, workerScheduledWeeklyHours, worksheetLinesAreMissingTheTask, worksheetTotalTimeAllocationPercent, worktagsFromTimesheetDefaultLines \
  FROM timesheets (periodStartDate = '{{periodStartDate}}', periodEndDate = '{{periodEndDate}}') \
  WHERE workerOnTimesheet = '{{workerOnTimesheet}}'"
}'
```

**Request Body Fields :**

- `workeronTimesheet` (string) – The  worker id of the worker which want to retrieve.
- `periodStartDate` (string) – Start date of the timesheet period in YYYY-MM-DD format.
- `periodEndDate` (string) – End date of the timesheet period in YYYY-MM-DD format.