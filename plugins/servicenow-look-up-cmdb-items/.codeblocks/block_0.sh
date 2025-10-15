curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user_has_role?sysparm_query=user.email={{email}}^role.name=cmdb_read&sysparm_fields=role.name' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
