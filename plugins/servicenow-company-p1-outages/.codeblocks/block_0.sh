curl --request GET
--location 'https://<YOUR_DOMAIN>/api/now/table/problem?sysparm_query=priority%3D1%5Eshort_descriptionLIKEoutage%5Eactive%3Dtrue&sysparm_fields=number%2Cshort_description%2Cpriority%2Cstate' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
