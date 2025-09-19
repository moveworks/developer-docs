curl --location --request POST 'https://<YOUR_DOMAIN>/api/now/table/m2m_kb_task' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "kb_knowledge": "{{knowledge_article_id}}",
  "task": "{{sys_id}}"
}'
