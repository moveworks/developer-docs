curl --request PUT
--location 'https://<API_SERVER>//odata/v2/User(userId='\''<userId>'\'')' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
  "userId": "{{userId}}",
  "firstName": "{{firstName}}",
  "lastName": "{{lastName}}",
  "displayName": "{{displayName}}",
  "nickname": "{{nickname}}",
  "email": "{{email}}",
  "location": "{{location}}",
  "status": "{{status}}",
  "businessPhone":"{{businessPhone}}"
}'
