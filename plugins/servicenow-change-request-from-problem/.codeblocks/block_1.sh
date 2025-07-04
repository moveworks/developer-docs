curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "{{short_description}}",
  "reason": "{{reason}}",
  "implementation_plan": "{{implementation_plan}}",
  "u_problem": "{{u_problem_sys_id}}"
}'

