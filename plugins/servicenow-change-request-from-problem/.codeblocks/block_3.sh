curl --request PATCH --url 'https://<YOUR_DOMAIN>/api/now/table/change_request/{{change_req_sys_id}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data-raw '{
  "parent": "{{problem_sys_id}}"
}'
