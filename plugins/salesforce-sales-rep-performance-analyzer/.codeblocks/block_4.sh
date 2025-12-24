curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, StageName, CloseDate, Amount, LastModifiedDate, CreatedDate, OwnerId, Owner.Name FROM Opportunity WHERE OwnerId IN ({{owner_id}}) AND CreatedDate >= {{from_date}} AND CreatedDate <= {{to_date}} ORDER BY CreatedDate DESC LIMIT 200' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
