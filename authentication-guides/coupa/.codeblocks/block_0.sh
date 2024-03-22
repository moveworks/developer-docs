curl --location 'https://<INSTANCE_DOMAIN>/oauth2/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=client_credentials' \
--data-urlencode 'client_id=<**Identifier**>' \
--data-urlencode 'client_secret=<**Secret**>' \
--data-urlencode 'scope=<SPACE_SEPARATED_LIST_OF_SCOPES>'
