curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data?limit=1000' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "PARAMETERS prompt_Date2 = \"{{currentdate}}\" SELECT employeeID, compensationGrade, cf_NewTotalBasePayAmount AS Base_Salary, lastBonusOrOne_TimePayment_Amount AS Last_Bonus_Amount FROM workersForHCMReporting (dataSourceFilter = allActiveWorkers) WHERE employeeID = \"{{employee_id}}\""
}'
