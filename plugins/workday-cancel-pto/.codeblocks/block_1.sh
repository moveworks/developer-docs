curl -X POST "https://<tenantUrl>/ccx/api/wql/v1/<tenantName>/data" \
  -H "Content-Type: application/json" \
  -d '{
  "query": "SELECT status, workerRequestingPaidTimeOff, workersPreferredName, cf_workerEmployeeID,timeOffEntry, cf_timeOffUnit,timeOffDate, timeOffTypeForTimeOffEntry, cf_Manager, timeOffEvent, organization 
  FROM timeOffByDateTaken (organizations = ({{org_id}}), includeSubordinateOrganizations = true , startDate = ('{{today_date}}'))  
  WHERE status in (0391102bd1b542538d996936c8fa2fa7) 
  AND latestTimeOffEntry is not null AND totalUnits > 0 AND workerRequestingPaidTimeOff = '{{worker_id}}' 
  GROUP BY status, timeOffDate, workerRequestingPaidTimeOff, workersPreferredName, timeOffTypeForTimeOffEntry, cf_Manager, cf_workerEmployeeID, organization,timeOffEvent ,timeOffEntry , cf_timeOffUnit"
}'
