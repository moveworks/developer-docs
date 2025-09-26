curl --request GET \
  --url 'https://<DOMAIN NAME (like demo.docusign.net)>/restapi/v2.1/accounts/{{account_id}}/envelopes?from_date={{from_date}}&to_date={{to_date}}&user_id={{user_id}}&status=sent,delivered&order=desc&order_by=created&include=recipients&count=50' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
