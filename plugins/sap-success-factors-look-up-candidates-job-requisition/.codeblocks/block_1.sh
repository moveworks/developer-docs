curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?%24expand=recruiter%2CjobReqLocale&%24filter=recruiter%2Femail%20eq%20%27{{EMAIL}}%27%20and%20substringof(%27{{JOB_TITLE}}%27%2C%20jobReqLocale%2FjobTitle)%20and%20internalStatus%20eq%20%27Approved%27&%24select=jobReqId%2CjobReqLocale%2FjobTitle%2CinternalStatus%2Cdeleted' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
