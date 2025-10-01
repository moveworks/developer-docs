curl --request GET \
  --url 'https://<DOMAIN NAME (like api.docusign.net)>/Management/v2.1/organizations/<organization_id>/users/dsprofile?email={{email}}' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}'
