curl --location 'https://<YOUR_INSTANCE>/api/now/table/task_sla?sysparm_query=taskIN{{INCIDENT_SYS_ID}}&sysparm_fields=task.number%2Ctask.sys_id%2Chas_breached%2Cbreach_time%2Cduration%2Cbusiness_time_left%2Cpercentage%2Cstage%2Cstart_time%2Cplanned_end_time%2Csla.name%2Coriginal_breach_time&sysparm_display_value=true&sysparm_limit=100' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
