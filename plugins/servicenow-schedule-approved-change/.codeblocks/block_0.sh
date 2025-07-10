curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request?sysparm_query=numberLIKE{{change_number}}%5Eapproval%3Dapproved&sysparm_fields=sys_id%2Cnumber%2Capproval%2Cstate%2Cshort_description' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
