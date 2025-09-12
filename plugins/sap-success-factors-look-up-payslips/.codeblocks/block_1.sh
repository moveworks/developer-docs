curl --request GET \
--location 'https://<API_SERVER>/odata/v2/EmployeePayrollRunResults?$filter=userId%20eq%20%27{{user_id}}%27%20and%20payDate%20ge%20datetime%27{{start_date}}%27%20and%20payDate%20le%20datetime%27{{end_date}}%27&$select=externalCode,currency,userId,employeePayrollRunResultsItems/externalCode,employeePayrollRunResultsItems/wageType,employeePayrollRunResultsItems/amount,employeePayrollRunResultsItems/startDateWhenEarned,employeePayrollRunResultsItems/endDateWhenEarned&$expand=employeePayrollRunResultsItems' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
