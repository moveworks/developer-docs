curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/phoneNumbers/{SUBRESOURCE_ID}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "completePhoneNumber": "{NEW_PHONE_NUMBER}"
}
