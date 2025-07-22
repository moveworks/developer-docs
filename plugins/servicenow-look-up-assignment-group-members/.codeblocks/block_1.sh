curl "https://<instance>.service-now.com/api/now/table/sys_user_grmember?sysparm_query=group=<group_sys_id>&sysparm_display_value=true&sysparm_fields=user" \
  --request GET \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic <your_access_token>"
