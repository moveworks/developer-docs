curl --location 'https://<your-instance>/services/data/vXX.X/sobjects/Task/' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
"Subject": "{{Subject}}",
"WhoId": "{{LeadId}}",
"ActivityDate": "{{date}}",
"OwnerId": "{{UserId}}"
}'
