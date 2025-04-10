curl --request GET
--location '<API_SERVER>/odata/v2/User('\''<userId>'\'')/userIdOfEmployeeTimeSheetNav?%24top=10&%24skip=5&%24expand=employeeTimeSheetEntry&%24select=approvalStatus%2Cperiod%20%2CrecordedHoursAndMinutes%2CplannedHoursAndMinutes%2CexternalCode&%24orderby=period%20desc' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

