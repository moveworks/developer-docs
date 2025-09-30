curl --location --request GET 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, CreatedDate, Status, Type FROM Campaign WHERE Name LIKE '%{{campaign_name}}%' ORDER BY CreatedDate DESC' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
