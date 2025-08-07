curl --location 'https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=first_nameLIKE{{user_name}}%5EORlast_nameLIKE{{user_name}}%5EORemailLIKE{{user_name}}%5EORnameLIKE{{user_name}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
