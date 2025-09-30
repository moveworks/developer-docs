curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+CaseNumber%2C+Subject%2C+IsEscalated%2C+Type%2C+Status%2C+Priority%2C+OwnerId%2C+Owner.Name%2C+CreatedDate%2C+LastModifiedDate%2C+ClosedDate%2C+Contact.Name%2C+Contact.Email%2C+Account.Industry%2C+Account.Name%2C+Description%2C+Origin%2C+IsClosed%2C+Reason%2C+SuppliedName%2C+SuppliedEmail%2C+AccountId%2C+ContactId+FROM+Case+WHERE+IsClosed%3Dfalse+AND+OwnerId+IN+(SELECT+UserOrGroupId+FROM+GroupMember+WHERE+GroupId%3D%27{{QUEUE_ID}}%27)+AND+CreatedDate%3E{{FROM_DATE}}+AND+CreatedDate%3C{{TO_DATE}}+ORDER+BY+CreatedDate+DESC+LIMIT+500' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

