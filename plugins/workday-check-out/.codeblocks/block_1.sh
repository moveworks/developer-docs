curl --request GET \
curl --location 'https://<DOMAIN>.myworkday.com/api/timeTracking/v3/<TENANT>/values/timeValues/outReason/?date={{date}}&inOutCodeOnly=true&offset=0&limit=10&worker={{WORKER_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

