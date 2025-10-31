curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?$expand=recruiter,jobReqLocale&$filter=recruiter/email eq '{{email}}'&$select=jobReqId,jobReqLocale/jobTitle&$top=30' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \

