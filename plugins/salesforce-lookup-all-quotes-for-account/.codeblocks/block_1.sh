curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id,+Name,+Discount,+QuoteNumber,+CreatedDate,+Status,+ExpirationDate,+TotalPrice,+AccountId+FROM+Quote+WHERE+Account.Name+LIKE+%27%25<ACCOUNT_NAME>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
