curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=userId,firstName,lastName,displayName,nickname,email,location,department,status,gender,timeZone,employeeClass,hireDate,impactOfLoss,riskOfLoss,jobCode,businessPhone,salary,compensationSalaryRateType,empId' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>'
