curl --location 'https://<your-instance>.coupacloud.com/api/invoices?invoice-date[gt]={{startDate}}&invoice-date[lt]={{endDate}}&limit=50&offset=0&fields=["invoice-number","total-with-taxes","net-due-date","status","invoice-date",{"supplier":["name"]}]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <your-access-token>'
