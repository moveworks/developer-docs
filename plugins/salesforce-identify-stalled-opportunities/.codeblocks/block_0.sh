curl --location 'https://<YOUR_INSTANCE>/services/data/v64.0/query/?q=SELECT+Id%2C+Name%2C+Email+FROM+User+WHERE+Email%3D%27{{EMAIL}}%27' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
