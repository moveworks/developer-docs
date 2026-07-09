---
availability: INSTALLABLE
description: Enables employees to check their PTO balances across limited leave types, so they can plan time off quickly and confidently.
installation_asset_uuid: 11e6a52d-fa60-4b98-9010-175d826a2667
name: Check PTO Balance
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+my+PTO+balances%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+current+leave+balances+for+%3Cb%3EAlex+Rivera%3C%2Fb%3E+from+%3Cb%3EWorkday%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+have+an+aggregated+balance+of+%3Cb%3E124+hours%3C%2Fb%3E+available+across+all+leave+types%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EVacation%3A%3C%2Fb%3E+80+hours%3C%2Fli%3E%3Cli%3E%3Cb%3ESick+Leave%3A%3C%2Fb%3E+32+hours%3C%2Fli%3E%3Cli%3E%3Cb%3EPersonal+Time%3A%3C%2Fb%3E+12+hours%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Alex+Rivera+-+Time+Off+Balances%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+will+be+my+vacation+balance+as+of+Dec+31%3F+I+am+planning+to+take+a+long+vacation+this+new+year%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ECalculating+projected+accruals+through+December+31%2C+2024+in+%3Cb%3EWorkday%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EAs+of+December+31%2C+2024%2C+your+%3Cb%3EVacation%3C%2Fb%3E+balance+is+projected+to+be+%3Cb%3E104+hours%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3EThis+includes+your+current+balance+of+80+hours+plus+24+hours+of+projected+accruals%2C+assuming+no+additional+time+is+taken+before+then.%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
---

# Description

The **“Check PTO Balance”** plugin enables employees to view their PTO balances across ****leave types directly through the Moveworks AI Assistant. 

Employees can ask for their current balances (e.g., “How many sick days and casual days do I have remaining?”) and can also request balances as of a specific past or future date to review how their balance has changed over time and plan upcoming time off (e.g., “I need to view my projected PTO balance as of March 31 to plan a long vacation in advance”).

# **User Experience Preview**

Please refer to the following [Purple Chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+my+PTO+balances%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+current+leave+balances+for+%3Cb%3EAlex+Rivera%3C%2Fb%3E+from+%3Cb%3EWorkday%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+have+an+aggregated+balance+of+%3Cb%3E124+hours%3C%2Fb%3E+available+across+all+leave+types%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EVacation%3A%3C%2Fb%3E+80+hours%3C%2Fli%3E%3Cli%3E%3Cb%3ESick+Leave%3A%3C%2Fb%3E+32+hours%3C%2Fli%3E%3Cli%3E%3Cb%3EPersonal+Time%3A%3C%2Fb%3E+12+hours%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Alex+Rivera+-+Time+Off+Balances%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+will+be+my+vacation+balance+as+of+Dec+31%3F+I+am+planning+to+take+a+long+vacation+this+new+year%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ECalculating+projected+accruals+through+December+31%2C+2024+in+%3Cb%3EWorkday%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EAs+of+December+31%2C+2024%2C+your+%3Cb%3EVacation%3C%2Fb%3E+balance+is+projected+to+be+%3Cb%3E104+hours%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3EThis+includes+your+current+balance+of+80+hours+plus+24+hours+of+projected+accruals%2C+assuming+no+additional+time+is+taken+before+then.%3C%2Fp%3E%22%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# **Pre-requisites**

Before installing and using the **Check PTO Balance** plugin, please ensure the following requirements are met:

## **1. Workday Connector**

This plugin requires an active Workday connector ([**OAuth 2.0 with Authorization Code (User Consent Auth) Setup**](https://marketplace.moveworks.com/connectors/workday#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup)) to communicate with your Workday instance. All API calls in this plugin execute under the authenticated **employee's own Workday identity**. No Integration System User (ISU) is required.

- If you have not already configured the connector, please follow the [Workday Connector Guide](https://marketplace.moveworks.com/connectors/workday#how-to-implement) available in the Moveworks Marketplace.
- The connector must be fully set up before installing this plugin.
- Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in Agent Studio.

## **2. Workday System Requirements**

The following configuration must be completed by a **Workday Administrator** before this plugin can function correctly. These are Workday-side requirements that govern what the authenticated employee is permitted to access via API.

> **Note:** The plugin does not grant new permissions. It respects existing role-based permissions and policies already granted to the user in Workday.

### **a. OAuth 2.0 API Client — Functional Area Scopes**

The OAuth 2.0 (Authorization Code Grant) API Client registered in Workday must include the following **Functional Area Scopes**. These are required for the employee to query their own worker data and time off balances via WQL:

- **Staffing**
- **Time Off and Leave**
- **System**
- **Tenant Non-Configurable**
- **Public Data**
- **Worktags**

To verify: Search **"Register API Client for Integrations"** in Workday → locate the API Client used by the Moveworks connector → confirm all of the above are listed under **Scope (Functional Areas)**.

### **b. Domain Security — WQL for Workday Extend**

This plugin uses WQL to retrieve worker data and time off balances. For employees authenticating via OAuth (User Consent Auth) to run WQL queries through the API, the following access is required:

- **WQL for Workday Extend** domain → under **Integration Permissions**: **Employee As Self** must have **Get** and **Put** access.

To configure:
1. Search **"Edit Domain Security Policy"** in Workday
2. Search **"WQL for Workday Extend"**
3. Under **Integration Permissions**, add **Employee As Self** with **Get** and **Put** access
4. Save

> **Note:** By default, only ISU/ISSG groups have integration access to this domain. If Employee As Self is not listed, OAuth-authenticated users will receive 403 errors or empty results on all WQL queries.

### **c. Domain Security — Worker Data: Public Worker Reports**

This domain controls access to base worker data (name, email, Workday ID) used to identify the authenticated employee in WQL queries.

- **Worker Data: Public Worker Reports** domain → **All Employees** must have **Report/Task View** access.

To verify: Search **"Domain Security Policy Summary"** in Workday → search **"Worker Data: Public Worker Reports"** → confirm **All Employees** has **Report/Task View** access listed.

> **Note:** If this permission is missing, WQL queries run without error but return zero rows — no error message, just empty results.

### **d. Domain Security — Worker Data: Time Off**

This domain controls access to time off plan data, balances, and accrual information — the core data returned by this plugin.

- **Worker Data: Time Off** domain → under **Integration Permissions**: **Employee As Self** must have **Get** access.

To verify: Search **"Domain Security Policy Summary"** in Workday → search **"Worker Data: Time Off"** → confirm **Employee As Self** has **Get** access under Integration Permissions.

### **e. Activate Pending Security Policy Changes**

After making any changes to Domain Security Policies in Workday:

- Search **"Activate Pending Security Policy Changes"** in Workday and run it.

> **Important:** Security changes in Workday do **not** take effect until this step is completed. This is the most common reason for "I changed the permission but it still doesn't work."

# **Implementation details**

## **Visual Representation of How the Plugin Works**

![image.png](Workday%20-%20Check%20PTO%20Balance/image.png)

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

### **API: Fetch PTO balances as of a date**

Fetches the employee’s eligible time off plans and returns the PTO balances for each plan **as of the provided effective date**. If no date is provided, the plugin should use the current date.

```bash
curl -X POST -d '{
"query": "SELECT workdayID, email_PrimaryWork, allEligibleTimeOffPlansForWorker{accrualFrequencyMethod, accrualRecursEvery, accrualRecursUnitOfTime, timeOffBalanceForWorker, absencePlans, amountOfTimeBeforeExpiration, timeOffPlan, unitOfTimeForExpiration, balancePeriod, nextCarryoverDate, maximumPotentialCarryover, displayName, unitOfTime, absenceAccruedForCurrentPeriod, payslipName} as allEligibleTimeOffPlansForWorker FROM allWorkers (effectiveAsOfDate = {{date}}) WHERE email_PrimaryWork = {{email_addr}}"
}' 'https://<tenantUrl>/ccx/api/wql/v1/<tenantName>/data'
```

**Query Parameters**

- `DATE` *(string):* “As of” date used to compute balances via `effectiveAsOfDate`. Can be a past or future date. If not provided, default is the current date.
- `EMAIL_ADDR` *(string):* Employee’s primary work email used to identify the worker in Workday. Fetched via meta_info.user.email_addr

### **API References**

This plugin uses **Workday WQL** to retrieve eligible time off plans and balances for the logged-in employee.

For detailed information on request parameters, response formats, error handling, and versioning, please refer to the [**official Workday API documentation**](https://doc.workday.com/admin-guide/en-us/reporting-and-analytics/custom-reports-and-analytics/workday-query-language-wql-/aht1611188422513.html?lang=en-us) provided by Workday.

# **What Is In Scope for This Plugin?**

This plugin supports the following capabilities:

- View current PTO balances for the employee across leave types configured in your instance (e.g., Vacation, Sick Leave, Casual Leave, Earned Leave, etc).
- View PTO balances as of a specific date (past or future) to support historical review and future planning.
- View PTO balances for an employee’s own PTO only.
- Return balances that respect existing Workday policies, eligibility, and accrual calculations for that employee.

# **What Is Out of Scope for This Plugin?**

This plugin **does not support** the following:

- Viewing PTO balances for leaves of absence (e.g. Medical Leave, Parental Leave, FMLA, Military Leave, etc).
- Viewing another employee’s balances.
- Viewing a complete accrual ledger, detailed transaction history, or full policy documentation.