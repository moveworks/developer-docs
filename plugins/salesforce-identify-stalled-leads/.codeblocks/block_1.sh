curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id,Name,Company,Status,OwnerId,CreatedDate,LastActivityDate FROM Lead WHERE OwnerId='{{owner_id}}' AND LastActivityDate < LAST_N_DAYS:{{days}} ORDER BY LastActivityDate ASC LIMIT 10' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
