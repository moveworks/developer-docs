curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT employeeID, worker, workdayID, manager_Level01, managementChain_Level02, position, tenureCategory_Position, jobProfile, timeInJobProfile, compensationGrade, managementLevel, location, costCenter, supervisoryOrganization, cf_TalentPlacementCategory, talentMatrixPlacement, potential_CompletedRating, lastReview_OverallRating, cf_PerformanceRatingWorkRating, talentMatrixPlacementRow, talentMatrixPlacementColumn FROM workersForHCMReporting (dataSourceFilter = allActiveWorkers) WHERE workdayID = ''{{WORKER_ID}}''"
}'
