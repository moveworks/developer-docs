curl --location 'https://<YOUR_INSTANCE>/api/now/table/cmdb_ci?sysparm_query=sys_class_name={{cmdb_table}}^nameLIKE{{search_term}}&sysparm_fields=name,sys_class_name,operational_status,install_status,owned_by,environment,location,ip_address,os,depends_on,supports_service,sys_updated_on' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
