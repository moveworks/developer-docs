curl --request GET \
  --url 'https://www.googleapis.com/calendar/v3/calendars/{{email}}/events?timeMin={{7_days_ago}}&timeMax={{event_start_time}}&singleEvents=true&orderBy=startTime&maxResults=350' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json'
