curl --request POST \
  --url 'https://www.googleapis.com/calendar/v3/calendars/primary/events' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{{cloned_event_body}}'
