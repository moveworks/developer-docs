curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/table/incident?sysparm_query=priority%3D1%5EstateNOT%20IN6%2C7%5EORDERBYDESCsys_updated_on&sysparm_limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
