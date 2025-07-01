curl --location "https://<YOUR_INSTANCE>/api/now/table/cmdb_ci_computer?sysparm_query=assigned_to=<SYS_ID>&sysparm_fields=name,assigned_to.name,u_next_scheduled_refresh,u_last_refresh_date,model_id.name" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"

