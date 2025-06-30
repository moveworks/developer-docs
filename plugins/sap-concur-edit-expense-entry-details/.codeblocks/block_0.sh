curl --location --request PUT 'https://your.domain.com/api/v3.0/expense/entries/<entryId>?user={{user_email_address}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}'\
--data '{
  "TransactionAmount": "<TransactionAmount>",
  "TransactionCurrencyCode": "<TransactionCurrencyCode>",
  "ExchangeRate": "<ExchangeRate>",
  "Description": "<Description>",
  "TransactionDate": "<TransactionDate>"
}'
