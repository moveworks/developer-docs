curl --location "https://yourInstance.salesforce.com/services/data/v64.0/query/?q=SELECT+Id,+Name,+Email,+UserRoleId,+UserRole.Name+FROM+User+WHERE+Email=%27{{manager_email}}%27&order_by=Name+ASC&limit=50" \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json'
