curl --location 'https://<YOUR_INSTANCE>/odata/v2/EmployeeTime?%24filter=userId%20eq%20%{{USER_ID}}%27%20and%20startDate%20ge%20datetime%27{{START_DATE}}T00%3A00%3A00%27%20and%20startDate%20le%20datetime%27{{END_DATE}}T23%3A59%3A59%27&%24select=startDate%2CendDate%2CapprovalStatus%2CtimeType%2CtimeTypeNav%2CtimeTypeNav%2FabsenceClassNav&%24expand=timeTypeNav%2CtimeTypeNav%2FabsenceClassNav' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
