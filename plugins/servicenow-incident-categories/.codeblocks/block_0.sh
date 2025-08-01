curl "https://<your_instance>/api/now/table/incident?sysparm_query=number={{incident_number}}" \
  --request GET \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic <your_access_token>"
