curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, Title, Company, Email, Phone, Street, City, State, PostalCode, Country, Status, OwnerId, Owner.Name, Owner.Email, CreatedDate, LastActivityDate FROM Lead WHERE Owner.Email = '{{email}}' AND (LastActivityDate < LAST_N_DAYS:{{days}}) ORDER BY LastActivityDate ASC LIMIT 50' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
