curl --location 'https://<DOMAIN>.workday.com/ccx/api/absenceManagement/v1/<INSTANCE>/workers/{{worker_id}}/requestTimeOff' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{{{time_off_details}}}'
