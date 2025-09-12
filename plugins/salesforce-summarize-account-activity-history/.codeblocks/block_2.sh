curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/composite/batch' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "batchRequests": [
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Name,Description,Type,Industry,LastActivityDate,LastModifiedDate+FROM+Account+WHERE+Id='\''{{ACCOUNT_ID}}'\''"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,FirstName,LastName,Email,Phone,Title,Owner.Name,LastModifiedDate+FROM+Contact+WHERE+AccountId='\''{{ACCOUNT_ID}}'\''+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,Status,Owner.Name,Who.Name,What.Name+FROM+Task+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,Status,Owner.Name,Who.Name,What.Name+FROM+Task+WHERE+WhoId+IN+(SELECT+Id+FROM+Contact+WHERE+AccountId='\''{{ACCOUNT_ID}}'\'' )+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,Status,Owner.Name,Who.Name,What.Name+FROM+Task+WHERE+WhatId+IN+(SELECT+Id+FROM+Opportunity+WHERE+AccountId='\''{{ACCOUNT_ID}}'\'' )+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,DurationInMinutes,Owner.Name,Who.Name,What.Name+FROM+Event+WHERE+WhatId='\''{{ACCOUNT_ID}}'\''+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,DurationInMinutes,Owner.Name,Who.Name,What.Name+FROM+Event+WHERE+WhoId+IN+(SELECT+Id+FROM+Contact+WHERE+AccountId='\''{{ACCOUNT_ID}}'\'' )+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Subject,ActivityDate,DurationInMinutes,Owner.Name,Who.Name,What.Name+FROM+Event+WHERE+WhatId+IN+(SELECT+Id+FROM+Opportunity+WHERE+AccountId='\''{{ACCOUNT_ID}}'\'' )+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,CaseNumber,Subject,LastModifiedDate,Status,Priority,CreatedDate,ClosedDate,Owner.Name+FROM+Case+WHERE+AccountId='\''{{ACCOUNT_ID}}'\''+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    },
    {
      "method": "GET",
      "url": "/services/data/v64.0/query?q=SELECT+Id,Name,StageName,LastModifiedDate,Amount,CloseDate,Owner.Name,CreatedDate+FROM+Opportunity+WHERE+AccountId='\''{{ACCOUNT_ID}}'\''+AND+LastModifiedDate=LAST_N_DAYS:{{TIME_RANGE}}+ORDER+BY+LastModifiedDate+DESC"
    }
  ]
}'
