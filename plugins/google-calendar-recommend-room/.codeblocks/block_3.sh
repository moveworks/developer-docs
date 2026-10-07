curl --request POST \
  --url 'https://www.googleapis.com/calendar/v3/freeBusy' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "timeMin": "{{event_start_time}}",
    "timeMax": "{{event_end_time}}",
    "items": [{"id": "{{room_email}}"}, ...]
  }'
