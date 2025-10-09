curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT+Id,+CaseNumber,+Subject,+Type,+Status,+Priority,+OwnerId,+CreatedDate,+ClosedDate,+Description,+Origin,+Reason+FROM+Case+WHERE+OwnerId+IN+(SELECT+UserOrGroupId+FROM+GroupMember+WHERE GroupId ='{{group_id}}')+AND+CreatedDate>{{from_date}}+AND+CreatedDate<{{to_date}}+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
