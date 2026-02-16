curl --request GET \
  --url 'https://<YOUR_UKG_HOST>/api/v1/commons/persons/current_user_info?include_contact_information=true' \
  --header 'Authorization: <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json'
