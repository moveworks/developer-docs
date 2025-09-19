curl --location --request POST 'https://<YOUR_DOMAIN>/api/now/table/kb_knowledge' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "short_description": "{{short_description}}",
  "text": "{{text}} {{user_comments}}",
  "kb_knowledge_base": "{{kb_knowledge_base}}",
  "workflow_state": "draft",
  "article_type": "html"
}'
