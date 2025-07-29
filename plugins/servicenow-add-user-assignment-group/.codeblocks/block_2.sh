curl --location --request POST "https://<YOUR_INSTANCE>/api/now/table/sys_user_grmember" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json" \
--header "Content-Type: application/json" \
--data '{
  "user": "<USER_SYS_ID>",
  "group": "<GROUP_SYS_ID>"
}'

