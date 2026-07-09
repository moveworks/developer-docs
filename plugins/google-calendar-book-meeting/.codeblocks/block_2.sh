curl --request POST \
  --url 'https://api.zoom.us/v2/users/me/meetings' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "topic": "{{meeting_title}}",
    "type": 1
  }'
