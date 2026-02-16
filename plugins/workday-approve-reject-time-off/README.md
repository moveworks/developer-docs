---
availability: INSTALLABLE
description: Enables managers to review, gather context, and act on pending PTO requests using natural language. This plugin functions as the fulfillment engine for PTO notifications.
installation_asset_uuid: 2a206727-f2ee-4df3-82b8-3c6add807b1b
name: Approve or Reject PTO
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+my+team%27s+pending+PTO+requests.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+pending+time-off+requests+for+your+direct+reports+from+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+pending+PTO+requests+in+%3Cstrong%3EWorkday%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EPTO-441%3C%2Fstrong%3E%3A+Sarah+Miller+%7C+Vacation+%7C+June+10-12+%7C+%3Ci%3EFamily+trip%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-442%3C%2Fstrong%3E%3A+Jordan+Smith+%7C+Vacation+%7C+June+15-16+%7C+%3Ci%3EWedding%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-443%3C%2Fstrong%3E%3A+Casey+Vang+%7C+Sick+Leave+%7C+June+5+%7C+%3Ci%3EDoctor+appt%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-444%3C%2Fstrong%3E%3A+Taylor+Reed+%7C+Personal+%7C+June+20+%7C+%3Ci%3EMoving+day%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-445%3C%2Fstrong%3E%3A+Alex+Rivera+%7C+Vacation+%7C+June+15-18+%7C+%3Ci%3ECamping%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EApprove+the+request+for+Jordan.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Finding+request+details+for+Jordan+Smith...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EAre+you+sure+you+want+to+approve+%3Cstrong%3EJordan+Smith%27s%3C%2Fstrong%3E+request+%28PTO-442%29+for+June+15-16%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Processing+approval+for+PTO-442+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+approved+the+vacation+request+for+Jordan+Smith.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Jordan+Smith+%28PTO-442%29%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Reject+the+request+for+Alex+Rivera+%28PTO-445%29+because+someone+else+is+already+out+then+and+we+need+to+maintain+coverage.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Preparing+rejection+for+Alex+Rivera...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27m+ready+to+reject+Alex+Rivera%27s+PTO+request+%28PTO-445%29+for+%3Cstrong%3EJune+15-18%3C%2Fstrong%3E.%3C%2Fp%3E%3Cp%3E%3Cstrong%3ERejection+Comment%3A%3C%2Fstrong%3E+A+team+member+is+already+on+PTO+that+day+and+we+need+to+maintain+coverage.%3C%2Fp%3E%3Cp%3EConfirm+rejection%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Submitting+rejection+to+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+successfully+rejected+the+request+for+Alex+Rivera.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Alex+Rivera+%28PTO-445%29%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Approvals
- HR - Other
- HR - Time & Absence
systems:
- workday
video: https://youtu.be/EigPa18rjxo
---

# Description

The **“Approve or Reject PTO Request”** plugin enables managers to instantly approve or reject PTO requests in Workday through the **Moveworks AI Assistant**, eliminating HR portal friction and ensuring time-off records stay accurate in real time.

# User Experience Preview

Please refer to the following [**Purple Chat**](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EShow+me+my+team%27s+pending+PTO+requests.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Fetching+pending+time-off+requests+for+your+direct+reports+from+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+5+pending+PTO+requests+in+%3Cstrong%3EWorkday%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EPTO-441%3C%2Fstrong%3E%3A+Sarah+Miller+%7C+Vacation+%7C+June+10-12+%7C+%3Ci%3EFamily+trip%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-442%3C%2Fstrong%3E%3A+Jordan+Smith+%7C+Vacation+%7C+June+15-16+%7C+%3Ci%3EWedding%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-443%3C%2Fstrong%3E%3A+Casey+Vang+%7C+Sick+Leave+%7C+June+5+%7C+%3Ci%3EDoctor+appt%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-444%3C%2Fstrong%3E%3A+Taylor+Reed+%7C+Personal+%7C+June+20+%7C+%3Ci%3EMoving+day%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPTO-445%3C%2Fstrong%3E%3A+Alex+Rivera+%7C+Vacation+%7C+June+15-18+%7C+%3Ci%3ECamping%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EApprove+the+request+for+Jordan.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Finding+request+details+for+Jordan+Smith...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EAre+you+sure+you+want+to+approve+%3Cstrong%3EJordan+Smith%27s%3C%2Fstrong%3E+request+%28PTO-442%29+for+June+15-16%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Processing+approval+for+PTO-442+in+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+approved+the+vacation+request+for+Jordan+Smith.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Jordan+Smith+%28PTO-442%29%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Reject+the+request+for+Alex+Rivera+%28PTO-445%29+because+someone+else+is+already+out+then+and+we+need+to+maintain+coverage.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Preparing+rejection+for+Alex+Rivera...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27m+ready+to+reject+Alex+Rivera%27s+PTO+request+%28PTO-445%29+for+%3Cstrong%3EJune+15-18%3C%2Fstrong%3E.%3C%2Fp%3E%3Cp%3E%3Cstrong%3ERejection+Comment%3A%3C%2Fstrong%3E+A+team+member+is+already+on+PTO+that+day+and+we+need+to+maintain+coverage.%3C%2Fp%3E%3Cp%3EConfirm+rejection%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Submitting+rejection+to+%3Cb%3EWorkday%3C%2Fb%3E...%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+successfully+rejected+the+request+for+Alex+Rivera.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22workday%22%2C%22citationTitle%22%3A%22Alex+Rivera+%28PTO-445%29%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.

# Pre-requisites

Before installing and using the **Approve or Reject PTO Request** plugin, please ensure the following requirements are met:

## **1. Workday Connector**

This plugin requires an active **Workday connector** using **OAuth 2.0 (User consent Auth)** to communicate with your Workday instance.

- If you have not already configured the connector, please follow the [Workday Connector Guide](https://marketplace.moveworks.com/connectors/workday#how-to-implement) available in the Moveworks Marketplace.
- The connector must be fully set up and before installing this plugin.
- Once the connector is successfully configured, follow our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

> Note: User ingestion must be configured and operational. Without this step, users will not be able to use the plugin.
> 

## **2. Workday System Requirements**

### **a. End User Permissions (Manager Persona)**

To approve or reject a PTO request through this plugin, managers must already have permission to approve or reject time off in Workday — the same permissions required to approve or reject through the Workday UI.

At a minimum, managers must have:

- **Time Off permissions** that allow:
    - Viewing available Time Off Types
    - Approving and rejecting Time Off / PTO requests
- Access to their **team member profiles and time account balances**
- Eligibility to approve or reject PTO requests based on company time-off policies

> Note: The plugin does not grant new permissions. It respects existing role-based permissions and policies granted to the user in Workday.
> 

### **b. API Permissions (via Integration User)**

The Workday connector uses an **Integration Systems User (ISU)** to process PTO requests through Workday APIs.

That admin/integration user must have permissions to:

- View Time Off requests on behalf of employees
- Read Time Off Types and Time Account information
- Validate employee eligibility and balances (as required by your configuration)
- Approve or reject Time Off requests on behalf of managers

These permissions are typically configured through **Create Integration System User (ISU)** Workday Task.

## **3. Workday User Identity Ingestion**

This plugin requires User Identity Ingestion from workday in Moveworks. For Moveworks to complete actions across systems on the behalf of a user, it needs to have knowledge of all of the system IDs for the given user.
Setup information for User identity can be found on [https://help.moveworks.com/docs/user-identity](https://help.moveworks.com/docs/user-identity).

Below mandatory attributes are needed from this user ingestion.

1. Workday ID of the user.
2. Organization id of the user.
3. Organization managed by the user.

# **Implementation details**

## Visual Representation of How the Plugin Works

![image.png](Approve%20or%20Reject%20PTO/image.png)

## API Details

<aside>
💡

To use the curl examples below be sure to update details for <tenantUrl> and <tenantName>. 

To obtain these details as follows:

1. Log in to Workday as an administrator
2. In the search bar, search for **Public Web Services**
3. Open it
4. Select **Actions → Web Services → View WSDL**
5. In the WSDL file, locate:
    
    ```
    soap:address location="https://<hostname>/ccx/service/<tenant>/..."
    ```
    

The <hostname> (tenantUrl) and <tenant> (tenantName) in this URL are your **true tenant URL components**.

</aside>

### **API #1: Fetches the PTO awaiting Manager’s approval**

This API is used to retrieve details of all PTO requests submitted by direct reports that require attention by the given manager (refer to Query Parameters below).

```bash
curl -X POST "https://<tenantUrl>/ccx/api/wql/v1/<tenantName>/data" \
  -H "Content-Type: application/json" \
  -d '{
  "query": "SELECT status, workerRequestingPaidTimeOff, timeOffEntry, timeOffEvent, timeOffDate, timeOffTypeForTimeOffEntry, cf_Manager, organization 
  FROM timeOffByDateTaken (organizations = ({{organization_id}}), includeSubordinateOrganizations = true) 
  WHERE status in (dd817fe688db4ac7bf84e3ef79f72948) 
  AND latestTimeOffEntry is not null AND totalUnits > 0 AND cf_Manager = ({{manager_wid}}) 
  GROUP BY status, timeOffDate, workerRequestingPaidTimeOff, timeOffTypeForTimeOffEntry, timeOffEntry, timeOffEvent, cf_Manager, organization"
}'
```

**Query Parameters**

- `ORGANISATION_ID` *(string):* This is the organization id managed by a manager—this information is already available for a user when they are ingested from Workday into Moveworks natively, and it can be used directly in the action/API call.
- `MANAGER_WID` *(string):* Filters the User entity to match the provided manager id.
- `SELECT`: Limits the response to required users only:
    - `status`
    - `workerRequestingPaidTimeOff`
    - `timeOffEntry`
    - `timeOffEvent`
    - `timeOffDate`
    - `timeOffTypeForTimeOffEntry`
    - `cf_Manager`
    - `organization`

**Key nuances:** 

- Pending PTOs details
    - In multi-level approval scenario, this API will fetch the pending PTOs for the manager even though the approval is pending for second/third level of approval.

### **API #2: Fetches the details of the Event from the Event_Id**

This API retrieves additional details for a specific PTO request. The timeOffEvent value retrieved from API#1 that is passed in as`EVENT_WID` parameter to return the required details.

```bash
curl -X GET "https://<tenantUrl>/api/businessProcess/v1/<tenantName>/events/{{event_wid}}" \
  -H "Content-Type: application/json"
```

**Query Parameters:**

- `EVENT_WID`: this is fetched from API #1. Helps in getting the details of the event.

### **API #3: Approve Action for an Event**

This API will approve a PTO request based on the timeOffEvent value retrieved from API#1 that is passed in as `EVENT_WID` parameter.

```bash
curl -X POST "https://<tenantUrl>/ccx/service/<tenantName>/Integrations/v41.2" \
  -H "Content-Type: text/xml" \
  -d "<soapenv:Envelope xmlns:soapenv=‘http://schemas.xmlsoap.org/soap/envelope/’ 
  xmlns:bsvc=‘urn:com.workday/bsvc’>soapenv:Body<bsvc:Approve_Business_Process_Request 
  bsvc:version=‘v41.2’>bsvc:Event_Reference<bsvc:ID bsvc:type=‘WID’>{{event_wid}}</bsvc:ID></bsvc:Event_Reference>bsvc:Approve_Business_Process_Databsvc:Comment{{comment}}</bsvc:Comment></bsvc:Approve_Business_Process_Data></bsvc:Approve_Business_Process_Request></soapenv:Body></soapenv:Envelope>"
```

**Query Parameters:**

- `EVENT_WID` *(string):* Fetched from API #1. Used to approve the PTO.
- `COMMENT` *(string):* Manager’s comment to include with the PTO approval

### **API #4: Deny Action for an Event**

This API will reject a PTO request based on the timeOffEvent value retrieved from API#1 that is passed in as `EVENT_WID` parameter.

```bash
curl -X POST "<tenantUrl>/ccx/service/<tenantName>/Integrations/v41.2" \
  -H "Content-Type: text/xml" \
  -d "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' 
  xmlns:bsvc='urn:com.workday/bsvc'><soapenv:Body><bsvc:Deny_Business_Process_Request 
  bsvc:version='v41.2'><bsvc:Event_Reference><bsvc:ID bsvc:type='WID'>{{event_wid}}</bsvc:ID></bsvc:Event_Reference><bsvc:Deny_Business_Process_Data><bsvc:Comment>{{comment}}</bsvc:Comment></bsvc:Deny_Business_Process_Data></bsvc:Deny_Business_Process_Request></soapenv:Body></soapenv:Envelope>"
```

**Query Parameters:**

- `EVENT_WID` *(string):* Fetched from API #1. Used to reject the PTO.
- `COMMENT` *(string):* Manager’s comment to include with the PTO rejection (optional)

### API References

This plugin uses a combination of Workday WQL, REST APIs and SOAP business process to retrieve pending approval PTOs and approve/reject on behalf of the manager.

# **What Is In Scope for This Plugin?**

This plugin supports the following capabilities:

- Approving and rejecting PTO requests for **limited leave types** (e.g., Vacation, Sick Leave, Casual Leave, Earned Leave, Comp Time).
- Approving or rejecting PTO using **natural language expressions** (e.g., ****“Approve PTO for Jane,” “Reject John’s request,” or “Review my pending PTO approvals.”).
- Approving or rejecting **multiple PTO requests** in a single interaction, as long as all requests are for limited leave types.
- Rejecting a request, will prompt for a comment so feedback is provided to the employee.
- Approving or rejecting PTO requests that respect **existing Workday policies, validations, and approval workflows**.
- Approving PTO requests with **single level approvals** only.

# **What Is Out of Scope for This Plugin?**

This plugin does **not** support the following:

- Approving and rejecting PTO requests for **non-limited or leave-of-absence types**, such as parental leave, FMLA, or long-term disability.
- Submitting **partial-day or hourly PTO requests** (e.g., half-day, first half/second half, or specific hours).
- Displaying detailed **approval chain** information.
- Approving PTO requests with **multiple levels of approvals**.
- Displaying the end date, total time and employee comments for pending PTO approvals due to API limitation