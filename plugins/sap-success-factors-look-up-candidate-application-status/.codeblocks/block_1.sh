curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobApplication?$select=firstName,lastName,candidateId,jobReqId&$expand=jobAppStatus,candidate&$filter=jobReqId eq {{job_reqid}}' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
