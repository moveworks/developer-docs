curl --location --request POST 'https://<YOUR_INSTANCE>/api/sn_wsd_rsv/reservation/<RESERVATION_SYS_ID>/checkin' \
  --header 'Authorization: Bearer <ACCESS_TOKEN>' \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{}'
