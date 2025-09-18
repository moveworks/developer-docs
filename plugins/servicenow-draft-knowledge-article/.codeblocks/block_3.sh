curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem?sysparm_query=short_descriptionLIKE{{short_desc}}%5EstateIN106%5Eactive%3Dfalse%5EORDERBYDESCclosed_at&sysparm_fields=sys_id%2Cnumber%2Cshort_description%2Cdescription%2Ccause_notes%2Cfix_notes%2Cclose_notes%2Cclosed_at' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
