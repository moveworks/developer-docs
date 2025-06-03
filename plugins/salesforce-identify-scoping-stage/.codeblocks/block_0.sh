curl --location 'https://[REDACTED_INSTANCE].salesforce.com/services/data/v63.0/query/?q=SELECT%20Name%2C%20StageName%2C%20Owner.Email%20FROM%20Opportunity%20WHERE%20Owner.Email%3D%27[REDACTED_EMAIL]%27%20LIMIT%2010' \
--header 'Authorization: Bearer [REDACTED_ACCESS_TOKEN]' \
--header 'Content-Type: application/json' \
