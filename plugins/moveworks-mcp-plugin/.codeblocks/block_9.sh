curl -X POST http://localhost:3000/server1/call-tool \
  -H "Content-Type: application/json" \
  -d '{"tool": "get_current_time", "parameters": {"timezone": "America/New_York"}}'
