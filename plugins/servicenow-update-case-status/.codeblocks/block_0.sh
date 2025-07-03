curl --location 'https://<your-instance>.service-now.com/api/now/table/incident?category={{category}}&sysparm_limit=100&sysparm_query=ORDERBYDESCnumber' \
--header 'Authorization: Bearer <your-access-token>'

