curl --location --request POST 'https://<DOMAIN>.workday.com/ccx/oauth2/<INSTANCE>/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '<CLIENT_ID>:<CLIENT_SECRET>' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token=<REFRESH_TOKEN>'
