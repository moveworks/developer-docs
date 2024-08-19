curl --location 'https://{{instance}}.coupacloud.com/oauth2/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id={{client_id}}' \
--data-urlencode 'grant_type=client_credentials' \
--data-urlencode 'client_secret={{client_secret}}' \
--data-urlencode 'scope=core.approval.read core.approval.write  core.invoice.approval.bypass core.invoice.approval.write core.invoice.assignment.read core.invoice.assignment.write core.invoice.create core.invoice.delete core.invoice.read core.invoice.write core.requisition.read core.user_group.read core.user.read core.purchase_order.write core.purchase_order.read core.expense.read core.expense.secure.read'
