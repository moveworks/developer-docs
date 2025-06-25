curl --location 'https://<API_SERVER_DOMAIN>/services/data/v63.0/query/?q=SELECT%20Name%2C%20StageName%2C%20Owner.Email%20FROM%20Opportunity%20WHERE%20Owner.Email%3D%27<Owner_EMAIL>%27%20LIMIT%2010' \
--header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
--header 'Content-Type: application/json' \
