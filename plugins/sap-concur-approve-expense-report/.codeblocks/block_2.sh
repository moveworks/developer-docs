curl --location --request PATCH 'https://<YOUR_INSTANCE>/expensereports/vX/users/{{manager_id}}/context/MANAGER/reports/{{report_id}}/{{status}}' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json' \
--data '{
"comment":"{{comment}}"
}'
