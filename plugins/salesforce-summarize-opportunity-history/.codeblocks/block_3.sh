curl --location 'https://{{YOUR_INSTANCE_DOMAIN}}/services/data/vXX.0/composite' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}' \
--header 'Content-Type: application/json' \
--data-raw '{
  "allOrNone": false,
  "compositeRequest": [
    {
      "method": "GET",
      "url": "/services/data/vXX.0/sobjects/Opportunity/{{opportunity_id}}",
      "referenceId": "Opportunity"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/sobjects/Account/{{account_id}}",
      "referenceId": "Account"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query/?q=SELECT+OpportunityId,StageName,CreatedDate,CreatedBy.Name+FROM+OpportunityHistory+WHERE+OpportunityId='\''{{opportunity_id}}'\''+ORDER+BY+CreatedDate+ASC",
      "referenceId": "OpportunityHistory"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query/?q=SELECT+Id,Contact.Id,Contact.Name,Contact.Email,Contact.Phone,Contact.Title,Role,IsPrimary+FROM+OpportunityContactRole+WHERE+OpportunityId='\''{{opportunity_id}}'\''",
      "referenceId": "ContactRoles"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query/?q=SELECT+Id,Product2.Name,Product2.Family,Quantity,UnitPrice,TotalPrice+FROM+OpportunityLineItem+WHERE+OpportunityId='\''{{opportunity_id}}'\''",
      "referenceId": "Products"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query/?q=SELECT+Id,Subject,Status,ActivityDate,CreatedDate,Owner.Name,Description+FROM+Task+WHERE+WhatId='\''{{opportunity_id}}'\''+ORDER+BY+CreatedDate+DESC+LIMIT+50",
      "referenceId": "Tasks"
    },
    {
      "method": "GET",
      "url": "/services/data/vXX.0/query/?q=SELECT+Id,Subject,StartDateTime,EndDateTime,CreatedDate,Owner.Name,Description+FROM+Event+WHERE+WhatId='\''{{opportunity_id}}'\''+ORDER+BY+StartDateTime+DESC+LIMIT+50",
      "referenceId": "Events"
    }
  ]
}'

