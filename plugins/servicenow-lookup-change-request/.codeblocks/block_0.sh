curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/change_request?sysparm_query=requested_by.email%3D<USER_EMAIL>&sysparm_fields=number%2Cstate&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
