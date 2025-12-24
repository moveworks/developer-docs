curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT Id, Name  FROM User  WHERE UserRoleId = '{{user_role_id}}'' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
