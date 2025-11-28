curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user_grmember?sysparm_display_value=all&sysparm_query=user.email%3D{{USER_EMAIL}}&sysparm_fields=group' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
