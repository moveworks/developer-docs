curl --request POST \
     --url https://<YOUR_UKG_HOST>/api/v1/commons/notifications/apply_read \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '{
  "employees": {
    "ids": [
      "{{ids}}"
    ]
  },
  "types": [
    "TIME_OFF"
  ],
  "endDateTime": "{{end_date_time}}",
  "startDateTime": "{{start_date_time}}"
}'
