curl --location 'https://<your-instance>.service-now.com/api/now/table/ast_contract?sysparm_limit={{limit}}&sysparm_fields=number%2Cvendor.name%2Cexpiration.name%2Cends&sysparm_query=ORDERBYDESCnumber%5Evendor.name%3D{{vendor_name}}%5EendsBETWEEN{{start_date}}%40{{end_date}}' \
--header 'Authorization: Bearer {{your_access_token}}'
