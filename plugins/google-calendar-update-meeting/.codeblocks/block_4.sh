curl --request PATCH \
  --url 'https://www.googleapis.com/calendar/v3/calendars/primary/events/{{series_master_event_id}}?sendUpdates=all' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'If-Match: {{etag}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "recurrence": ["{{updated_recurrence_rules}}"]
  }'
