curl --location 'https://<your-instance>/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
  "query": "SELECT worker, visas{visaIDType, expirationDate} AS visas FROM allActiveAndTerminatedWorkers WHERE visas IS NOT EMPTY"
}'
