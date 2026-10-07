curl --location --request PUT 'https://<YOUR_INSTANCE>/api/sn_wsd_concierge/presence/exception' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
    "user_id": "<user_sys_id>",
    "exception": {
      "date": "2026-07-17",
      "inOffice": true
    }
  }'
