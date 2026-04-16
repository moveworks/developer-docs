curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/commons/notifications/apply_read \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
  "employees": {
    "ids": {{ids}}
  },
  "types": ["TIME_OFF"],
  "startDateTime": "{{start_date_time}}",
  "endDateTime": "{{end_date_time}}"
}'
