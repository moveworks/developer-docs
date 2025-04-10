curl --location '<API_SERVER>/odata/v2/EmployeeTimeSheet?%24filter=approvalStatus%20eq%20%27PENDING_APPROVAL%27&%24select=approvalStatus%2Cperiod%2CrecordedHoursAndMinutes%2CplannedHoursAndMinutes%2CexternalCode%2CuserId%2CendDate&%24orderby=startDate%20desc' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
