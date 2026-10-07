curl --request GET \
  --url 'https://<YOUR_UKG_HOST>/api/v1/commons/persons/current_user_info?include_contact_information=true' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
