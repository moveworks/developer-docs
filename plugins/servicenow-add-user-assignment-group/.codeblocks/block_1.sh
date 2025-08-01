curl --location "https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=first_nameLIKE{{USER_NAME}}%5EORlast_nameLIKE{{USER_NAME}}%5EORemailLIKE{{USER_NAME}}%5EORnameLIKE{{USER_NAME}}" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"

