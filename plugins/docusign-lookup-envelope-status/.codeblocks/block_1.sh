curl --request GET \
     "https://<<DOMAIN NAME (like demo.docusign.net)>>/restapi/v2.1/accounts/{{accountId}}/envelopes?from_date={{from_date}}&to_date={{to_date}}&search_text={{title_part}}&include=recipients&user_id={{user_id}}" \
     --header "Authorization: Bearer {{access_token}}"
