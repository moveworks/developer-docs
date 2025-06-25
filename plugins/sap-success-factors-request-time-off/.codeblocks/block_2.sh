curl --location 'https://<YOUR_INSTANCE>/odata/v2/EmployeeTime' \
--header 'Authorization: Bearer ' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

--data '{
    "userId": "{{userId}}",
    "startDate": "/Date({{startDate}})/",
    "endDate": "/Date({{endDate}})/",
    "timeType": "TT_PTO{{timeType}}",
    "userIdNav": {
        "__metadata": {
            "uri": "https://<YOUR_INSTANCE>/odata/v2/User('\''{{userId}}'\'')"
        }
    },
    "timeTypeNav": {
        "__metadata": {
            "uri": "<YOUR_INSTANCE>/odata/v2/TimeType(externalCode='\''{{timeType}}'\'')"
        }
    }
}'
