curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/JobApplication?$filter=jobReqId eq {{JOB_REQ_ID}}&$select=candidateId,firstName,lastName,applicationId,currentTitle&$format=json' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>
