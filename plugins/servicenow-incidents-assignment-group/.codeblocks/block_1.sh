curl --location "https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group={{group_sys_id}}^{{state}}^{{date_range}}&sysparm_fields=number,short_description,priority,category,caller_id,resolved_by,resolved_at,resolution_notes,state,close_notes&sysparm_limit=100&sysparm_display_value=true \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"
