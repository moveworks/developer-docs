curl --location 'https://<your_instance>/api/now/table/change_request?sysparm_query={{filter_query}}^ORDERBYDESCsys_created_on&sysparm_fields=sys_id,number,short_description,assigned_to,planned_start_date,planned_end_date,sys_created_on,state&sysparm_limit=100' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
