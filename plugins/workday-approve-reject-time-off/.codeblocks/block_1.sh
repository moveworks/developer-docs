curl -X POST "https://<tenantUrl>/ccx/api/wql/v1/<tenantName>/data" \
  -H "Content-Type: application/json" \
  -d '{
  "query": "SELECT status, workerRequestingPaidTimeOff, timeOffEntry, timeOffEvent, timeOffDate, timeOffTypeForTimeOffEntry, cf_Manager, organization 
  FROM timeOffByDateTaken (organizations = ({{organization_id}}), includeSubordinateOrganizations = true) 
  WHERE status in (dd817fe688db4ac7bf84e3ef79f72948) 
  AND latestTimeOffEntry is not null AND totalUnits > 0 AND cf_Manager = ({{manager_wid}}) 
  GROUP BY status, timeOffDate, workerRequestingPaidTimeOff, timeOffTypeForTimeOffEntry, timeOffEntry, timeOffEvent, cf_Manager, organization"
}'
