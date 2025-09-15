curl --location 'https://<your-instance>/services/data/v56.0/composite/batch/' \
--header 'Authorization: Bearer <your-access-Token>' \
--header 'Content-Type: application/json' \
--data '{

    "batchRequests": [

        {

            "method": "GET",

            "url": "services/data/v56.0/query/?q=SELECT+Subject,ActivityDate,Status,TaskSubtype,Description+FROM+Task+WHERE+WhoId=%27{{lead_id}}%27+ORDER+BY+ActivityDate+DESC"

        },

			  {

            "method": "GET",

            "url": "services/data/v56.0/query/?q=SELECT+Subject,ActivityDate,Location,Description+FROM+Event+WHERE+WhoId={{lead_id}}+ORDER+BY+ActivityDate+DESC"

        }, 

            {
            "method": "GET",
            "url": "services/data/v56.0/query/?q=SELECT+Campaign.Name,Campaign.Type,Campaign.Description,Status,HasResponded,FirstRespondedDate+FROM+CampaignMember+WHERE+LeadId={{lead_id}}+ORDER+BY+FirstRespondedDate+DESC"
        }
    ]
}
