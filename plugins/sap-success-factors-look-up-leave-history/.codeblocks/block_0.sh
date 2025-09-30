curl --location 'https://<YOUR_INSTANCE>/odata/v2/User?%24filter=email%20eq%20%27{{MANAGER_EMAIL}}%27&%24expand=directReports&%24select=userId%2Cemail%2CdisplayName%2CdirectReports%2FuserId%2CdirectReports%2FdisplayName%2CdirectReports%2Femail%2CdirectReports%2Ftitle%2CdirectReports%2Fdepartment%2CdirectReports%2Flocation%2CdirectReports%2FbusinessPhone%2CdirectReports%2Fcity%2CdirectReports%2FhireDate%2CdirectReports%2FemployeeClass%2CdirectReports%2Fstatus' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
