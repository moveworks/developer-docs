curl --request PATCH \
  --url 'https://graph.microsoft.com/v1.0/me/events/{{event_id}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "subject": "{{event_title}}",
    "body": { "contentType": "HTML", "content": "{{event_description}}" },
    "start": { "dateTime": "{{new_start_date_time}}", "timeZone": "{{user_timezone}}" },
    "end": { "dateTime": "{{new_end_date_time}}", "timeZone": "{{user_timezone}}" },
    "location": { "displayName": "{{location_display_name}}" },
    "attendees": [
      { "type": "required", "emailAddress": { "address": "{{attendee_email}}" } }
    ]
  }'
