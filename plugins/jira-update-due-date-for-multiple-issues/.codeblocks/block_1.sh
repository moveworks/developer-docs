curl --location --request PUT 'https://<your-instance>/rest/api/3/issue/{{issue-key}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <your-credentials>' \
--data '{
  "fields": {
    "duedate": "{{YYYY-MM-DD}}"
  }
}'
