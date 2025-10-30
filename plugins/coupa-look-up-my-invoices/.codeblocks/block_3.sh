curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/invoices?status={{status}}&limit=50&offset=0&fields=["invoice-number","total-with-taxes","status","invoice-date","net-due-date",{"supplier":["name"]}]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
