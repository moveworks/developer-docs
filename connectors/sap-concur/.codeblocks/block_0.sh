curl --location 'https://us2.api.concursolutions.com/oauth2/v0/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'client_id={{concur_client_id}}' \
--data-urlencode 'client_secret={{concur_client_secret}}' \
--data-urlencode 'username={{concur_uuid}}' \
--data-urlencode 'password={{concur_request_token}}' \
--data-urlencode 'credtype=authtoken'
