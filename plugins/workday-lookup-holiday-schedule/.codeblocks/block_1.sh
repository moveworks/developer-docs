curl --request GET
--location 'https://<DOMAIN>.myworkday.com/api/holiday/v1/<INSTANCE>/holidayEvents?fromDate=2024-01-01&toDate=2024-12-31&limit=100&offset=1&worker=<Worker_id>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
