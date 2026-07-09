curl --location \
'https://<YOUR_SF_HOST>/odata/v2/EmployeeTime' \
--header'Authorization: Bearer <ACCESS_TOKEN>' \
--header'Content-Type: application/json' \
--header'Accept: application/json' \
--data '{
  "userId": "{{USER_ID}}",
  "startDate": "/Date({{START_DATE}})/",
  "endDate": "/Date({{END_DATE}})/",
  "timeType": "{{TIME_TYPE}}",
  "userIdNav": {
    "__metadata": {
      "uri": "https://<YOUR_SF_HOST>/odata/v2/User(''{{USER_ID}}'')"
    }
  },
  "timeTypeNav": {
    "__metadata": {
      "uri": "https://<YOUR_SF_HOST>/odata/v2/TimeType(externalCode=''{{TIME_TYPE}}'')"
    }
  }
}'
