curl --location --request GET 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT Id, Name, (SELECT Id, Name, Amount, StageName, CreatedDate, CloseDate  FROM Opportunities) FROM Campaign WHERE Id='{{campaign}}'' \
--header 'Content-Type: application/json' \                                            
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
