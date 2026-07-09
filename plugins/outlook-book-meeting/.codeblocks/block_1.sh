curl --request POST \
  --url 'https://graph.microsoft.com/v1.0/me/events' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "subject": "{{event_title}}",
    "body": { "contentType": "HTML", "content": "{{event_description}}" },
    "start": { "dateTime": "{{start_date_time}}", "timeZone": "{{user_time_zone}}" },
    "end": { "dateTime": "{{end_date_time}}", "timeZone": "{{user_time_zone}}" },
    "attendees": [
      { "type": "required", "emailAddress": { "address": "{{attendee_email}}" } }
    ],
    "isOnlineMeeting": true,
    "onlineMeetingProvider": "teamsForBusiness",
    "recurrence": "{{recurrence}}",
    "showAs": "{{show_as}}",
    "sensitivity": "{{sensitivity}}",
    "isAllDay": false
  }'
