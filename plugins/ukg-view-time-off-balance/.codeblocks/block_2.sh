curl --request GET \
--url 'https://<YOUR_UKG_HOST>/api/v1/scheduling/timeoff/accruals?date={{date}}&subtype_name={{subtype_name}}&employee_id={{user_id}}' \
--header 'Authorization: {{access_token}}' \
--header 'Content-Type: application/json'
