curl --location '{{OAUTH_TOKEN_ENDPOINT}}' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Authorization: Basic <Base64 encoded {{OAUTH_CLIENT_ID}}:{{OAUTH_CLIENT_SECRET}}>' \
--data-urlencode 'grant_type=authorization_code' \
--data-urlencode 'code={{Auth Code Grant}}' \
--data-urlencode 'redirect_uri={{OAUTH_REDIRECT_URI}}'
