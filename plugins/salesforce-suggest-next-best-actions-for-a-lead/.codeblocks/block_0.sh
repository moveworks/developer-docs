curl --location 'https://<your-instance>/services/data/v59.0/query/?q=SELECT+Id%2C+Name%2C+Title%2C+Company%2C+Email%2C+Owner.Name%2C+Status%2C+Phone%2C+Street%2C+City%2C+State%2C+PostalCode%2C+Country%2C+LastModifiedDate+FROM+Lead+WHERE+Owner.Email%3D%27{{email}}%27+AND+IsConverted%3Dfalse+ORDER+BY+LastModifiedDate+DESC' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
