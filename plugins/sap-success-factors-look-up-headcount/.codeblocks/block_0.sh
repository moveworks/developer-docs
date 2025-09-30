curl --location 'https://<YOUR_INSTANCE>/odata/v2/FODepartment?%24expand=toDepartmentApprenticeDetail&%24filter=substringof(%27{{DEPARTMENT_NAME}}%27%2C%20name)&%24select=externalCode%2Cname%2toDepartmentApprenticeDetail' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json'
