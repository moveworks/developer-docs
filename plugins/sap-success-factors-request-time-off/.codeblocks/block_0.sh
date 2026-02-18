curl --location \
'https://<YOUR_SF_HOST>/odata/v2/User?$filter=email eq ''{{USER_EMAIL}}''&$select=userId,firstName,lastName,displayName,email&$top=50' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
