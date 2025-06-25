curl --location 'https://<YOUR_DOMAIN>/services/data/vXX.0/query/?q=SELECT+Id,+Pricebook2.Id,+Pricebook2.Name,+Product2.Id,+Product2.Name,+Product2.ProductCode,+UnitPrice+FROM+PricebookEntry+WHERE+Product2.Name+LIKE+%27%25{{product_name}}%25%27+AND+Pricebook2.IsActive+=+true' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
