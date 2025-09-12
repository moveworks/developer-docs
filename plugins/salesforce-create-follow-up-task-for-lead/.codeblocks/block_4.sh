curl --location 'https://<your-instance>/services/data/v61.0/query/?q=SELECT+Id,Name,Email+FROM+User+WHERE+Name+LIKE+%27%25{{name}}%25%27+AND+UserType=Standard+LIMIT+10' \
--header 'Authorization: Bearer <your-access-token>'
