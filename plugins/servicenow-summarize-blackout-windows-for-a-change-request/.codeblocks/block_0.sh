curl --location 'https://<your_instance>/api/now/table/sys_user_grmember?sysparm_display_value=all&sysparm_query=user.email={{user_email}}^ORDERBYDESCsys_created_on&sysparm_fields=group,sys_created_on&sysparm_limit=100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
