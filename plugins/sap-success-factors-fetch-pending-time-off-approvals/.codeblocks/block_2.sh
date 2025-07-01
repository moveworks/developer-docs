curl --request GET
--location 'https://<API_SERVER>/odata/v2/EmployeeTime?%24filter=(userId%20eq%20%27<userId>%27)%20and%20approvalStatus%20eq%20%27PENDING%27%20and%20(timeType%20eq%20%27TT_SICK_REC%27%20or%20timeType%20eq%20%27TT_VAC_REC%27%20or%20timeType%20eq%20%27TT_MATERNITY%27%20or%20timeType%20eq%20%27TT_PTO%27%20or%20timeType%20eq%20%27JURY%27%20or%20timeType%20eq%20%27LOATT%27%20or%20timeType%20eq%20%27LTDTT1%27%20or%20timeType%20eq%20%27STD%27%20or%20timeType%20eq%20%27Absc_OpenEnd%27%20or%20timeType%20eq%20%27TOIL_TT%27)&%24select=userId%2CstartDate%2CendDate%2CtimeTypeNav%2FexternalCode%2CtimeTypeNav%2FexternalName_defaultValue%2CapprovalStatus%2CuserIdNav%2FdefaultFullName%2CuserIdNav%2Fcountry&%24expand=userIdNav%2CtimeTypeNav' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
