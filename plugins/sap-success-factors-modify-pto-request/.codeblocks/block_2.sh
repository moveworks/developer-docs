curl --request GET \
  --url "https://<YOUR_SF_HOST>/odata/v2/EmployeeTime?$filter=(userId eq '{{userId}}') and (approvalStatus in 'PENDING','APPROVED') and (startDate ge datetime'{{minDate}}' and startDate le datetime'{{maxDate}}') and (timeTypeNav/externalCode in {{externalCode}})&$select=userId,startDate,endDate,timeTypeNav/externalCode,timeTypeNav/externalName_defaultValue,approvalStatus,userIdNav/defaultFullName,userIdNav/country,workflowRequestId,externalCode,createdDateTime,quantityInHours&$expand=userIdNav,timeTypeNav&$orderby=startDate asc" \
  --header "Authorization: Bearer <ACCESS_TOKEN>" \
  --header "Accept: application/json"
