curl --request GET \
  --url 'https://<<DOMAIN NAME (like demo.docusign.net)>>/restapi/v2/accounts/{accountId}/envelopes/{templateId}/recipients?include_tabs=false&include_extended=true' \
  --header 'Accept: application/json' \
  --header 'Authorization: YOUR_BEARER_TOKEN'
