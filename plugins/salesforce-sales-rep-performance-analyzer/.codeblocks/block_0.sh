curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/query/?q=SELECT FIELDS(ALL) FROM Opportunity WHERE {{{filter_query}}} ORDER BY CreatedDate DESC LIMIT 200' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
