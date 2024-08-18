curl --location '{{OAUTH_TOKEN_ENDPOINT}}' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'Authorization: Basic <Base64 encoded {{OAUTH_CLIENT_ID}}:{{OAUTH_CLIENT_SECRET}}>' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{OAUTH_REFRESH_TOKEN}}' \
--data-urlencode 'redirect_uri={{OAUTH_REDIRECT_URI}}'
