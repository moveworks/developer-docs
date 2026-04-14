curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/commons/persons/apply_read \
  --header 'Authorization: Bearer {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
  "count": {{count}},
  "index": {{index}},
  "where": {
    "snapshotDate": "{{date}}",
    "employmentStatus": "Active",
    "userAccountStatus": "Active",
    "returnPersonIdOnly": true
  }
}'
