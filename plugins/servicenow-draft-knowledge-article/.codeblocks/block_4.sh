curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request?sysparm_query=numberLIKE{{number}}%5EstateIN0%2C3&sysparm_fields=sys_id%2Cnumber%2Cshort_description%2Cstate%2Cclosed_at%2Cclose_code%2Cdescription%2Ctype%2Csys_created_on%2Csys_created_by%2Cclose_notes' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
