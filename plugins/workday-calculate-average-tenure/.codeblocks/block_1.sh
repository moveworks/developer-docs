curl --location 'https://<your-instance>/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
"query": "SELECT AVG(cf_TenureInYears) AS avg_tenure_years FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = true) WHERE supervisoryOrganization='{{SUPERVISORY_ORG_ID}}'"
}'
