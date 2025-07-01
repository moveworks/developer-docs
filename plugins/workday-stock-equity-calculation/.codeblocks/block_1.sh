curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'\
--data '{
  "query": "SELECT cf_VestedStockValueOfGrant, cf_VestedStockValueInShares,cf_sharesGrantedGrantPrice, sharesVested, sharesGranted, grantDate, vestFromDate, grantID, grantPrice, stockGrant FROM allStockGrants WHERE sharesVested > 0 AND employee = '\''{{worker_id}}'\'' ORDER BY vestFromDate DESC LIMIT 1"
}
'
