curl --location '<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=assignment_group%<Group_ID>&sysparm_fields=number%2Cshort_description%2Cpriority%2Cstate%2Cassigned_to' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer'
