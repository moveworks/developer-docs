curl --request GET \
--location 'https://<YOUR_INSTANCE>/odata/vX/User?$filter=email eq '{{email}}'&$expand=directReports&$select=userId,email,displayName,directReports/userId,directReports/displayName,directReports/email,directReports/title,directReports/department,directReports/location,directReports/businessPhone,directReports/city,directReports/hireDate,directReports/employeeClass,directReports/status' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
