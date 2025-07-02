curl --location 'https://<your-instance>.service-now.com/api/now/table/sc_req_item' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data-raw '{
  "u_business_justification": "<your-business-justification>",
  "requested_for": "<user-email>",
  "cat_item": "<software-name>",
  "approval": "requested"
}'
