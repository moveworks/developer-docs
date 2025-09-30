curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/query?q=SELECT%20Id%2C%20CreatedDate%2C%20Name%20FROM%20Campaign%20WHERE%20Name%20LIKE%20%27%25Q4%Campaign%2025%25%27%20ORDER%20BY%20CreatedDate%20DESC' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
