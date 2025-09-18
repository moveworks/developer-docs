
curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem?sysparm_query=numberLIKE{{problem_number}}%5EstateIN106%5Eactive%3Dfalse%5EORDERBYDESCclosed_at&sysparm_fields=sys_id%2Cnumber%2Cshort_description%2Cstate%2Cactive%2Cclosed_at%2Cclose_notes%2Cdescription%2Csys_created_on%2Csys_created_by%2Cclose_notes' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
