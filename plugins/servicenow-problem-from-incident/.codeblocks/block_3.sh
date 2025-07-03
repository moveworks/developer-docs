curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "{{short_description}}",
  "assignment_group": "{{assignment_group}}"
}'
