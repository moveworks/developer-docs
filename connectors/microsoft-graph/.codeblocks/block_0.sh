curl --location 'https://login.microsoftonline.com/{{tenant_id}}/oauth2/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id={{application_id}}' \
--data-urlencode 'client_secret={{client_secret}}' \
--data-urlencode 'resource=https://graph.microsoft.com' \
--data-urlencode 'grant_type=client_credentials'
