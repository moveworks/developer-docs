curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobApplication?$filter=jobReqId eq {{req_id}} &$select=applicationId,jobReqId,status,firstName,lastName' \
--header 'Authorization: Bearer <YOUR_INSTANCE>' \
--header 'Accept: application/json' \
