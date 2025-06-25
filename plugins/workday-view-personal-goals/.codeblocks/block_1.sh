curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT fullName, hireDate, workdayID, location, workersManager, jobProfile, goals{goal, goalDescription, dueDate, status, goalCategory, referenceID1} as goals FROM allActiveEmployees WHERE workdayID = %27{{worker_id}}%27"
}'
