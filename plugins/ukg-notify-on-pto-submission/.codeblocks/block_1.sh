curl --request POST \
     --url https://<YOUR_UKG_HOST>/api/v1/commons/persons/apply_read \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '{
  "count": {{count}},
  "index": {{index}},
  "where": {
    "employmentStatus": "Not Applicable",
    "userAccountStatus": "Not Applicable",
    "returnPersonIdOnly": true,
    "snapshotDate": "{{date}}"
  }
}'
