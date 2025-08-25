curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id,Name,Email FROM User WHERE Email='{{email}}'' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
