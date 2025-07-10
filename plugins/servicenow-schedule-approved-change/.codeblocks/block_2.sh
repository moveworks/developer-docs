curl --location --request PATCH 'https://<YOUR_DOMAIN>/api/now/table/change_request/{{sys_id}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "start_date": "{{start_date}}",
  "end_date": "{{end_date}}"
}'
