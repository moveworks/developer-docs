curl --request POST \
curl --location 'https://<DOMAIN>.myworkday.com/api/wql/v1/<TENANT>/data?offset=0&limit=1' \
--header 'Content-Type: application/json' \
--data '{
    "query": "SELECT workdayID, fullName, email_PrimaryWork, benefitElections{benefitPlan, coverage, dependents, beneficiaries_All, coverageBeginDateForBenefitPlan, deductionBeginDateForBenefitPlan, employerContributionPerBenefitPlanFrequency, employeeCostPerBenefitPlanFrequency,currentlyEnrolledAsOfDate}, benefitPlans_CurrentlyEnrolled FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = true, isActive = false) WHERE email_PrimaryWork = '\''{{email}}'\''"
}'
