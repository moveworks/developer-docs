curl --request POST \
  --url 'https://graph.microsoft.com/v1.0/me/events/{{event_id}}/{{action}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "comment": "{{comment}}",
    "proposedNewTime": {
      "start": { "dateTime": "{{start_date_time}}", "timeZone": "{{proposal_timezone}}" },
      "end": { "dateTime": "{{end_date_time}}", "timeZone": "{{proposal_timezone}}" }
    }
  }'
