curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id,+Name,+CreatedDate,+Status,+ExpirationDate,+TotalPrice,+AccountId,+Discount+FROM+Quote+WHERE+QuoteNumber+LIKE+%27%25<QUOTE_NUMBER>%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

