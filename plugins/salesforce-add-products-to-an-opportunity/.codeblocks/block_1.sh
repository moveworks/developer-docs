curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Product2Id%2C+Product2.Name%2C+UnitPrice+FROM+PricebookEntry+WHERE+Product2.Name+LIKE+%27%25{{product_name}}%25%27+AND+Pricebook2.IsStandard+%3D+TRUE' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
