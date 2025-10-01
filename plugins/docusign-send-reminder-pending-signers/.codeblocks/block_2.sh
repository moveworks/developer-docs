curl --request PUT \
  --url 'https://<DOMAIN_NAME (like demo.docusign.net)>/restapi/v2.1/accounts/{{account_id}}/envelopes/{{envelope_id}}/recipients?resend_envelope=true' \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
  --data '{
    "signers": [
      {
        "recipientId": "{{recipient_id}}",
        "name": "{{name}}",
        "email": "{{email}}"
      }
    ]
  }'
