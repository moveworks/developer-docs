curl --request GET \
  --url 'https://graph.microsoft.com/v1.0/me/mailboxSettings' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
