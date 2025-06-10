curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/addresses/{SUBRESOURCE_ID}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
            "Address_ID": "{{Address_ID}}",
            "postalCode": "{{postalcode}}",
            "addressLine1": "{{addressline}}",
            "usage": {
                "primary": true,
                "usageType": {
                    "id": "{{usageType_id}}"
                }
            },
            "country": {
                "id": "{{country_id}}"
            },
            "city": "{{city}}",
            "countryRegion": {
                "id": "{{countryRegion_id}}"
            }
        }'
