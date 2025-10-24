curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobApplication({{jobreqid}})?$select=firstName,lastName,candidateId,contactEmail,nonApplicantStatus,lastModifiedDateTime,jobAppStatus/appStatusName,candidate/creationDateTime&$expand=jobAppStatus,candidate' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
