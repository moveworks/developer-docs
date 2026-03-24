curl --request GET \
  --url 'https://<YOUR_UKG_HOST>/api/v1/scheduling/timeoff/request_subtypes?person_number={{USER_NUMBER}}' \
  --header 'Authorization: {{access_token}}' \
  --header 'Content-Type: application/json'
