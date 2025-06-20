curl --location 'https:<YOUR_INSTANCE>/services/data/v60.0/query?q=SELECT+OpportunityId,Product2.Name,Product2.ProductCode,Product2.StockKeepingUnit,Product2.RenewalDate__c,Quantity,TotalPrice+FROM+OpportunityLineItem+WHERE+OpportunityId=<Opportunity_ID>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

