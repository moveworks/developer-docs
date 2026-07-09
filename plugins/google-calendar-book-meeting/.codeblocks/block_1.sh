curl --request POST \
  --url 'https://www.googleapis.com/calendar/v3/calendars/primary/events' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "summary": "{{event_title}}",
    "description": "{{event_description}}",
    "start": {"dateTime": "{{start_date_time}}", "timeZone": "{{user_time_zone}}"},
    "end": {"dateTime": "{{end_date_time}}", "timeZone": "{{user_time_zone}}"},
    "attendees": [{"email": "{{attendee_email}}", "optional": false}, ...],
    "recurrence": ["{{recurrence_rules}}"],
    "transparency": "{{show_as}}",
    "visibility": "{{visibility}}",
    "eventType": "{{event_type}}"
  }'
