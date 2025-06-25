curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+%28SELECT+Pricebook2Id,+Id+FROM+PricebookEntries+WHERE+Pricebook2.IsActive+=+TRUE%29+FROM+Product2+WHERE+Name+LIKE+%27%25{{product_name}}%25%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'\
--header 'Content-Type: application/json' \
