curl --request POST \
  --url 'https://graph.microsoft.com/v1.0/me/events' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "subject": "{{event_title}}",
    "body": { "contentType": "HTML", "content": "{{event_description}}" },
    "start": { "dateTime": "{{start_date_time}}", "timeZone": "{{user_time_zone}}" },
    "end": { "dateTime": "{{end_date_time}}", "timeZone": "{{user_time_zone}}" },
    "attendees": [...],
    "recurrence": { "pattern": "{{pattern}}", "range": { "startDate": "{{occurrence_start_date}}" } },
    "isOnlineMeeting": true,
    "onlineMeetingProvider": "teamsForBusiness"
  }'
