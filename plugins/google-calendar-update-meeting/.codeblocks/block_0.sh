curl --request GET \\
  --url '<https://www.googleapis.com/calendar/v3/calendars/primary/events?timeMin={{start_date_range}>}&timeMax={{end_date_range}}&singleEvents=true&orderBy=startTime&maxResults=350' \\
  --header 'Authorization: Bearer {{access_token}}' \\
  --header 'Content-Type: application/json'
