curl --request GET \
  --url 'https://www.googleapis.com/calendar/v3/calendars/{{calendar_id}}/events?timeMin={{start_date_time}}&timeMax={{end_date_time}}&eventTypes=workingLocation&singleEvents=true' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
