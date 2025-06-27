curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Name,+CreatedDate,+Status,+ExpirationDate,+TotalPrice,+AccountId,+Discount+FROM+Quote+WHERE+QuoteNumber+LIKE+%27%25<quote_number>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Content-Type: application/json' \
