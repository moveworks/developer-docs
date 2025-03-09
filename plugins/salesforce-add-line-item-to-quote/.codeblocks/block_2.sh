curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/sobjects/QuoteLineItem' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_AUTH_TOKEN>' \
--data '{
  "QuoteId": "<QUOTE_ID>",
  "PricebookEntryId": "<PRICEBOOK_ENTRY_ID>",
  "Product2Id": "<PRODUCT2_ID>",
  "Quantity": <QUANTITY>,
  "UnitPrice": "<UNIT_PRICE>"
}'
