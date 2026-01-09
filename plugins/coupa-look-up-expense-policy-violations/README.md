---
availability: INSTALLABLE
description: A plugin that allows Coupa administrators and finance approvers to identify,
  summarize, and review expense policy breaches directly through the Moveworks AI
  Assistant.
installation_asset_uuid: 5d2b4884-0057-4fb6-bae9-cb3e3613271c
name: Look Up Expense Policy Violations
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Elist+expense+policy+violations+for+last+month%2C+I+want+to+view+Duplicate+Receipt+violations+since+there+has+been+a+surge+recently%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+expense+reports+with+%27Duplicate+Receipt%27+violations+in+%3Cstrong%3ECoupa%3C%2Fstrong%3E+for+the+last+month...%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESuccessfully+retrieved+7+expense+policy+violations+for+the+last+month.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27ve+confirmed+you+want+to+see+%3Cstrong%3EDuplicate+Receipt%3C%2Fstrong%3E+violations+from+last+month+%28January+1+-+January+31%2C+2024%29.%3C%2Fp%3E%3Cp%3EHere%27s+a+summary+of+the+violations%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3ETotal+Violations+Found%3C%2Fstrong%3E%3A+7%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEmployees+with+Violations%3C%2Fstrong%3E%3A+3%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ETotal+Amount+Flagged%3C%2Fstrong%3E%3A+%24525.00%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EBelow+are+some+of+the+recent+violations%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Expense+Report+ER-2024-00123+%28Duplicate+Receipt%29%22%7D%2C%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Expense+Report+ER-2024-00130+%28Duplicate+Receipt%29%22%7D%2C%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Expense+Report+ER-2024-00142+%28Duplicate+Receipt%29%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EWould+you+like+to+view+more+details+for+any+of+these+expense+violations%3F%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Finance - Expense Management
- Finance - Other
systems:
- coupa
---

## Introduction

The “**Look Up Expense Policy Violations**” plugin enables Coupa administrators and finance approvers to identify and review expense policy breaches directly through the Moveworks AI Assistant. It helps streamline compliance by detecting anomalies such as duplicate receipts, over-limit claims, and missing receipts.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3Elist+expense+policy+violations+for+last+month%2C+I+want+to+view+Duplicate+Receipt+violations+since+there+has+been+a+surge+recently%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3ERetrieving+expense+reports+with+%27Duplicate+Receipt%27+violations+in+%3Cstrong%3ECoupa%3C%2Fstrong%3E+for+the+last+month...%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESuccessfully+retrieved+7+expense+policy+violations+for+the+last+month.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27ve+confirmed+you+want+to+see+%3Cstrong%3EDuplicate+Receipt%3C%2Fstrong%3E+violations+from+last+month+%28January+1+-+January+31%2C+2024%29.%3C%2Fp%3E%3Cp%3EHere%27s+a+summary+of+the+violations%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3ETotal+Violations+Found%3C%2Fstrong%3E%3A+7%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEmployees+with+Violations%3C%2Fstrong%3E%3A+3%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ETotal+Amount+Flagged%3C%2Fstrong%3E%3A+%24525.00%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EBelow+are+some+of+the+recent+violations%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Expense+Report+ER-2024-00123+%28Duplicate+Receipt%29%22%7D%2C%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Expense+Report+ER-2024-00130+%28Duplicate+Receipt%29%22%7D%2C%7B%22connectorName%22%3A%22coupa%22%2C%22citationTitle%22%3A%22Expense+Report+ER-2024-00142+%28Duplicate+Receipt%29%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EWould+you+like+to+view+more+details+for+any+of+these+expense+violations%3F%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Coupa Connector Guide**](https://marketplace.moveworks.com/connectors/coupa#how-to-implement) for detailed instructions. Be sure to follow the **User Consent Authentication setup** guide to ensure proper user-level access control for expense policy violations. Once completed, proceed to install the plugin and complete the setup efficiently.

### **User Consent Authentication Benefits:**

With **User Consent Authentication (UCA)** enabled for Coupa, users can securely connect their Coupa accounts to Moveworks—allowing the bot to retrieve and analyze expense reports and policy violations using each user’s own Coupa permissions.

This ensures that all expense data accessed or displayed by the bot complies with user-specific access rights and Coupa’s data security standards.

**Benefits:**

- **Enhanced security** – No shared credentials or admin tokens.
- **User-level access** – Each user can only view and analyze expense reports they have access to in Coupa.
- **Seamless experience** – Users authenticate once through Coupa and can interact naturally within Moveworks.
- **Compliance-friendly** – All actions respect Coupa’s role-based permissions and audit policies.

**Required Permissions**

Ensure that the **Coupa Integration User** (or the authenticated user via UCA) has the following Role permissions in Coupa

- `Expense User` ****– View Expense Reports

If your organization uses **custom expense policy configurations**, ensure equivalent permissions are applied to access the relevant reports and violation data.

**Required Scopes:**

The following API scopes must be granted for the Coupa Integration or UCA connection:

- `core.expense.read` - Allows to view expenses

**Your Instance Configuration:**

All Coupa API endpoints in this plugin use `{{YOUR_INSTANCE}}` as a placeholder. After installation, replace `{{YOUR_INSTANCE}}` in the action definitions with your actual Coupa instance name.

To find your instance name:

1. Log in to your Coupa account.
2. Check the URL in your browser — the instance name appears before `.coupacloud.com`
    - e.g., [https://your_instance.coupacloud.com](https://your_instance.coupacloud.com/) → instance name = `{{YOUR_INSTANCE}}`

Make sure to update this across all actions that reference the Coupa API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on installing and activating the plugin in Agent Studio.

## **Appendix**

### **API #1: Get Expense Reports with Policy Violations**

```bash
curl --location 'https://<YOUR_INSTANCE>/api/expense_reports?created-at[gt_or_eq]={{START_DATE}}T00:00:00Z&created-at[lt_or_eq]={{END_DATE}}T23:59:59Z&fields=["id","title","total","audit-score","status","updated-at","created-at",{"expense_lines":["id","description","amount","expense-date",{"expense_category":["name"]}]},{"expensed_by":["id","firstname","lastname"]},{"expense_policy_violations":["id","limit-exceeded","receipt-missing"]},{"expense_violations":["id","limit-exceeded","receipt-missing",{"violator":["id","expense-report-id","description","amount","expense-date",{"expense_category":["name"]}]},{"violable":["id","expense-report-id","description","amount","expense-date",{"expense_category":["name"]}]}]}]&limit=100' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `START_DATE` (string) - Used to specify the start date for retrieving expense reports.
    - Mapped to `created-at[gt_or_eq]` → Returns reports created **on or after** this date.
- `END_DATE` (string) - Used to specify the end date for retrieving expense reports.
    - Mapped to `created-at[lt_or_eq]` → Returns reports created **on or before** this date.
- `fields` (array) – Specifies attributes and related entities to include (e.g., expense lines, violations, submitter).
- `limit` (integer) – Maximum number of records to return (recommended: 100).
