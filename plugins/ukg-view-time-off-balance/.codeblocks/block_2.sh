curl --request POST \
--url 'https://<YOUR_UKG_HOST>/api/v1/timekeeping/paycodes_to_accrual_codes/multi_read' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json' \
--data '{
  "timeframe_id": "Current_Payperiod",
  "paycodes": {{{paycodes_payload}}},
  "employee": {
    "qualifier": "{{person_number}}"
  }
}'
