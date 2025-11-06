curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobApplication?$select=firstName,lastName,candidateId,jobReqId,contactEmail,nonApplicantStatus,lastModifiedDateTime,jobAppStatus/appStatusName,candidate/creationDateTime&$expand=jobAppStatus,candidate&$filter=jobReqId eq {{job_reqid}} and candidateId eq {{candidate_id}}' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
