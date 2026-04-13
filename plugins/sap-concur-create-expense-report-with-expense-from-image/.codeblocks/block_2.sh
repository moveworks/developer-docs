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
