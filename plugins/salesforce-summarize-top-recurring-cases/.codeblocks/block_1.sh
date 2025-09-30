curl --location 'https://<YOUR_INSTANCE>/services/data/vXX.X/query/?q=SELECT+GroupId,+Group.Name,+Group.OwnerId,+Group.Owner.Email+FROM+GroupMember+WHERE+UserOrGroupId+IN+(SELECT+Id+FROM+User+WHERE+Email='{{email}}')+AND+Group.Type='Regular'' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
