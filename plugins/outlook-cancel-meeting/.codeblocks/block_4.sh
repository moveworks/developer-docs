curl --request PATCH \
  --url 'https://graph.microsoft.com/v1.0/me/events/{{series_master_id}}' \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "recurrence": {
      "pattern": "{{recurrence_pattern}}",
      "range": {
        "type": "endDate",
        "endDate": "{{day_before_selected_occurrence}}"
      }
    }
  }'
