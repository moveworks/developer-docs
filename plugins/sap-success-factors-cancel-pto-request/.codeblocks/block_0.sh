curl -X GET "https://<tenantURL>/odata/v2/User?$filter=(email eq '{{emailAddress}}')&$select=userId,email,firstName,lastName,defaultFullName&$format=json" \
  -H "Content-Type: application/json"
