curl --location --request POST \
'https://<YOUR_SF_HOST>/odata/v2/upsert' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data-raw '{
  "__metadata": {
    "uri": "EmployeeTime('\''{{externalCode}}'\'')"
  },
  "timeType": "{{timeType}}",
  "startDate": "{{startDate}}",
  "endDate": "{{endDate}}"
}'
