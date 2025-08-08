curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver/{{KNOWLEDGE_ARTICLE_SYS_ID}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Content-Type: application/json' \
--data '{
  "state": "{{state}}",
  "comments": "{{comments}}"
}'
