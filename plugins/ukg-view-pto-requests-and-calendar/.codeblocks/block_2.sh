curl --request POST \
  --url https://<YOUR_UKG_HOST>/api/v1/commons/hyperfind/execute \
  --header 'Authorization: <ACCESS_TOKEN>' \
  --header 'Content-Type: application/json' \
  --data '{
  "dateRange": {
    "symbolicPeriod": {
      "qualifier": "Current_Payperiod"
    }
  },
  "hyperfind": {
    "qualifier": "My Direct Reports"
  }
}'
