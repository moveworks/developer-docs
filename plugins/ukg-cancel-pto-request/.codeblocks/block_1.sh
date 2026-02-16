curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/scheduling/timeoff/multi_read \
  --header 'Authorization: <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
  "where": {
    "states": {
      "employeeRefs": {
        "ids": [{{USER_ID}}]
      },
      "completionState": "INCOMPLETE",
      "endDate": "{{END_DATE}}",
      "startDate": "{{START_DATE}}"
    }
  }
}'
