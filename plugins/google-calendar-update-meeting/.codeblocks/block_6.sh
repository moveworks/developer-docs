curl --request PATCH \\
  --url '<https://www.googleapis.com/calendar/v3/calendars/primary/events/{{event_id}>}?sendUpdates=all' \\
  --header 'Authorization: Bearer {{access_token}}' \\
  --header 'If-Match: {{etag}}' \\
  --header 'Content-Type: application/json' \\
  --data '{
    "summary": "{{event_title}}",
    "description": "{{event_description}}",
    "start": {"dateTime": "{{new_start_date_time}}", "timeZone": "{{user_time_zone}}"},
    "end": {"dateTime": "{{new_end_date_time}}", "timeZone": "{{user_time_zone}}"},
    "attendees": [...]
  }'
