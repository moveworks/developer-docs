curl -X POST "https://<tenantUrl>/ccx/api/wql/v1/<tenantName>/data" \
  -H "Content-Type: application/json" \
  -d '{
  "query": "SELECT status, workerRequestingPaidTimeOff, workersPreferredName, cf_workerEmployeeID, cf_timeOffUnit, timeOffDate,timeOffEntry, timeOffTypeForTimeOffEntry, cf_Manager, timeOffEvent, organization 
  FROM timeOffByDateTaken (organizations = ({{org_id}}), includeSubordinateOrganizations = true) 
  WHERE status in (dd817fe688db4ac7bf84e3ef79f72948) AND latestTimeOffEntry is not null AND totalUnits > 0 AND workerRequestingPaidTimeOff = '{{worker_id}}' 
  GROUP BY status, workerRequestingPaidTimeOff, workersPreferredName, timeOffTypeForTimeOffEntry, cf_Manager, cf_workerEmployeeID, organization, cf_timeOffUnit, timeOffDate, timeOffEvent,timeOffEntry"
}'
