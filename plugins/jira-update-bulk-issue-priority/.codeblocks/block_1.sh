curl --location --request PUT 'https://<YOUR_INSTANCE>/rest/api/3/issue/{{key}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <API_TOKEN>' \
--data '{
  "fields": {
    "priority": {
      "name": "{{priority}}"
    }
  }
}'
