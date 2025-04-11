curl --location 'https://<API_SERVER_DOMAIN>/oauth/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'company_id=<COMPANY_ID>' \
--data-urlencode 'client_id=<CLIENT_ID>' \
--data-urlencode 'grant_type=urn:ietf:params:oauth:grant-type:saml2-bearer' \
--data-urlencode 'assertion=<SAML_ASSERTION>'
