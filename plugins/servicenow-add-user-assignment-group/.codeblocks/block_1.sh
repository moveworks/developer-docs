curl --location "https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=nameLIKE{{USER_NAME}}" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"

