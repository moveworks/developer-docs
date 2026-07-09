---
availability: INSTALLABLE
installation_asset_uuid: e8549c21-e571-42b0-86b7-1e9048a43352
description: Enables managers and delegated approvers to view pending time off requests requiring their approval and retrieve team-level PTO details, providing comprehensive visibility into both outstanding approvals and team availability.
name: View Team PTO Requests & Calendar
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+pending+time+off+requests+for+my+team+and+our+calendar+for+next+week.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+pending+time+off+requests+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+team+calendar+and+availability+for+the+week+of+Oct+23rd...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+have+2+pending+requests+for+next+week.+If+both+are+approved%2C+team+coverage+will+be+at+50%25+capacity.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3ESarah+Jenkins%3C%2Fstrong%3E%3A+Oct+23+-+Oct+27+%28Vacation%29%3C%2Fli%3E%3Cli%3E%3Cstrong%3EMarcus+Aurelius%3C%2Fstrong%3E%3A+Oct+24+-+Oct+25+%28Personal+Day%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDavid+Chen+and+Elena+Rodriguez+are+currently+scheduled+to+work.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Sarah+Jenkins+-+PTO+Request%22%7D%2C%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Marcus+Aurelius+-+PTO+Request%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Approvals
- HR - Other
- HR - Time & Absence
systems:
- workday
---

# Description

The **“View Team PTO Requests & Calendar”** plugin enables managers to view team time off information directly through the Moveworks AI Assistant. It provides visibility into:

- **Pending time off requests** that require the manager/approver’s attention, so they can quickly review what’s awaiting approval.
- **Team PTO calendar / availability** by retrieving time off details for direct reports over a date range, so managers can plan staffing and coverage.

# **User Experience Preview**

Please refer to the following [Purple Chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+the+pending+time+off+requests+for+my+team+and+our+calendar+for+next+week.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+pending+time+off+requests+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+team+calendar+and+availability+for+the+week+of+Oct+23rd...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+have+2+pending+requests+for+next+week.+If+both+are+approved%2C+team+coverage+will+be+at+50%25+capacity.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3ESarah+Jenkins%3C%2Fstrong%3E%3A+Oct+23+-+Oct+27+%28Vacation%29%3C%2Fli%3E%3Cli%3E%3Cstrong%3EMarcus+Aurelius%3C%2Fstrong%3E%3A+Oct+24+-+Oct+25+%28Personal+Day%29%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EDavid+Chen+and+Elena+Rodriguez+are+currently+scheduled+to+work.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Sarah+Jenkins+-+PTO+Request%22%7D%2C%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Marcus+Aurelius+-+PTO+Request%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# **Pre-requisites**

Before installing and using the **View Team PTO Requests & Calendar** plugin, please ensure the following requirements are met:

## **1. Workday Connector**

This plugin requires an active Workday connector ([**OAuth 2.0 with Authorization Code (User Consent Auth) Setup](https://marketplace.moveworks.com/connectors/workday#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup))** to communicate with your Workday instance.

- If you have not already configured the connector, please follow the [Workday Connector Guide](https://marketplace.moveworks.com/connectors/workday#how-to-implement) available in the Moveworks Marketplace.
- The connector must be fully set up and before installing this plugin.
- Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **2. Workday System Requirements**

### **a. End User Permissions**

To view team PTO requests and team availability through this plugin, the logged-in user must already have permissions in Workday consistent with their role as a **manager.**

At a minimum, users must have:

- The ability to view their **direct reports** (or the set of workers returned by Workday for them via the `directReports` endpoint).
- The ability to view **Time Off Details** for those team members.
- The ability to view **time off request status** information (e.g., submitted / awaiting approval / approved), as permitted by Workday security policies.

> Note: The plugin does not grant new permissions. It respects existing role-based permissions and policies granted to the user in Workday.
> 

### **b. API Permissions (via Integration User)**

The Workday connector uses an Integration Systems User (ISU) to retrieve team hierarchy and time off details through Workday APIs.

That user must have permissions to:

- Read worker profile and hierarchy information required to resolve **direct reports**
- Read **Absence / Time Off details** for workers
- Read time off request status fields required to determine pending vs. approved entries (as returned by your Workday configuration)

These permissions are typically configured through Create Integration System User (ISU) Workday Task.

## **3. Workday User Identity Ingestion**

This plugin requires User Identity Ingestion from workday in Moveworks. For Moveworks to complete actions across systems on the behalf of a user, it needs to have knowledge of all of the system IDs for the given user.
Setup information for User identity can be found on [https://help.moveworks.com/docs/user-identity](https://help.moveworks.com/docs/user-identity).

Below mandatory attributes are needed from this user ingestion.

1. workday ID of the user.

# **Implementation details**

## **Visual Representation of How the Plugin Works**

![ViewCalendar.png](Workday%20-%20View%20Team%20PTO%20Requests%20&%20Calendar/ViewCalendar.png)

## **API Details**

To use the curl examples below be sure to update details for <tenantUrl> and <tenantName>.

As a Workday administrator, obtain these details as follows:

1. Log in to Workday
2. In the search bar, search for **Public Web Services**
3. Open it
4. Select **Actions → Web Services → View WSDL**
5. In the WSDL file, locate:
    
    ```
    soap:address location="https://<hostname>/ccx/service/<tenant>/..."
    ```
    

The <hostname> (tenantUrl) and <tenant> (tenantName) in this URL are your **true tenant URL components**.

### **API: Fetch direct reports for the manager**

Fetches the direct reports for the user. The plugin uses this list as the “team” over which it will retrieve time off details.

```bash
curl -X GET 'https://<tenantUrl>/api/v1/<tenantName>/workers/{{worker_id}}/directReports'
```

**Query Parameters**

- `WORKER_ID` *(string):* Workday ID of the logged-in manager/approver. This will be fetched from user identity ingestion.

### **API: Fetch time off details for a worker (date range)**

Fetches time off details for an employee over the specified date range. The plugin calls this endpoint **for each direct report** returned by the previous API and then aggregates results to show:

- Team availability / calendar view (approved / scheduled time off)
- Pending items (entries returned with a pending/awaiting-approval status)

```bash
curl -X GET 'https://<tenantUrl>/ccx/api/absenceManagement/v1/<tenantName>/workers/{{worker_id}}/timeOffDetails?fromDate={{from_date}}&toDate={{to_date}}'
```

**Query Parameters**

- `WORKER_ID` *(string):* Workday ID of the team member whose time off details are being retrieved.
- `FROM_DATE` *(string):* Start date for the time off details query. Derived from the user’s requested date range.
- `TO_DATE` *(string):* End date for the time off details query. Derived from the user’s requested date range.

### **API References**

This plugin uses a combination of **Workday Worker REST APIs** and **Absence Management REST APIs** to retrieve team hierarchy and time off details.

For detailed information on request parameters, response formats, error handling, and versioning, please refer to the [**official Workday API documentation**](https://community.workday.com/sites/default/files/file-hosting/restapi/) provided by Workday.

# **What Is In Scope for This Plugin?**

This plugin **supports** the following capabilities:

- View team time off for the logged-in user’s direct reports (team membership as returned by Workday).
- View a team PTO calendar / availability for a specified date range.
- View pending time off requests returned by Workday that are awaiting action (e.g., awaiting approval), enabling managers/approvers to quickly identify outstanding requests.
- View team PTO requests/details that respect existing Workday security policies, validations, and approval configuration.

# **What Is Out of Scope for This Plugin?**

This plugin **does not support** the following:

- Viewing time off for employees who are not returned by Workday as part of the logged-in user’s team (e.g., outside the direct report hierarchy / delegation scope).