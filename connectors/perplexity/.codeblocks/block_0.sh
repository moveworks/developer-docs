curl --request POST \
     --url https://api.perplexity.ai/chat/completions \
     --header 'accept: application/json' \
     --header 'content-type: application/json' \
     --data '
{
  "model": "mistral-7b-instruct",
  "messages": [
    {
      "role": "system",
      "content": "Be precise and concise."
    },
    {
      "role": "user",
      "content": "How many stars are there in our galaxy?"
    }
  ]
}
'
