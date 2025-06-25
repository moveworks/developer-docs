curl --location 'https://<API_SERVER_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id%2CName%2CQuoteNumber%2CTotalPrice%2CDiscount%2CStatus%2CAccount.Name%2CAccountId+FROM+Quote+WHERE+Discount+%3E+0+AND+Status+NOT+IN+(%27Accepted%27%2C%27Approved%27%2C%27Denied%27)+AND+Name+%3D%27<QUOTE_NAME>%27' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

