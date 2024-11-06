curl --location --request POST 'https://api.moveworks.ai/rest/v1/events/{{moveworks_event_id}}/messages/send' \
--header 'Authorization: Bearer {{moveworks_events_api_key}}' \
--header 'Content-Type: application/json' \
--data-raw '{
    "message": "💸 New Ariba Purchase Requisition Approval ....\n",
    "recipients": [
        "email@example.com"
    ]
}'
