curl --location --request POST '{{sailpoint_url}}/identityiq/oauth2/token?grant_type=client_credentials' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{sailpoint_client_id}}:{{sailpoint_client_secret}}'
