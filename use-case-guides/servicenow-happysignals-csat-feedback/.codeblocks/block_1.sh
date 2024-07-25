curl --location 'https://api.moveworks.ai/rest/v1/events/{{event_id}}/messages/send' \
--header 'Authorization: Bearer {{event_api_key}}' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "message": "This is an example of Events API messages working in next-gen copilot 🔥",
    "recipients": [
      "your_email@example.com"
    ]
}'
