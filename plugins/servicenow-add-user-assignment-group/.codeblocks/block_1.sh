curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user_group?sysparm_query=manager={{MANAGER_SYS_ID}}&sysparm_fields=name,sys_id,description&sysparm_display_value=true' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
