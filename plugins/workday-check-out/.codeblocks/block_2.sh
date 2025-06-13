curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/timeTracking/v3/<TENANT>/timeClockEvents?worker={{WORKER_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{ 
    "worker": {
        "id": "{{WORKER_ID}}"
    },
    "eventType": {
        "id": "{{EVENT_TYPE_ID}}"
    },
    "timeZone": {
        "id": "{{TIMEZONE}}"
    },
    "dateTime": "{{DATETIME}}"
}
'
