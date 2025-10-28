curl --location 'https://<your-instance>.jamfcloud.com/api/v2/computers-inventory?section=USER_AND_LOCATION&filter=(userAndLocation.username%3D%3D%22{{username}}%22%20or%20userAndLocation.username%3D%3Dnull)' \
--header 'Authorization: Bearer <your-access-token>'
