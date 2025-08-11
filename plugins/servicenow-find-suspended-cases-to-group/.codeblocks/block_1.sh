curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group%<GROUP_ID>&sysparm_fields=number%2Cshort_description%2Cstate%2Cassigned_to.name%2Cassignment_group&sysparm_display_value=all' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
