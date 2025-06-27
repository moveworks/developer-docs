curl --location 'https://<Your instance>/api/now/table/sc_req_item' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <Your access token>' \
--data-raw '{
 "short_description": "Request for Software Access",
  "requested_for": "<requester_email>",
  "cat_item":  "<software_name>",
 }
'
