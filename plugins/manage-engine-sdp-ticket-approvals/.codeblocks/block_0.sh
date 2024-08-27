curl --location 'https://accounts.zoho.in/oauth/v2/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'code={{code}}' \
--data-urlencode 'grant_type=authorization_code' \
--data-urlencode 'client_id={{client_id}}' \
--data-urlencode 'client_secret={{client_secret}}' \
--data-urlencode 'redirect_uri=https://www.zoho.com'
