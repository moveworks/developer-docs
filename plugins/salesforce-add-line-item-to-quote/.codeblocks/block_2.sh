curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/sobjects/QuoteLineItem' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "QuoteId": "<quote_id>",  
  "PricebookEntryId": "<PricebookEntryId>",  
  "Product2Id": "<Product2Id>",
  "Quantity": "<quantity>",
  "UnitPrice": "<unit_price>"
}'
