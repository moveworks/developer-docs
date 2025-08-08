curl --location --request POST 'https://<YOUR_INSTANCE>/api/now/table/sys_user_grmember' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "user": "{{user_sys_id}}",
  "group": "{{group_sys_id}}"
}'
