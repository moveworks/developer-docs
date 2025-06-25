curl --location 'https://<YOUR_DOMAIN>/api/now/table/incident' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "{{short_description}}",
  "description": "{{description}}",
  "caller_id": "{{caller_id}}",
  "impact": "{{impact}}",
  "urgency": "{{urgency}}",
  "priority": "{{priority}}"
}'

