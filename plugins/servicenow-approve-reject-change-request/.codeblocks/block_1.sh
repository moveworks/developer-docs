curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver/<SYS_ID>' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "state": "{{state}}",
  "comments": "{{action_comment}}"
}'
