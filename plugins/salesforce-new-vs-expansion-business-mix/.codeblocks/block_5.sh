curl --location --request GET "https://<YOUR_INSTANCE_DOMAIN>/services/data/v64.0/query/?q=SELECT+Id,+Name,+StageName,+CloseDate,+Amount,+OwnerId,+Owner.Name+FROM+Opportunity+WHERE+OwnerId+IN+('{{owner_id}}')&order_by=CloseDate+DESC&limit=200" \
--header "Authorization: Bearer YOUR_ACCESS_TOKEN" \
--header "Content-Type: application/json
