curl --location --request GET 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge?sysparm_query=number={{article_number}}?&sysparm_fields=short_description,workflow_state,author.name,sys_updated_on,kb_knowledge_base,number" ' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
