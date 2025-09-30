curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?%24expand=jobReqLocale%2CjobReqFwdCandidates%2Fcandidate%2Crecruiter&%24filter=(recruiter%2Femail%20eq%20%27{{EMAIL}}%27)%20and%20internalStatus%20eq%20%27Approved%27%20and%20substringof(%27{{CANDIDATE_NAME}}%27%2C%20jobReqFwdCandidates%2Fcandidate%2FfirstName)' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
