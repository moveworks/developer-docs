curl --request GET "https://${DATABRICKS_HOST}/api/2.0/genie/spaces/{{space_id}}/conversations/{{conversation_id}}/messages/{{message_id}}/attachments/{{attachment_id}}/query-result" \
     --header "Authorization: Bearer ${DATABRICKS_TOKEN}" \
