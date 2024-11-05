curl --request POST \
     --url https://api.perplexity.ai/chat/completions \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '
{
  "model": "pplx-70b-online",
  "messages": [
    {
      "role": "system",
      "content": "Use all available internet information to answer the question precisely, accurately, and concisely."
    },
    {
      "role": "user",
      "content": "{{query}}"
    }
  ]
}
'
