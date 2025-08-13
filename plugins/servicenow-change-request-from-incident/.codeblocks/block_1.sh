curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=number%3D<INCIDENT_NUMBER>' \
--header 'Accept: application/json' \
--header 'Authorization: Basic <ENCODED_CREDENTIALS>'
