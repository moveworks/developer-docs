---
accreditations:
- DEFAULT
availability: VALIDATED
custom_tags:
- Polling Required
description: A plugin to notify managers when they have expense reports to approve
  or reject to streamline the process and simplify administrative workflows.
difficulty_level: ADVANCED
domain:
- Finance - Other
- Approvals
fidelity: GUIDE
name: Approve / Reject Expense Report
difficulty_level: INTERMEDIATE
time_in_minutes: 25
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+New+approval+queue+detected+while+polling+Concur%27s+Workflow+v4+API%3Cbr%3E2.+Middleware+initiated+trigger+%28polling+every+60+seconds%29%3Cbr%3E%3Cbr%3E%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApproval+ID%3C%2Fi%3E%3A+required+for+API+actions+to+work%3Cbr%3E%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprove+report%3C%2Fi%3E%3A+Approve+and+move+report+to+next+approver+in+report+chain%3Cbr%3E2.+%3Ci%3EReject+report%3C%2Fi%3E%3A+Reject+requisition+and+move+record+back+to+previous+approver+or+owner%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHi+Jamie%2C%3Cbr%3E%3Cbr%3E%3Cb%3E%F0%9F%92%B3+Concur+Expense+Report+Pending+Your+Approval%3C%2Fb%3E%3A%3Cbr%3E-+Name%3A+Dinner+with+ACME+client%3Cbr%3E-+%3Ci%3EDate%3C%2Fi%3E%3A+Aug+10%2C+2024%3Cbr%3E-+%3Ci%3ECreated+by%3C%2Fi%3E%3A+Sam+Stinson%3Cbr%3E-+%3Ci%3EAmount%3C%2Fi%3E%3A+USD+341.07%3Cbr%3E-+%3Ci%3ELast+Comment%3C%2Fi%3E%3A+Uploading+receipt+of+dinner%3Cbr%3E-+%3Ci%3EApproval+Status%3C%2Fi%3E%3A+Pending+Approval%3Cbr%3E-+%3Ci%3EReport+ID%3C%2Fi%3E%3A+14170%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Approve%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Send+back%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Approvals
- Finance - Other
systems:
- sap-concur
---

## **Introduction**

The **“Approve or Reject Expense Report”** plugin enables managers to quickly review and take action on pending employee expense reports—directly through the Moveworks AI Assistant. By surfacing pending reports and allowing one-click approval or rejection, the plugin streamlines the expense management process, reduces delays, and ensures faster resolution for employees awaiting reimbursement. This efficient workflow improves compliance, enhances visibility, and eliminates the need for manual follow-ups.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Do+I+have+any+pending+expense+reimbursements+to+approve%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22Checking+SAP+Concur+for+pending+expense+reports+assigned+to+you+for+approval.%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Found+multiple+pending+reports.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou+have+two+pending+expense+reimbursement+requests%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3ESarah+Miller%3C%2Fb%3E+for+%3Cb%3E%24250.00%3C%2Fb%3E%3Cul%3E%3Cli%3E%3Cb%3EReport%3A%3C%2Fb%3E+Q3+Client+Dinner%3C%2Fli%3E%3Cli%3E%3Cb%3EReport+ID%3A%3C%2Fb%3E+EXP-12345%3C%2Fli%3E%3Cli%3E%3Cb%3ESubmitted%3A%3C%2Fb%3E+2024-07-26%3C%2Fli%3E%3Cli%3E%3Cb%3EDetails%3A%3C%2Fb%3E+Client+meals+%28%24150%29%2C+Taxi+fare+%28%2430%29%2C+Office+supplies+%28%2470%29%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EJohn+Doe%3C%2Fb%3E+for+%3Cb%3E%241%2C500.00%3C%2Fb%3E%3Cul%3E%3Cli%3E%3Cb%3EReport%3A%3C%2Fb%3E+Software+License+Renewal%3C%2Fli%3E%3Cli%3E%3Cb%3EReport+ID%3A%3C%2Fb%3E+EXP-67890%3C%2Fli%3E%3Cli%3E%3Cb%3ESubmitted%3A%3C%2Fb%3E+2024-07-25%3C%2Fli%3E%3Cli%3E%3Cb%3EDetails%3A%3C%2Fb%3E+Annual+software+license+for+DesignSuite+%28%241200%29%2C+Training+materials+%28%24300%29%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhich+report%28s%29+would+you+like+to+approve%2C+and+do+you+have+any+comments%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+approve+Sarah+Miller%27s+report.+Comment+as+Approved%2C+thanks%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay%2C+I+will+approve+the+expense+reimbursement+from+%3Cb%3ESarah+Miller%3C%2Fb%3E+for+%3Cb%3E%24250.00%3C%2Fb%3E+for+the+report+%3Cb%3EQ3+Client+Dinner%3C%2Fb%3E+with+the+comment%3A+%3Ci%3E%5C%22Approved%2C+thanks%5C%22%3C%2Fi%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI%27ve+approved+Sarah+Miller%27s+expense+reimbursement+for+%3Cb%3EQ3+Client+Dinner%3C%2Fb%3E+with+your+comment.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-concur%22%2C%22citationTitle%22%3A%22Expense+Report%3A+Q3+Client+Dinner%22%7D%5D%7D%5D%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for SAP Concur first, prior to installing this plugin. Please follow the [**SAP Concur Connector Guide**](https://marketplace.moveworks.com/creator-studio/resources/connector/?id=sap-concur) to create the connector. Note that for looking up expense reports pending your Approval, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- expense.report.read
- expense.report.readwrite
- expense.report.workflowstatus.write
- identity.user.core.read
- identity.user.coresensitive.read
- identity.user.enterprise.read
- identity.user.sap.read
- identity.user.ids.read
- USER
- EXPRPT

Refer to [**SAP Concur Scope Usage**](https://developer.concur.com/api-reference/expense/expense-report/v4.workflows.html) for full details.

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API #1: Get Manager ID by Email**

```bash
curl --location 'https://<YOUR_INSTANCE>/profile/identity/vX/Users?filter=userName eq "{{email}}"' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Query Parameters:**

- `{{email}}` - Retrieves Manager ID by email.

### **API #2: View Pending Expense Report Approvals by Manager ID**

```bash
curl --request GET \
  --url 'https://<YOUR_INSTANCE>/expensereports/vX/users/{manager_id}/context/MANAGER/reportsToApprove' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**Path Parameters:**

- `{{manager_id}}`  - The ID of the manager (approver) whose expense reports are pending.

### **API #3: Approve or Reject Pending Expense Report**

```bash
curl --request PATCH\
  --url 'https://<YOUR_INSTANCE>/expensereports/vX/users/{{manager_id}}/context/MANAGER/reports/{{report_id}}/{{status}}' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
  --data-raw '{"comment":"{{comment}}"}'
```

**Path Parameters:**

- `{{manager_id}}`  - The ID of the manager (approver) whose pending expense reports.
- `{{report_id}}` – The unique ID of the expense report to be approved or rejected.
- `{{status}}` – The action to take on the report. Use `approve` to approve the report, or `sendBack` to reject it.

**Request Body Parameters:**

- `{{comment}}` – The comment to include when sending the report back. Required when using sendBack to reject the report.