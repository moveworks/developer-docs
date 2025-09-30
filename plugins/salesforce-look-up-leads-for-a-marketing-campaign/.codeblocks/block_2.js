curl --location 'https://<YOUR_DOMAIN>/services/data/v64.0/query?q=SELECT%2CType%2C%20Lead.Owner.Email%2C%20LeadId%2C%20Lead.FirstName%2C%20Lead.LastName%2C%20Lead.Email%2C%20Lead.Company%2C%20Lead.Status%20FROM%20CampaignMember%20WHERE%20CampaignId%20%3D%20%27601Ed00000KQay1IAD%27%20AND%20LeadId%20%21%3D%20NULL%20AND%20Type%3D%27Lead%27' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
