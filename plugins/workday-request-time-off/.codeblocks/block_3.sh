curl --location 'https://<DOMAIN>.workday.com/ccx/api/absenceManagement/v1/<INSTANCE>/workers/{{worker_id}}/requestTimeOff' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "days": [
    {
      "date": "{{selected_date_1}}",
      "dailyQuantity": {{dailyDefaultQuantity}},
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      }
    },
    {
      "date": "{{selected_date_2}}",
      "dailyQuantity": {{dailyDefaultQuantity}},
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      }
    },
    {
      "date": "{{selected_date_3}}",
      "dailyQuantity": {{dailyDefaultQuantity}},
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      }
    }
  ]
}'
