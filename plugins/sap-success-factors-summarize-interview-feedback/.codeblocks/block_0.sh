curl --request GET \
  --url 'https://<YOUR_INSTANCE>/odata/v2/JobRequisition?$filter=hiringManager/userNav/email eq '{{email}}' and status/status eq 'ACTIVE'&$select=jobReqId,jobReqLocale/jobTitle,hiringManager/userNav/email,status&$expand=jobReqLocale,hiringManager/userNav,status&$top=200&$orderby=lastModifiedDateTime desc&$format=json' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>'
