curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/performanceEnablement/v4/<TENANT>/workers/{{WORKDAY_ID}}/anytimeFeedbackEvents' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "comment": "{{FEEDBACK}}",
    "hiddenFromManager": {{HIDE_FROM_MANAGER}}
}'
