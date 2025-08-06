curl --request PATCH --url 'https://dev265898.service-now.com/api/now/table/problem/{{problem_sys_id}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data-raw '{
  "rfc": "{{change_req_sys_id}}"
}'
