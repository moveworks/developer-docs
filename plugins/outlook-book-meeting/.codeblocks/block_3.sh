curl --request PATCH \
  --url 'https://graph.microsoft.com/v1.0/me/events/{{event_id}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "body": {
      "contentType": "HTML",
      "content": "<p><strong>Zoom</strong></p><p><a href=\"{{join_url}}\">Join Zoom Meeting</a><br/>{{join_url}}<br/><br/>Meeting ID: {{zoom_meeting_id}}<br/>Passcode: {{password}}</p>"
    },
    "location": { "displayName": "{{join_url}}" }
  }'
