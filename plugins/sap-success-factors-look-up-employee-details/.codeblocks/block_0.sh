curl --request GET \
  --location 'https://<API_SERVER>/odata/v2/User?$filter=tolower(displayName)%20like%20%27{{employee_name}}%25%27&$select=userId,username,displayName,email,gender,dateOfBirth,hireDate,country,location,division,department,title,jobLevel,payGrade,status,manager/userId,manager/displayName,manager/email&$expand=manager' \
  --header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --header 'Accept: application/json'
