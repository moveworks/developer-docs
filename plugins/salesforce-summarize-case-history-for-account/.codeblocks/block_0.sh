curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT+CaseNumber,+Subject,+Status,+Priority,+Type,+IsEscalated,+CreatedDate,+ClosedDate,+Account.Name,+Owner.Name,+Owner.Email+FROM+Case+WHERE+{{filter_query}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
