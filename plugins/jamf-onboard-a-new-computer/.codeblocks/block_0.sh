curl --location 'https://<YOUR_INSTANCE>/api/v2/computers-inventory?section=USER_AND_LOCATION,HARDWARE,GENERAL&filter=general.remoteManagement.managed==false and userAndLocation.username==null or userAndLocation.username==''' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
