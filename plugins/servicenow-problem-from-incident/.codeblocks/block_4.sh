curl --location --request PATCH 'https://<YOUR_DOMAIN>/api/now/table/incident/{{incident_sys_id}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "problem_id": "{{problem_id}}"
}'
