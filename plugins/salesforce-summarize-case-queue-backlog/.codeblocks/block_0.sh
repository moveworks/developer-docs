curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Group.Name%2C+GroupId%2C+Group.Type+FROM+GroupMember+WHERE+UserOrGroupId+IN+(SELECT+Id+FROM+User+WHERE+Email%3D%27{{EMAIL}}%27)+AND+Group.Type%3D%27Queue%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

