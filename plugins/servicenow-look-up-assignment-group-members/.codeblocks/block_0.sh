curl "https://<instance>.service-now.com/api/now/table/sys_user_grmember?sysparm_query=user.email={{email}}&sysparm_fields=group,sys_id,user.email&sysparm_display_value=all" \
  --request GET \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic <your_access_token>"
