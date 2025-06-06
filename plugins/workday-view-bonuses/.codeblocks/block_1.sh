curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT one_TimePaymentEventReason as Reason, positionForOneTimePayment, scheduledPaymentDate, completedOn, actualBonus_Amount as Amount, plan, compensationElement, employee{employee, employeeID, supervisoryOrganization} as employee FROM bonusAndOne_TimePayments WHERE employee = \"{{worker_id}}\" ORDER BY scheduledPaymentDate DESC LIMIT 10"
}'
