curl --location --request PATCH 'https://<YOUR_INSTANCE>/api/v1/computers-inventory-detail/{{computer_id}}' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "userAndLocation": {
    "username": "{{username}}",
    "realname": "{{realname}}",
    "email": "{{email}}",
    "position": "{{position}}",
    "phone": "{{phone}}"
  }
}'
