curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT learnerRole, enrolledContent, contentProvider, learnersRegistrationDate, courseScore, completionStatus, completionDate, requiredLearningEnrollment FROM learningEnrollments WHERE requiredLearningEnrollment = true AND completionStatus IN (\"<STATUS_ID_1>\", \"<STATUS_ID_2>\") AND learnerRole = \"<WORKER_ID>\""
}'

