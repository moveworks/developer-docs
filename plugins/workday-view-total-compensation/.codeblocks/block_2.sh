curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data?limit=1000' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT email_PrimaryWork, benefitElections { benefitPlan, coverage, dependents, beneficiaries_All, coverageBeginDateForBenefitPlan, deductionBeginDateForBenefitPlan, employerContributionPerBenefitPlanFrequency, employeeCostPerBenefitPlanFrequency } FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = true, isActive = false) WHERE employeeID = \"{{employee_id}}\""
}'
