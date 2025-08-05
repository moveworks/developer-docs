curl --location "https://<YOUR_INSTANCE>/api/now/table/sys_user?sysparm_query=first_nameLIKE{{SEARCHTERM}}%5EORlast_nameLIKE{{SEARCHTERM}}%5EORemailLIKE{{SEARCHTERM}}%5EORnameLIKE{{SEARCHTERM}}" \
--header "Authorization: Bearer <ACCESS_TOKEN>" \
--header "Accept: application/json"

