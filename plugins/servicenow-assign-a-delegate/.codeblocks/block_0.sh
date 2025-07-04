curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_user?sysparm_query=email%3D<USER_EMAIL>&sysparm_fields=name%2Cemail%2Cemployee_number'\
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
