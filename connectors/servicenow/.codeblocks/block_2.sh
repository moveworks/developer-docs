curl --location 'https://{{instance_name}}.service-now.com/oauth_token.do' \
	--header 'Content-Type: application/x-www-form-urlencoded' \
	--user '{{username}}':'{{password}}'
	--data-urlencode 'grant_type=password' \
	--data-urlencode 'client_id={{client_id}}' \
	--data-urlencode 'client_secret={{client_secret}}' \
	--data-urlencode 'username={{username}}' \
	--data-urlencode 'password={{password}}'
