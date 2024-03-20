curl --location 'https://login.salesforce.com/services/oauth2/token' \
 --header 'Accept: application/json' \
 --header 'Content-Type: application/x-www-form-urlencoded' \
 --data-urlencode 'grant_type=password' \
 --data-urlencode 'client_id={{salesforce_consumer_key}}’ \
 --data-urlencode 'client_secret={{salesforce_consumer_secret}}' \
 --data-urlencode 'username={{salesforce_username}}' \
 --data-urlencode 'password={{salesforce_password}}{{salesforce_security_token}}' \
 --data-urlencode 'redirect_uri=https://login.salesforce.com/'
