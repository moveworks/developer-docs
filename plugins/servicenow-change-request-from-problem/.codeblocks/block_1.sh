curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem?sysparm_query=descriptionLIKE{{description}}&sysparm_fields=sys_id,number,short_description,description,state,problem_state,priority,impact,urgency,category' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
