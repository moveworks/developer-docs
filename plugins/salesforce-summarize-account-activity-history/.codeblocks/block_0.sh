curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Name%2C+Type%2C+Industry%2C+CreatedDate+FROM+Account+WHERE+Id+IN+(SELECT+AccountId+FROM+Contact+WHERE+Email%3D%27{{EMAIL}}%27)+ORDER+BY+CreatedDate+DESC' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'

