curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id,Name,FolderName,Owner.Name,Owner.Email,OwnerId FROM Report WHERE Owner.Email = '{{email}}'' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
