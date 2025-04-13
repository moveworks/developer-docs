curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query/?q=SELECT+Id,+Pricebook2.Id,+Pricebook2.Name,+Product2.Id,+Product2.Name,+Product2.ProductCode,+UnitPrice+FROM+PricebookEntry+WHERE+Product2.Name+LIKE+%27%25{{Product_Name}}%25%27+AND+Pricebook2.IsActive+=+true' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

