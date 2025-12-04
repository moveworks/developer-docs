curl --location 'https://<your_instance>/api/now/table/conflict?sysparm_query=change={{change_sys_id}}^type=blackout^ORDERBYDESCsys_created_on&sysparm_fields=change,type,change.conflict_status,schedule,schedule.name,change.start_date,change.end_date,schedule.time_zone,schedule.description,last_checked,schedule.label,schedule.calendar_name,configuration_item.name,impacted_service,sys_created_on&sysparm_limit=50' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
