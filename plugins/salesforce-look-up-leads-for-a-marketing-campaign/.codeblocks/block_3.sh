SELECT Record_Type__c, LeadId, Lead.FirstName, Lead.LastName, Lead.Email, Lead.Company, Lead.Status FROM CampaignMember WHERE CampaignId = '601Ed00000KQay1IAD' AND LeadId != NULL AND Record_Type__c='Lead' LIMIT 2000
Copy
