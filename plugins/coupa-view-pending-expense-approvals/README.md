---
availability: INSTALLABLE
description: A plugin that allows you to look up expense reports pending your approval.
installation_asset_uuid: 973b738c-80f0-4b76-a8da-dba6f411960a
name: Look Up Expense Reports Pending My Approval
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+expense+reports+pending+my+approval+in+Coupa%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+I+can+get+that+from+%3Cb%3ECoupa%3C%2Fb%3E.+Here+are+the+expense+reports+awaiting+your+approval%3A%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+expense+reports+pending+approval+from+Coupa...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Retrieved+3+expense+reports.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-001%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-002%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-003%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+see+the+details+of+any+of+these+reports%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+show+me+the+details+for+ER-2024-002%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+one+moment.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+details+for+Expense+Report+ER-2024-002...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+retrieved+expense+report+details.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+Expense+Report+ER-2024-002+from+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+John+Smith%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDate+Submitted%3A%3C%2Fb%3E+2024-03-08%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24120.00%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EPurpose%3A%3C%2Fb%3E+Client+Lunch%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-002%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22View+Full+Details%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Finance - Other
systems:
- coupa
---

# Introduction

The Look Up Expense Reports Pending My Approval plugin enables your users to effortlessly access and review the details of expense reports awaiting their approval in Coupa, directly through the Moveworks AI Assistant.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio

# What are we building?

## Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+the+expense+reports+pending+my+approval+in+Coupa%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+I+can+get+that+from+%3Cb%3ECoupa%3C%2Fb%3E.+Here+are+the+expense+reports+awaiting+your+approval%3A%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+expense+reports+pending+approval+from+Coupa...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Retrieved+3+expense+reports.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-001%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-002%22%2C%22connectorName%22%3A%22coupa%22%7D%2C%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-003%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+see+the+details+of+any+of+these+reports%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+show+me+the+details+for+ER-2024-002%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+one+moment.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+details+for+Expense+Report+ER-2024-002...%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+retrieved+expense+report+details.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+details+for+Expense+Report+ER-2024-002+from+%3Cb%3ECoupa%3C%2Fb%3E%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%5Cn++%3Cli%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+John+Smith%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EDate+Submitted%3A%3C%2Fb%3E+2024-03-08%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EAmount%3A%3C%2Fb%3E+%24120.00%3C%2Fli%3E%5Cn++%3Cli%3E%3Cb%3EPurpose%3A%3C%2Fb%3E+Client+Lunch%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Expense+Report+ER-2024-002%22%2C%22connectorName%22%3A%22coupa%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22View+Full+Details%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# Installation Steps

We recommend creating the connector for Coupa first, prior to installing this plugin. Please follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create the connector. Note that for Look Up Expense Reports Pending My Approval, you will also need to add the following permissions (the connector guide will walk you through how to add permissions):

- User » Standard role for all users who need to create and/or approve requisitions

After you have configured the connector, please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more information on how to install a plugin. 

# Appendix

### **API #1: Get User ID by Email**

The [Users API](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/reference-data-resources/users-api-(users)) in Coupa allows you to perform various operations on the user entity. We’ll use this API call to get the User ID of a user (through their email). This User ID will be used in the next step to get their pending expense report approvals. 

```bash
curl --request GET \
  --url 'https://your-domain.com/api/users' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: email
Value: <user’s Email>
- Key: fields
Value: ["id"]

### **API #2: View Pending Expense Report Approvals by Approver ID**

The [Approvals](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/approvals-api-(approvals)) API in Coupa allows you to perform various approval or rejection related actions on different entities in Coupa. We’ll be using the GET call to fetch the expense reports which has the user added as an approver. 

```bash
curl --request GET \
  --url 'https://your-domain.com/api/approvals' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: status
Value: pending_approval
- Key: approvable-type
Value: ExpenseReport
- Key: approver-id
Value: user_id

### API #3 Get Expense Report by ID

The API above gives us the ID of the Expense Reports which need the user’s approval. However, it skips some crucial details, which can be easily obtained by making a call to the [Expense Reports API](https://compass.coupa.com/en-us/products/product-documentation/integration-technical-documentation/the-coupa-core-api/resources/transactional-resources/expenses-api-(expense_reports)/expense-reports-api). 

```bash
curl --request GET \
  --url 'https://your-domain.com/api/expense_reports/<expense_report_id>' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
```

With the following example params:

- Key: fields
Value: ["id", "title", "submitted-at", "auditor-note", "total", "audit-score", "type-of-expense", {"expensed_by":["fullname","email"]}, {"expense_lines":["description","amount"]}]