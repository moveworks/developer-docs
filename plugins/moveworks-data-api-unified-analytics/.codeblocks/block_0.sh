curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/commons/persons/extensions/multi_read \
  --header 'Authorization: {{access_token}}' \
  --header 'Content-Type: application/json' \
  --data '{
  "where": {
    "employees": {
      "key": "useremailaddress",
      "values": [
        "{{USER_EMAIL}}"
      ]
    },
    "includeBaseWages": false,
    "includeAccrualPolicyDetails": false
  }
}'
