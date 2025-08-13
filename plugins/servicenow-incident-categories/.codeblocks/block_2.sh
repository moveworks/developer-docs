curl "https://<instance>.service-now.com/api/now/table/sys_choice?sysparm_query=name=incident^elementINcategory,subcategory&sysparm_fields=label,dependent_value&sysparm_limit=100" \
  --request GET \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic <your_access_token>"
