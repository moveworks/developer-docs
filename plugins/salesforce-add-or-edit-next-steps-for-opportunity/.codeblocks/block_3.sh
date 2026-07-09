curl --location --request PATCH 'https://arbaan-dev-ed.my.salesforce.com/services/data/v64.0/sobjects/Opportunity/{{OpportunityId}}' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "NextStep": "{{next_step}}"
}'
