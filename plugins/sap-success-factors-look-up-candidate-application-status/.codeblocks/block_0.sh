curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?$expand=recruiter,jobReqLocale,status&$filter=recruiter/email eq '{{email}}'&$select=jobReqId,jobReqLocale/jobTitle,status&$top=30&$orderby=lastModifiedDateTime desc' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
