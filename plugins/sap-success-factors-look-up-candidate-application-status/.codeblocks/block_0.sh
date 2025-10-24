curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?$expand=recruiter,jobReqLocale&$filter={{filter_query}}&$select=jobReqId,jobReqLocale/jobTitle,recruiter/email&$top=30' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \

