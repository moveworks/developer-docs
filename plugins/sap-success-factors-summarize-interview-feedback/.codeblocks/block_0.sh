curl --request GET \
  --url 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?$filter=hiringManager/userNav/email eq '{{HIRING_MANAGER_EMAIL}}'&$select=jobReqId,jobReqLocale/jobTitle&$expand=jobReqLocale&$top=200&$format=json' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>'

