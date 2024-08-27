curl --location --request PUT 'https://{{SDP_BASE_URL}}/api/v3/{{ticket}}/{{ticket_id}}/approval_levels/{{level_id}}/approvals/{{approval_id}}/_{{action}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{token}}' \
--data '{
  "approval": {
    "comments": "The comments to action the approval"
  }
}'
