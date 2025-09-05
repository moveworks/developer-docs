curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/composite/batch' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
    "batchRequests": [
        {
            "method": "GET",
            "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,Status,Description,CallType,CallDurationInSeconds,Priority,TaskSubtype,Owner.Name,Who.Name,WhatId,What.Name+FROM+Task+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+ActivityDate=LAST_N_DAYS:{{DATE_RANGE}}"
        },
        {
            "method": "GET",
            "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,DurationInMinutes,Description,Owner.Name,Who.Name,WhatId,What.Name+FROM+Event+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+ActivityDate=LAST_N_DAYS:{{DATE_RANGE}}"
        },
        {
            "method": "GET",
            "url": "/services/data/v64.0/query?q=SELECT+Id,Name,StageName,Amount+FROM+Opportunity+WHERE+AccountId='\''{{ACCOUNT_ID}}'\''+AND+IsClosed=false"
        },
        {
            "method": "GET",
            "url": "/services/data/v64.0/query?q=SELECT+Id,CaseNumber,Subject,Status+FROM+Case+WHERE+AccountId='\''{{ACCOUNT_ID}}'\''+AND+IsClosed=false"
        },
        {
            "method": "GET",
            "url": "/services/data/v64.0/query?q=SELECT+Id,Name,Title,Email,Phone+FROM+Contact+WHERE+AccountId='\''{{ACCOUNT_ID}}'\''"
        },
        {
            "method": "GET",
            "url": "/services/data/v64.0/query?q=SELECT+Campaign.Id,Campaign.Name,Campaign.Status+FROM+CampaignMember+WHERE+Contact.AccountId='\''{{ACCOUNT_ID}}'\''"
        }
    ]
}'
