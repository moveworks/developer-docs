curl --location 'https://<YOUR_INSTANCE>/api/now/table/incident?sysparm_query=active%3Dtrue%5EstateIN2%2C3%5Eassignment_groupIN1{{ASSIGNMENT_GROUP_ID}}%5EORDERBYDESCsys_created_on&sysparm_fields=number%2Csys_id%2Cpriority%2Cshort_description%2Copened_at%2Cstate%2Cimpact%2Cpriority%2Curgency%2Cseverity%2Ccategory%2Cassigned_to.name%2Cassignment_group.name&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
