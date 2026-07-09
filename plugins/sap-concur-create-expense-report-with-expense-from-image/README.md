---
availability: INSTALLABLE
description: A plugin that allows users to create an expense report with an expense from an image.
name: Create Expense Report with Expense from Image
installation_asset_uuid: 49afa7d6-1ae7-4f56-8046-e648ffb551ca
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+add+an+expense+for+a+team+dinner%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it+%E2%80%94+I%E2%80%99ll+add+an+expense+for+a+team+dinner.%3C%2Fp%3E%3Cp%3EPlease+use+the+%3Cstrong%3EUpload+file%3C%2Fstrong%3E+button+to+upload+the+receipt+image+so+I+can+create+the+expense+report+with+the+expense+attached.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-concur%22%2C%22citationTitle%22%3A%22receipt_team_dinner.png%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+uploaded+the+receipt.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%E2%80%99ve+got+the+receipt+image+attached.%3C%2Fp%3E%3Cp%3EWhat+name+should+I+use+for+the+expense+report%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22April+test%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EUsing+%3Cb%3EApril+test%3C%2Fb%3E+as+the+expense+report+name.%3C%2Fp%3E%22%2C%22connectorName%22%3A%22sap-concur%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3EClassifying+the+expense+from+your+receipt+image+for+%3Cb%3ESAP+Concur%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%E2%80%99s+what+I+extracted+from+the+receipt+and+will+add+to+%3Cstrong%3ESAP+Concur%3C%2Fstrong%3E+under+report+%3Cstrong%3EApril+test%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EDescription%3A%3C%2Fstrong%3E+Team+dinner%3C%2Fli%3E%3Cli%3E%3Cstrong%3ECategory%2FType%3A%3C%2Fstrong%3E+Meals+%2F+Business+Meals+%28Attendees%29%3C%2Fli%3E%3Cli%3E%3Cstrong%3EDate%3A%3C%2Fstrong%3E+2024-11-12%3C%2Fli%3E%3Cli%3E%3Cstrong%3EAmount%3A%3C%2Fstrong%3E+%2453.56%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPayment+type%3A%3C%2Fstrong%3E+Out-of-Pocket%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EPlease+confirm+these+details+are+correct+and+you+want+me+to+proceed+with+creating+the+expense+and+uploading+the+receipt.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ECreating+the+Team+dinner+expense+on+report+%3Cb%3EApril+test%3C%2Fb%3E+and+uploading+the+receipt+now...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22ReportName%5C%22%3A+%5C%22April+test%5C%22%2C%5Cn++%5C%22ExpenseType%5C%22%3A+%5C%22Business+Meals%5C%22%2C%5Cn++%5C%22TransactionDate%5C%22%3A+%5C%222024-11-12%5C%22%2C%5Cn++%5C%22TransactionAmount%5C%22%3A+53.56%2C%5Cn++%5C%22CurrencyCode%5C%22%3A+%5C%22USD%5C%22%2C%5Cn++%5C%22ReceiptImageId%5C%22%3A+%5C%22img_982347%5C%22%5Cn%7D%22%2C%22connectorName%22%3A%22sap-concur%22%2C%22title%22%3A%22POST+%2Fexpense%2Freports%2Fentries%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp%3ENew+entries+were+added+to+your+%3Cstrong%3ESAP+Concur%3C%2Fstrong%3E+expense+report.%3C%2Fp%3E%3Cp%3EView+it+here%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-concur%22%2C%22citationTitle%22%3A%22April+test%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Finance - Other
- Productivity
systems:
- sap-concur
---
### Introduction

SAP Concur is widely used to manage expense reports and receipts. Instead of manually creating a report, adding an expense, and uploading a receipt in Concur, this plugin lets users complete the entire workflow through a simple conversational experience.

In this guide, we'll walk through how to build **Create Expense Report with Expense from Image** in Agent Studio.

Let's get started!

### User Experience Preview

Please refer to the following [Purple Chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+add+an+expense+for+a+team+dinner%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it+%E2%80%94+I%E2%80%99ll+add+an+expense+for+a+team+dinner.%3C%2Fp%3E%3Cp%3EPlease+use+the+%3Cstrong%3EUpload+file%3C%2Fstrong%3E+button+to+upload+the+receipt+image+so+I+can+create+the+expense+report+with+the+expense+attached.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-concur%22%2C%22citationTitle%22%3A%22receipt_team_dinner.png%22%7D%5D%7D%2C%7B%22richText%22%3A%22I%27ve+uploaded+the+receipt.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%E2%80%99ve+got+the+receipt+image+attached.%3C%2Fp%3E%3Cp%3EWhat+name+should+I+use+for+the+expense+report%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22April+test%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EUsing+%3Cb%3EApril+test%3C%2Fb%3E+as+the+expense+report+name.%3C%2Fp%3E%22%2C%22connectorName%22%3A%22sap-concur%22%7D%2C%7B%22status%22%3A%22pending%22%2C%22richText%22%3A%22%3Cp%3EClassifying+the+expense+from+your+receipt+image+for+%3Cb%3ESAP+Concur%3C%2Fb%3E...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%E2%80%99s+what+I+extracted+from+the+receipt+and+will+add+to+%3Cstrong%3ESAP+Concur%3C%2Fstrong%3E+under+report+%3Cstrong%3EApril+test%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cstrong%3EDescription%3A%3C%2Fstrong%3E+Team+dinner%3C%2Fli%3E%3Cli%3E%3Cstrong%3ECategory%2FType%3A%3C%2Fstrong%3E+Meals+%2F+Business+Meals+%28Attendees%29%3C%2Fli%3E%3Cli%3E%3Cstrong%3EDate%3A%3C%2Fstrong%3E+2024-11-12%3C%2Fli%3E%3Cli%3E%3Cstrong%3EAmount%3A%3C%2Fstrong%3E+%2453.56%3C%2Fli%3E%3Cli%3E%3Cstrong%3EPayment+type%3A%3C%2Fstrong%3E+Out-of-Pocket%3C%2Fli%3E%3C%2Ful%3E%3Cp%3EPlease+confirm+these+details+are+correct+and+you+want+me+to+proceed+with+creating+the+expense+and+uploading+the+receipt.%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Confirm%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ECreating+the+Team+dinner+expense+on+report+%3Cb%3EApril+test%3C%2Fb%3E+and+uploading+the+receipt+now...%3C%2Fp%3E%22%2C%22connectorName%22%3A%22sap-concur%22%7D%5D%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn++%5C%22ReportName%5C%22%3A+%5C%22April+test%5C%22%2C%5Cn++%5C%22ExpenseType%5C%22%3A+%5C%22Business+Meals%5C%22%2C%5Cn++%5C%22TransactionDate%5C%22%3A+%5C%222024-11-12%5C%22%2C%5Cn++%5C%22TransactionAmount%5C%22%3A+53.56%2C%5Cn++%5C%22CurrencyCode%5C%22%3A+%5C%22USD%5C%22%2C%5Cn++%5C%22ReceiptImageId%5C%22%3A+%5C%22img_982347%5C%22%5Cn%7D%22%2C%22connectorName%22%3A%22sap-concur%22%2C%22title%22%3A%22POST+%2Fexpense%2Freports%2Fentries%22%7D%7D%2C%7B%22richText%22%3A%22%3Cp%3ENew+entries+were+added+to+your+%3Cstrong%3ESAP+Concur%3C%2Fstrong%3E+expense+report.%3C%2Fp%3E%3Cp%3EView+it+here%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sap-concur%22%2C%22citationTitle%22%3A%22April+test%22%7D%5D%7D%5D%7D%5D%7D) for a sample conversational experience between a user and the AI Assistant for this plugin.


### Prerequisites

* Access to Agent Studio
* A configured SAP Concur connector using **Authorization Code** authentication. Please follow the [SAP Concur connector guide](https://marketplace.moveworks.com/connectors/sap-concur#how-to-implement) to create the connector.
* The following scopes added to the connector:

  * `openid`
  * `user.read`
  * `EXPRPT`
  * `IMAGE`
  * `LIST`
  * `expense.report.read`
  * `expense.report.readwrite`
  * `expense.config.policies.restricted.read`
  * `expense.config.expensetypes.restricted.read`

* Once the connector is ready, follow the [plugin installation documentation](https://docs.moveworks.com/agent-studio/agentic-automation/ai-agent-marketplace-installation) for steps on how to install and activate the plugin in Agent Studio.

### Implementation Details

To efficiently build the use case, we utilize four APIs.

---

### API #1: Get Expense Group Configurations

The Expense Group Configurations API allows you to retrieve valid expense types and payment types for the authenticated user. This helps ensure the expense entry is created using supported values.

```bash
curl --location 'https://your.domain.com/api/v3.0/expense/expensegroupconfigurations' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}'
```

#### Parameters

This API does not require additional parameters for the user-scoped lookup.

---

### API #2: Create Expense Report

The Expense Reports API allows you to create a new expense report for the authenticated user.

```bash
curl --location 'https://your.domain.com/api/v3.0/expense/reports' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}' \
--header 'Content-Type: application/json' \
--data '{
  "name": "{{report_name}}"
}'
```

#### Parameters

* `name` - The name of the new expense report.

---

### API #3: Create Expense Entry

The Expense Entries API allows you to add an expense entry to an existing expense report.

```bash
curl --location 'https://your.domain.com/api/v3.0/expense/entries' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}' \
--header 'Content-Type: application/json' \
--data '{
  "ReportID": "{{report_id}}",
  "ExpenseTypeCode": "{{expense_type_code}}",
  "PaymentTypeID": "{{payment_type_id}}",
  "TransactionDate": "{{transaction_date}}",
  "TransactionAmount": {{transaction_amount}},
  "TransactionCurrencyCode": "{{currency_code}}",
  "VendorDescription": "{{vendor_description}}",
  "Comment": "{{comment}}"
}'
```

#### Parameters

* `ReportID` - The unique identifier of the expense report.
* `ExpenseTypeCode` - The expense type code for the entry.
* `PaymentTypeID` - The payment type identifier for the entry.
* `TransactionDate` - The transaction date for the expense.
* `TransactionAmount` - The amount of the expense.
* `TransactionCurrencyCode` - The currency code for the transaction.
* `VendorDescription` - The merchant or vendor name.
* `Comment` - A note to include with the expense entry.

---

### API #4: Upload Receipt Image to Expense Entry

The Image API allows you to upload a receipt image to the created expense entry.

```bash
curl --location 'https://your.domain.com/api/image/v1.0/expenseentry/{{expense_entry_id}}' \
--header 'Authorization: Bearer {{generated_bearer_token}}' \
--header 'Content-Type: image/jpeg' \
--data-binary '@{{receipt_file_path}}'
```

#### Parameters

* `expense_entry_id` - The unique identifier of the expense entry.
* `receipt_file_path` - The file path of the receipt image to upload.
* `Content-Type` - The MIME type of the uploaded file.