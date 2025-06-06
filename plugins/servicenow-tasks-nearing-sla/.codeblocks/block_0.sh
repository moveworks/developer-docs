curl -X GET "https://your-instance.service-now.com/api/now/table/task_sla?sysparm_query=has_breached=true^active=true^sys_created_on>=javascript:gs.dateGenerate('{{ticket_created_after_date}}','{{tickets_created_after_time}}')&sysparm_fields=sla.duration,task.number,business_percentage,original_breach_time,task" \
--header "Accept: application/json" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN"

