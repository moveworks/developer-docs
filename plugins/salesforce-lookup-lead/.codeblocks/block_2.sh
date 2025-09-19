curl --location 'https://<your-instance>/services/data/vXX.X/query/?q=SELECT+Id%2CName%2CTitle%2CCompany%2CEmail%2COwner.Name%2CStatus%2CPhone%2CStreet%2CCity%2CState%2CPostalCode%2CCountry%2CLastModifiedDate+FROM+Lead+WHERE+Company+LIKE+%27%25{{company}}%25%27+AND+IsConverted%3Dfalse+ORDER+BY+LastModifiedDate+DESC+LIMIT+50' \
--header 'Authorization: Bearer <your-access-token>'
