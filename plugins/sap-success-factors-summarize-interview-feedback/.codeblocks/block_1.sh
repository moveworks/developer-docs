curl --request GET \
  --url "https://<YOUR_INSTANCE>/odata/v2/JobApplication?\$filter=jobReqId eq {{JOB_REQ_ID}} and substringof('Interview', jobAppStatus/appStatusName)&\$select=candidateId,firstName,lastName,applicationId,currentTitle&\$format=json" \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>'

