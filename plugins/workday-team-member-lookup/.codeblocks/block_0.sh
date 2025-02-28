curl --location 'https://<YOUR_DOMAIN>/ccx/api/wql/v1/<WORKDAY_INSTANCE_ID>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '
{
  "query": "SELECT worker, fullName, employeeID, jobTitle, location, hireDate, email FROM allActiveEmployees WHERE fullName LIKE \"%{{MANAGER_NAME}}%\" AND jobTitle LIKE \"%{{JOB_TITLE}}%\""
}'

