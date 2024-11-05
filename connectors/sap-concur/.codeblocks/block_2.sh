curl --location 'https://us2.api.concursolutions.com/oauth2/v0/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'client_id={{concur_client_id}}' \
--data-urlencode 'client_secret={{concur_client_secret}}' \
--data-urlencode 'refresh_token={{concur_refresh_token}}'
