curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=short_descriptionLIKE<SHORT_DESCRIPTION>&sysparm_limit=5&sysparm_fields=number%2Cshort_description' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' 

