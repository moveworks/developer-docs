curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query={{FILTER_QUERY}}&sysparm_fields=sys_id%2Cname%2Cemail%2Cdepartment.name' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
