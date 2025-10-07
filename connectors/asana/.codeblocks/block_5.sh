# --- inputs ---
# PAT or use an OAuth access token
ASANA_PAT="Place PAT or OAuth here" 
# e.g., a project gid or portfolio/task gid                        
RESOURCE_GID="place GID here"               
# Moveworks listener endpoint you want Asana to call:
TARGET_URL="place moveworks listener url here"                           

# --- create webhook ---
curl -sS -X POST "https://app.asana.com/api/1.0/webhooks" \
-H "Authorization: Bearer ${ASANA_PAT}" \
-H "Content-Type: application/json" \
--data-binary @- <<JSON
{
"data": {
"resource": "${RESOURCE_GID}",
"target": "${TARGET_URL}",
"filters": [
{
"resource_type": "task",
"action": "changed",
"fields": ["assignee", "completed", "due_on", "due_at", "name"]
}
]
}
}
JSON

