curl --location 'https://<YOUR_DOMAIN>/api/now/table/incident?sysparm_query=descriptionLIKE{{description}}&sysparm_fields=number,description,sys_id' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
