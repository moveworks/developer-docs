curl --location --request POST 'https://<YOUR_DOMAIN>/api/recruiting/v3/<TENANT>/interviews/{{Interview_id}}/feedback' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
    "comment": "{{comment}}",
    "overallRating": {
        "id": "{{rating_id}}"
    }
}'
