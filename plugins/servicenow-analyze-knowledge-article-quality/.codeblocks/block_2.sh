curl --location 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge?sysparm_query=author.email={{email}}&sysparm_fields=number,short_description,text,display_number,author.email' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
