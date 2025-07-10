curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request?sysparm_query=short_descriptionLIKE{{short_desc}}^approval=approved&sysparm_fields=sys_id,number,approval,state,short_description' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
