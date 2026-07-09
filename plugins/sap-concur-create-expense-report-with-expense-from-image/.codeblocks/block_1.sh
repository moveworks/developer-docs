curl --location 'https://your.domain.com/api/v3.0/expense/reports' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{generated_bearer_token}}' \
--header 'Content-Type: application/json' \
--data '{
  "name": "{{report_name}}"
}'
