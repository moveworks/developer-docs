curl --location --request PATCH "https://<your_instance>/api/now/table/incident/{{incident_sys_id}}" \
  --header "Authorization: Bearer <your_access_token>" \
  --header "Content-Type: application/json" \
  --header "Accept: application/json" \
  --data '{
    "subcategory": "{{sub_category}}",
    "category": "{{category}}"
  }'
