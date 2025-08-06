curl --location --globoff 'https://<instance>.service-now.com/api/now/table/incident?sysparm_query=short_descriptionLIKE{{description}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic <your_access_token>'
