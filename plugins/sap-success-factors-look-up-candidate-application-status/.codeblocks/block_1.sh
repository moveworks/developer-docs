curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobApplication?$filter={{filter_query}}&$select=jobReqId,firstName,lastName' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
