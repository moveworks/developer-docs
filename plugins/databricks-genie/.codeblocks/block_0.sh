curl --request POST "https://${DATABRICKS_HOST}/api/2.0/genie/spaces/{{space_id}}/start-conversation" \
     --header "Authorization: Bearer ${DATABRICKS_TOKEN}" \
     --data '{
         "content": "{{user_query}}"
     }'
