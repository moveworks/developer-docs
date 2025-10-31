curl --location 'https://<your-instance>.jamfcloud.com/api/v2/computers-inventory?section=USER_AND_LOCATION&filter=(userAndLocation.email%3D%3D%22{{userEmail}}%22%20or%20userAndLocation.email%3D%3Dnull)' \
--header 'Authorization: Bearer <your-access-token>'
