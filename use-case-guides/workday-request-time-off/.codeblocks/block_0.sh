curl --location 'https://{{domain}}.workday.com/ccx/oauth2/{{instance}}/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{client_id}}:{{client_secret}}' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{refresh_token}}'
