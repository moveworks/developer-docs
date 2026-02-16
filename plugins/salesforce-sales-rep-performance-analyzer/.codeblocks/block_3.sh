curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.0/query/?q=SELECT Id, Name, Email, UserRoleId, UserRole.Name FROM User WHERE Email = '{{email}}'' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
