curl --location --request PATCH 'https://<your_instance>.service-now.com/api/now/table/sc_req_item/<your_sys_id>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your_access_token>' \
--data '{
  "approval": "<approval_type>"
}'

