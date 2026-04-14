curl --request GET \
  --url 'https://www.googleapis.com/calendar/v3/calendars/primary/events/{{event_id}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
