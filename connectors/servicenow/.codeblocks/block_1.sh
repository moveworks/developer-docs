curl "https://{{instance_name}}.service-now.com/api/now/table/problem
	?sysparm_limit=1" \
	--request GET \
	--header "Accept:application/json" \
	--user '{{username}}':'{{password}}'
