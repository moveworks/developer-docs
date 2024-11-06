curl --location --request PATCH '{{ariba_api_url}}/approval/v2/{{ariba_env_flag}}/{{ariba_approvable_type}}/{{ariba_approvable_id}}?realm={{ariba_realm}}&user={{username}}&passwordAdapter={{user_login_type}}&approvableType={{ariba_approvable_type}}' \
--header 'APIKey: {{ariba_api_key}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
--data '{
   "state": "approve",
   "comment": {
      "text": "string",
      "visibleToSupplier": true
   }
}'
