curl --location 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver/{{KNOWLEDGE_ARTICLE_SYS_ID}}?sysparm_fields=sys_id,approver,state,document_id,document_id.display_value,document_id.short_description,document_id.text,document_id.link,comments&sysparm_display_value=true' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
