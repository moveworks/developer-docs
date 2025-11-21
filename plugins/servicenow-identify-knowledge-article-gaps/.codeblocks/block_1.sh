curl --location 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge?sysparm_query=workflow_state=published^valid_to>=today&sysparm_fields=short_description,text,kb_category,category,sys_id' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
