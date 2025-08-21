curl --location 'https://<your-instance>/services/data/vXX.X/query/?q=SELECT+Id,+Name,+Company,+Email,+Status,+LastModifiedDate+FROM+Lead+WHERE+Email+=+%27{{email}}%27+AND+Status+IN+(%27Open+-+Not+Contacted%27,%27Working+-+Contacted%27)+ORDER+BY+LastModifiedDate+DESC' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
