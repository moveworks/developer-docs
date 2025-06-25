curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$expand=manager&$top=20&$select=empId,defaultFullName,jobTitle,department,email,businessPhone,hireDate,location,manager/displayName' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
