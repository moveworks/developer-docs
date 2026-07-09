curl --location 'https://<YOUR_INSTANCE>/api/now/table/alm_asset?sysparm_fields=sys_id%2Cdisplay_name%2Casset_tag%2Cassigned_to.name%2Cassigned_to.email%2Cdepartment.name%2Cowned_by.name%2Cserial_number%2Cmodel_category.name%2Ccompany.name%2Cinstall_status%2Ccost%2Csys_updated_on%2Clife_cycle_stage_status&sysparm_query={{FILTER_QUERY}}&sysparm_limit=50&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
