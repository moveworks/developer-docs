curl --request POST "https://${DATABRICKS_HOST}/api/2.0/genie/spaces/{space_id}/conversations/{conversation_id}/messages/{message_id}" \
     --header "Authorization: Bearer ${DATABRICKS_TOKEN}" \
