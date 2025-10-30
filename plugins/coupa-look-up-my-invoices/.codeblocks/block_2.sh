curl --location 'https://<YOUR_INSTANCE>.coupacloud.com/api/invoices?invoice-number={{invoiceNumber}}&fields=["invoice-number","total-with-taxes","status","invoice-date","net-due-date",{"supplier":["name"]}]' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR-ACCESS-TOKEN>'
