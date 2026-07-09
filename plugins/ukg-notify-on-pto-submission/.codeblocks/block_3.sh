curl --request GET \
  --url https://<YOUR_UKG_HOST>/api/v1/commons/persons/{{personId}} \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Accept: application/json'
