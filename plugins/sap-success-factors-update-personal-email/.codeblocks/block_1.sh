curl --request PUT \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User(userId='{{userId}}')' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  --data '{
  "userId": "{{userId}}",
  "firstName": "{{firstName}}",
  "lastName": "{{lastName}}",
  "displayName": "{{displayName}}",
  "nickname": "{{nickname}}",
  "email": "{{updated_email}}",
  "location": "{{location}}",
  "status": "{{status}}"
  }'
