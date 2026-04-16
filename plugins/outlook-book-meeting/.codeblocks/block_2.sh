curl --request POST \
  --url 'https://api.zoom.us/v2/users/me/meetings' \
  --header 'Authorization: Bearer {{zoom_access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "topic": "{{event_title}}",
    "type": 1
  }'
