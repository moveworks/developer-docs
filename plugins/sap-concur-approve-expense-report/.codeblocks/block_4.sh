curl --location 'https://api.moveworks.ai/rest/v1/events/{{moveworks_event_id}}/messages/send' \
--header 'Authorization: Bearer {{moveworks_events_api_key}}' \
--header 'Content-Type: application/json' \
--data-raw '{
    "message": "💸 New Concur Expense Report Approval Request ....\n",
    "recipients": [
        "email@example.com"
    ],
    "context": {
        "slots": {
            "report_id": "692D37074CAA42C2BE47"
        }
    }
}'
