SELECT Id, Name, Status, StartDate, EndDate
FROM Campaign
WHERE Account__r.Name = 'Test account Opportunity demo'
ORDER BY StartDate DESC
LIMIT 1
