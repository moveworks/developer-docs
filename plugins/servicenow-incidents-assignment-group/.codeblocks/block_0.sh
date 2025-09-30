curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=user.email=<USER_EMAIL>&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
