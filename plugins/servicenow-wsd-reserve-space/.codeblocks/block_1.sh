curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/add' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "subject": "Reservation for Redwood Room",
    "location": "<SPACE_SYS_ID>",
    "start": "2026-07-13T21:00:00Z",
    "end": "2026-07-13T22:00:00Z",
    "opened_by": "<SERVICENOW_USER_SYS_ID>",
    "requested_for": "<SERVICENOW_USER_SYS_ID>",
    "timezone": "US/Pacific"
  }'
