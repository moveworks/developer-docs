curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data-raw '{
  "query": "SELECT recruitingStagesWithActiveCandidates,allCandidates, supervisoryOrganization, jobRequisition, jobPostingTitle, jobRequisitionStatus as Status, region, company, newPosition, position, referenceID1, hasRequisitionCompensation, isEvergreen FROM allJobRequisitions (includeEvergreenRequisitions = true) WHERE jobPostingTitle = '\''{{job_title}}'\''"
}'

