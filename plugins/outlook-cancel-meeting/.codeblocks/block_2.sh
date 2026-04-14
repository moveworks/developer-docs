curl --request GET \
  --url 'https://graph.microsoft.com/v1.0/me/events/{{event_id}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
