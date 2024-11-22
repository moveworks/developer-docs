curl --location '{{ariba_api_url}}/approval/v2/{{ariba_env_flag}}/pendingApprovables?realm={{ariba_realm}}' \
--header 'APIKey: {{ariba_api_key}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
