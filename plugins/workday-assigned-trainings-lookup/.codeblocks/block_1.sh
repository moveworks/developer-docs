curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT enrolledContent as Course, learner, registrationStatus, completionStatus, learningAssignment{dueDate1} as learningAssignment FROM learningEnrollments WHERE learner = \"{{worker_id}} AND completionStatus IN (\"<status_id_1>\", \"<status_id_2>\") \""
}'
