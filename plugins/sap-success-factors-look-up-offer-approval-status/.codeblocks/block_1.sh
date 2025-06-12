curl --location 'https://<YOUR_INSTANCE>/odata/v2/JobOfferApprover?%24filter=offerApprovalId%20eq%20<APPROVAL_ID>&%24expand=approverNav' \
--header 'Authorization: Bearer' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

