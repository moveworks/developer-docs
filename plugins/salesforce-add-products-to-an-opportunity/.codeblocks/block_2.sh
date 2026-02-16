curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/composite' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '
{
    "allOrNone": false,
    "compositeRequest": [
      {
        "method": "POST",
        "url": "/services/data/vXX.0/sobjects/OpportunityLineItem",
        "referenceId": "product1",
        "body": {
          "OpportunityId": "{{opportunity_id}}",
          "PricebookEntryId": "{{price_book_entry_id}}",
          "Quantity": {{quantity}},
          "UnitPrice": {{unit_price}}

        }
      }
    ]
  }'
