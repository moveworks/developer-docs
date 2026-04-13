curl --request PATCH \
  --url 'https://www.googleapis.com/calendar/v3/calendars/primary/events/{{event_id}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'If-Match: {{etag}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "description": "{{zoom_details}}",
    "location": "{{zoom_join_url}}"
  }'
