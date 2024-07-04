curl --location 'https://{{domain}}.workday.com/ccx/api/wql/v1/{{instance}}/data?limit=10&offset=0' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}' \
--data-raw '
    {
        "query": "SELECT workdayAccount, workdayID, email_PrimaryWorkOrPrimaryHome, position, cf_TimeOffBalanceForPTOAndVacationPlans, eligibleAndVisibleTimeOffPlansForWorkerAsOfDate, allEligibleTimeOffsForWorker FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = false, isActive = false) WHERE email_PrimaryWorkOrPrimaryHome = '{{user.email_addr}}'"
    }
'
