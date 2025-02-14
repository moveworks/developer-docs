curl --request PUT \
  --url 'https://your-domain.com/api/v3.0/expense/entries/{{expenseID}}?user={{user.email_addr}}
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json'
  --data '{
    "TransactionAmount": "{{TransactionAmount}}",
    "TransactionCurrencyCode": "{{TransactionCurrencyCode}}",
    "ExchangeRate": "{{ExchangeRate}}",
    "Description": "{{BusinessPurpose}}",
    "TransactionDate": "{{TransactionDate}}"
}'
