curl --location 'https://graph.microsoft.com/v1.0/sites/{{site_id}}/lists/{{list_id}}/items?%24expand=fields&%24filter=fields%2F{{FieldName}}%20eq%20%27{{query}}%27' \
--header 'Prefer: HonorNonIndexedQueriesWarningMayFailRandomly'
