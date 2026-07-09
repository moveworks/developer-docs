curl -X POST -d '{
"query": "SELECT workdayID, email_PrimaryWork, allEligibleTimeOffPlansForWorker{accrualFrequencyMethod, accrualRecursEvery, accrualRecursUnitOfTime, timeOffBalanceForWorker, absencePlans, amountOfTimeBeforeExpiration, timeOffPlan, unitOfTimeForExpiration, balancePeriod, nextCarryoverDate, maximumPotentialCarryover, displayName, unitOfTime, absenceAccruedForCurrentPeriod, payslipName} as allEligibleTimeOffPlansForWorker FROM allWorkers (effectiveAsOfDate = {{date}}) WHERE email_PrimaryWork = {{email_addr}}"
}' 'https://<tenantUrl>/ccx/api/wql/v1/<tenantName>/data'
