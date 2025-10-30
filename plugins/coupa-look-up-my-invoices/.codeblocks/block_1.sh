curl --location 'https://<your-instance>.coupacloud.com/api/invoices?offset=0&limit=50&fields=["invoice-number","total-with-taxes","status","invoice-date","net-due-date",{"supplier":["name"]}]&supplier[name]={{supplierName}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <your-access-token>'
