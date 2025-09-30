curl --location 'https://<YOUR_INSTANCE>/odata/v2/EmpJob?%24filter=department%20eq%20%27{{DEPARTMENT_ID}}%27&%24select=userId%2Cdepartment%2Clocation' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json'
