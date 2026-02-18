---
availability: INSTALLABLE
installation_asset_uuid: 554b51dc-e340-4acd-83d1-82a616c1b5b1
description: Enables employees to modify existing PTO entries—upcoming or completed—while automatically applying the correct policy, approval, and payroll workflows.
name: Modify PTO Request
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+change+the+number+of+hours+for+my+PTO+this+Friday+in+%3Cstrong%3EWorkday%3C%2Fstrong%3E%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+approved+PTO+requests+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22PTO-8829%3A+Nov+3%2C+2023%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+your+8-hour+PTO+request+for+%3Cb%3ENov+3%2C+2023%3C%2Fb%3E.+How+many+hours+would+you+like+to+change+it+to%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%224+hours%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+update+the+hours+for+your+%3Cb%3ENov+3rd%3C%2Fb%3E+request+to+%3Cb%3E4+hours%3C%2Fb%3E.+Does+this+look+right%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%2C+submit+it%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+PTO+request+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+updated+your+PTO+request+for+%3Cb%3ENov+3rd%3C%2Fb%3E+to+4+hours.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22PTO-8829%3A+Nov+3%2C+2023%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Time & Absence
- Employee Self-Service
systems:
- workday
---
# Description

The “Modify PTO Request” plugin helps employees update previously submitted PTO entries—upcoming or already completed—by adjusting the hours recorded for specific day(s). It uses Workday’s native correction workflow so the change follows the right policy checks, approvals, and payroll-related processing automatically.

Because of Workday constraints, modifications are limited to changing the number of hours on approved PTO entries. If an employee wants to change dates, add/remove days, or change the PTO type, the plugin will explain that this isn’t supported as a modification in Workday and will guide them to cancel and re-submit the request instead.

# **User Experience Preview**

Please refer to the following [Purple Chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+change+the+number+of+hours+for+my+PTO+this+Friday+in+%3Cstrong%3EWorkday%3C%2Fstrong%3E%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+approved+PTO+requests+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22PTO-8829%3A+Nov+3%2C+2023%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+your+8-hour+PTO+request+for+%3Cb%3ENov+3%2C+2023%3C%2Fb%3E.+How+many+hours+would+you+like+to+change+it+to%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%224+hours%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+update+the+hours+for+your+%3Cb%3ENov+3rd%3C%2Fb%3E+request+to+%3Cb%3E4+hours%3C%2Fb%3E.+Does+this+look+right%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes%2C+submit+it%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Updating+PTO+request+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+updated+your+PTO+request+for+%3Cb%3ENov+3rd%3C%2Fb%3E+to+4+hours.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22PTO-8829%3A+Nov+3%2C+2023%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# **Pre-requisites**

Before installing and using the **Modify PTO Request** plugin, please ensure the following requirements are met:

## **1. Workday Connector**

This plugin requires an active Workday connector ([**OAuth 2.0 with Authorization Code (User Consent Auth) Setup**](https://marketplace.moveworks.com/connectors/workday#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup)) to communicate with your Workday instance.

- If you have not already configured the connector, please follow the [Workday Connector Guide](https://marketplace.moveworks.com/connectors/workday#how-to-implement) available in the Moveworks Marketplace.
- The connector must be fully set up and before installing this plugin.
- Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **2. Workday System Requirements**

### **a. End User Permissions**

To modify approved PTO hours through this plugin, employees must already have permission in Workday to correct their own Time Off entries — the same permissions required to make the change through the Workday UI (where applicable).

At a minimum, users must have:

- The ability to view their Time Off details.
- The ability to correct (modify) approved Time Off entries **by adjusting hours** (daily quantity), based on company policy and Workday security.

> Note: The plugin does not grant new permissions. It respects existing role-based permissions and policies granted to the user in Workday.
> 

### **b. API Permissions (via Integration User)**

The Workday connector uses an Integration Systems User (ISU) to process modifications through Workday APIs.

That user must have permissions to:

- View Time Off details for a worker
- Execute the “Correct Time Off Entry” business process via the `correctTimeOffEntry` endpoint
- Read the fields needed to map user selections to Workday Time Off Entry IDs

These permissions are typically configured through Create Integration System User (ISU) Workday Task.

## **3. Workday User Identity Ingestion**

This plugin requires User Identity Ingestion from workday in Moveworks. For Moveworks to complete actions across systems on the behalf of a user, it needs to have knowledge of all of the system IDs for the given user.
Setup information for User identity can be found on [https://help.moveworks.com/docs/user-identity](https://help.moveworks.com/docs/user-identity).

Below mandatory attributes are needed from this user ingestion.

1. workday ID of the user.

# **Implementation details**

## **Visual Representation of How the Plugin Works**

![ModifyPTO.png](Workday%20Modify%20PTO%20Request/ModifyPTO.png)

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

### **API: Fetch time off details (to identify entries eligible for modification)**

Fetches Time Off details for the employee within a date range. The plugin uses this response to:

- Find the approved PTO entry (or entries) the user wants to modify
- Extract the Workday **timeOffEntryId** / entry identifier needed for correction (used as `correctedEntry.id` in the correction payload)

```bash
curl -X GET 'https://<tenantUrl>/api/absenceManagement/v4/<tenantName>/workers/{{worker_id}}/timeOffDetails?fromDate={{from_date}}&toDate={{to_date}}'
```

**Query Parameters**

- `WORKER_ID` *(string):* Employee’s Workday ID. This will be fetched from user identity ingestion.
- `FROM_DATE` *(string):* Start date for retrieving time off details. Derived from the user’s requested date range (or a configured default).
- `TO_DATE` *(string):* End date for retrieving time off details. Derived from the user’s requested date range (or a configured default).

### **API: Correct Time Off Entry (modify approved PTO hours)**

Corrects an existing approved PTO entry by updating the number of hours for one or more specific days. This endpoint is used only for **hour modifications**.

```bash
curl -X POST -H 'Content-Type: application/json' -d '{
  "businessProcessParameters": {
    "action": {
      "id": "d9e4223e446c11de98360015c5e6daf6"
    }
  },
  "days": [
    {
      "correctedEntry": {
        "id": "{{time_off_entry_id}}"
      },
      "dailyQuantity": {{hours}},
      "comment": "{{comment}}"
    }
  ]
}' 'https://<tenantUrl>/api/absenceManagement/v4/<tenantName>/workers/{{worker_id}}/correctTimeOffEntry'
```

**Query / Path Parameters**

- `WORKER_ID` *(string):* Employee’s Workday ID. This will be fetched from user identity ingestion.

**Body Parameters**

- `businessProcessParameters.action.id` *(string):* Must always be `d9e4223e446c11de98360015c5e6daf6`.
- `days` *(array):* List of day-level corrections.
    - `correctedEntry.id` *(string):* Workday time off entry ID for the day being corrected (must match the **timeOffEntryId** obtained from `timeOffDetails`).
    - `dailyQuantity` *(number):* The corrected number of hours for the day.
    - `comment` *(string):* Comment provided by the user explaining the modification.

### **API References**

This plugin uses **Workday Absence Management REST APIs** to retrieve employee time off details and submit corrections.

For detailed information on request parameters, response formats, error handling, and versioning, please refer to the [**official Workday API documentation**](https://community.workday.com/sites/default/files/file-hosting/restapi/)  provided by Workday.

# **What Is In Scope for This Plugin?**

This plugin **supports** the following capabilities:

- Modify **approved** PTO entries by changing the **number of hours** (daily quantity) for one or more days.
- Add a user-provided **comment** explaining the modification.
- Retrieve time off entries within a date range so the user can select which approved PTO day(s) to modify.
- Support modification of multiple entries in one request.
- Inform users when a requested change is **not supported by Workday modification rules** and provide clear guidance that they must **cancel and re-submit** for:
    - Change PTO dates
    - Submit new dates
    - Remove a date
    - Change PTO type

# **What Is Out of Scope for This Plugin?**

This plugin **does not support** the following:

- Changing PTO **dates**, **type**, or **adding/removing dates** within an existing request (Workday does not allow this via modification; users must cancel and re-submit).
- Canceling existing PTO requests or submitting new PTO requests (handled by separate [Cancel PTO Request](https://marketplace.moveworks.com/plugins/workday-cancel-pto) and [Submit PTO Request](https://marketplace.moveworks.com/plugins/workday-request-time-off) plugin).
- Modifying PTO requests that are not eligible for correction (e.g., not approved, outside policy constraints), as determined by Workday.