curl --location '[https://graph.microsoft.com/v1.0/users/{{your_email}](https://graph.microsoft.com/v1.0/users/%7B%7Byour_email%7D)}/authentication/phoneMethods' \
--header 'Content-Type: application/json' \
--data '{
"phoneNumber": "+1 2065555555",
"phoneType": "office"
}'
