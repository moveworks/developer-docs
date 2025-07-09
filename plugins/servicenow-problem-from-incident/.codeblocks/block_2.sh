curl --location 'https://<YOUR_DOMAIN>/api/now/table/sys_user_group?sysparm_query=nameLIKE{{user_group}}&sysparm_limit=1&sysparm_fields=sys_id,name' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
--header 'Content-Type: application/json'
