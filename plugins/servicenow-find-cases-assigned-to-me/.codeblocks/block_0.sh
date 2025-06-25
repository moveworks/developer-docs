curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/v1/table/incident?sysparm_query=assigned_to.email%3D{{email}}&sysparm_fields=short_description%2Capproval%2Cnumber' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
