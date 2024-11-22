curl --location --request POST '{{oauth_server_url_prefix}}/v2/oauth/token?grant_type=openapi_2lo' \
--user '{{ariba_client_id}}:{{ariba_client_secret}}' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'APIKey: {{ariba_application_key}}'
