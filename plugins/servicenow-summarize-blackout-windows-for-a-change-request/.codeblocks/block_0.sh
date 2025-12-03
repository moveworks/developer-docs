curl --location 'https://<your_instance>/api/now/table/sys_user_grmember?sysparm_display_value=all&sysparm_query=user.email={{user_email}}&sysparm_fields=group' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
