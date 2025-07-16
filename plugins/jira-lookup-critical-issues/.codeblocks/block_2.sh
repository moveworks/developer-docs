curl --location --request PUT 'https://<YOUR_DOMAIN>/rest/api/3/issue/{{issue_key}}/assignee' \
--header 'Authorization: Basic <API_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "accountId": "{{accountId}}"
}'
