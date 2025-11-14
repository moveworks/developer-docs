curl --location '[https://<YOUR_INSTANCE>/api/v2/computers-inventory?](https://moveworksnfr.jamfcloud.com/api/v2/computers-inventory?filter=general.remoteManagement.managed%3D%3Dfalse%20and%20userAndLocation.username%3D%3Dnull%20or%20userAndLocation.username%3D%3D%27%27)section=USER_AND_LOCATION,HARDWARE,GENERAL&filter=general.remoteManagement.managed==false and userAndLocation.username==null or userAndLocation.username==''' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <YOUR_BEARER>' \
