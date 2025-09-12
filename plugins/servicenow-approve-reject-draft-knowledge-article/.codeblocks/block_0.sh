curl --location 'https://<<API_SERVER_DOMAIN>>.service-now.com/api/now/table/sysapproval_approver?sysparm_query=approver.email%3D{{USER_EMAIL}}%5Estate%3Drequested%5Esource_table%3Dkb_knowledge&sysparm_fields=sys_id%2Capprover%2Cstate%2Cdocument_id%2Cdocument_id.display_value%2Cdocument_id.short_description%2Cdocument_id.link&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>'
