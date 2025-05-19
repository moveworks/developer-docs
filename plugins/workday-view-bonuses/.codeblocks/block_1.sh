curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT one_TimePaymentEventReason as Reason, positionForOneTimePayment, scheduledPaymentDate, completedOn, actualBonus_Amount as Amount, plan, compensationElement, employee{employee, employeeID, supervisoryOrganization} as employee FROM bonusAndOne_TimePayments WHERE one_TimePaymentEventReason IN (\"3e2f3c97dcb941e7afd0806555954818\") AND employee = \"<WORKER_ID>\" ORDER BY scheduledPaymentDate DESC LIMIT 10"
}'
