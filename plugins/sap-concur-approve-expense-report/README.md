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
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Do+I+have+any+pending+expense+reimbursements+to+approve%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+SAP+Concur+for+pending+expense+reports+assigned+to+you+for+approval.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+one+pending+report.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou+have+one+pending+expense+reimbursement+request+from+%3Cb%3ESarah+Miller%3C%2Fb%3E+for+%3Cb%3E%24250.00%3C%2Fb%3E.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EReport+Details%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EReport+Name%3A%3C%2Fb%3E+Q3+Client+Dinner%3C%2Fli%3E%3Cli%3E%3Cb%3ETotal+Amount%3A%3C%2Fb%3E+%24250.00%3C%2Fli%3E%3Cli%3E%3Cb%3EDate+Submitted%3A%3C%2Fb%3E+2024-07-26%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI%27ve+approved+the+expense+reimbursement+for+Sarah+Miller.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Q3+Client+Dinner%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- Approvals
- Finance - Other
systems:
- sap-concur
time_in_minutes: 15
---

## **Introduction**

The **“Approve or Reject Expense Report”** plugin enables managers to quickly review and take action on pending employee expense reports—directly through the Moveworks AI Assistant. By surfacing pending reports and allowing one-click approval or rejection, the plugin streamlines the expense management process, reduces delays, and ensures faster resolution for employees awaiting reimbursement. This efficient workflow improves compliance, enhances visibility, and eliminates the need for manual follow-ups.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to **Agent Studio**

## **What are we building?**

### **Agent Design:-**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Do+I+have+any+pending+expense+reimbursements+to+approve%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+SAP+Concur+for+pending+expense+reports+assigned+to+you+for+approval.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Found+one+pending+report.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EYou+have+one+pending+expense+reimbursement+request+from+%3Cb%3ESarah+Miller%3C%2Fb%3E+for+%3Cb%3E%24250.00%3C%2Fb%3E.%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cb%3EReport+Details%3A%3C%2Fb%3E%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EReport+Name%3A%3C%2Fb%3E+Q3+Client+Dinner%3C%2Fli%3E%3Cli%3E%3Cb%3ETotal+Amount%3A%3C%2Fb%3E+%24250.00%3C%2Fli%3E%3Cli%3E%3Cb%3EDate+Submitted%3A%3C%2Fb%3E+2024-07-26%3C%2Fli%3E%3C%2Ful%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI%27ve+approved+the+expense+reimbursement+for+Sarah+Miller.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report%3A+Q3+Client+Dinner%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend creating the connector for SAP Concur first, prior to installing this plugin. Please follow the [**SAP Concur Connector Guide**](https://marketplace.moveworks.com/creator-studio/resources/connector/?id=sap-concur) to create the connector. Note that for looking up expense reports pending your Approval, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- expense.report.read
- expense.report.readwrite
- expense.report.workflowstatus.write
- identity.user.ids.read
- identity.user.core.read
- identity.user.coresensitive.read
- identity.user.enterprise.read
- identity.user.sap.read
- USER
- EXPRPT

Refer to [**SAP Concur Scope Usage**](https://developer.concur.com/api-reference/expense/expense-report/v4.workflows.html) for full details.

After you have configured the connector, please refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin.

# **Appendix**

### **API #1: Get Manager ID by Email**

```bash
curl --location '[https://](https://us2.api.concursolutions.com/profile/identity/v4/Users?filter=userName%20eq%20%22yagarwal%40moveworks.ai%22)<YOUR_INSTANCE>/profile/identity/vX/Users?filter=userName eq "{{email}}"' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
```

- `{{email}}` - Retrieves Manager ID by email.

### **API #2: View Pending Expense Report Approvals by Manager ID**

```bash
curl --location 'https://<YOUR_INSTANCE>/expensereports/vX/users/{{manager_id}}/context/MANAGER/reportsToApprove' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
```

**Path Parameters:**

- `{{manager_id}}`  - The ID of the manager (approver) whose expense reports are pending.

### **API #3: Approve or Reject Pending Expense Report**

```bash
curl --location --request PATCH 'https://<YOUR_INSTANCE>/expensereports/vX/users/{{manager_id}}/context/MANAGER/reports/{{report_id}}/{{status}}' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json' \
--data '{
"comment":"{{comment}}"
}'
```

**Path Parameters:**

- `{{manager_id}}`  - The ID of the manager (approver) whose pending expense reports.
- `{{report_id}}` – The unique ID of the expense report to be approved or rejected.
- `{{status}}` – The action to take on the report. Use `approve` to approve the report, or `sendBack` to reject it.

**Request Body Parameters:**

- `{{comment}}` – The comment to include when sending the report back. Required when using sendBack to reject the report.