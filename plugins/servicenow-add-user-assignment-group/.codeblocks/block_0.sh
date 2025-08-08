curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=email={{EMAIL}}&sysparm_fields=sys_id,name,email' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
