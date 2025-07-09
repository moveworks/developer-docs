curl --location --request PUT 'https://<your-instance>.service-now.com/api/now/table/incident/<incident-sys_id>' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
  "state": "{{state-value}}",
  "close_notes": "{{resolution_notes}}",
  "close_code": "{{resolution_code}}"
}'
