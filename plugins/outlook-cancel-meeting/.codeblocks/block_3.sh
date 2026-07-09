curl --request POST \
  --url 'https://graph.microsoft.com/v1.0/me/events/{{event_id}}/cancel' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "comment": "{{reason_for_cancellation}}"
  }'
