curl --location 'https://<your_instance>/api/now/table/conflict?sysparm_query=change={{change_sys_id}}^type=blackout&sysparm_fields=change,type,change.conflict_status,schedule,schedule.name,change.start_date,change.end_date,schedule.time_zone,schedule.description,last_checked,schedule.label,schedule.calendar_name,configuration_item.name,impacted_service' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
