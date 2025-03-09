curl --request POST 
--location --globoff 'https://<DOMAIN>.myworkday.com/api/timeTracking/v3/<INSTANCE>/timeClockEvents?worker={{WORKER_ID}}' 
--data '{ "worker": {
        "id": "<WORKER_ID>"
    },
    "eventType": {
        "id": "<EVENTTYPE_ID>"
    },
    "timeZone": {
        "id": "<TIMEZONE_ID>"
    },
    "dateTime": "<DATETIME>"
    }' 
