---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/perplexity/logo.png
name: Perplexity
- General
---

# **Introduction**

Perplexity’s API hosts LLMs that have access to information scraped from the web. This guide will demonstrate how to create a Perplexity API Key, authenticate with the Perplexity API, and test in Agent Studio

# **Prerequisites**

- A Perplexity Account (with API credits)

# Walkthrough

## **Step 1: Create a Personal Access Token**

1. Go to the [Perplexity API console](https://www.perplexity.ai/settings/api)
2. Click on `Generate` under `API Keys`
    
    ![Untitled](Authentication%20Guide%20Perplexity%20e925c5c4cdb443b28e7c28bb26e8245e/Untitled.png)
    
3. Copy the API Key & store it somewhere safe.
    
    ![Untitled](Authentication%20Guide%20Perplexity%20e925c5c4cdb443b28e7c28bb26e8245e/Untitled%201.png)
    

## **Step 2: Authenticate with Perplexity**

1. Go to [Perplexity’s API reference](https://docs.perplexity.ai/reference/post_chat_completions). 
2. Add your API Key to the Authorization window
    
    ![Untitled](Authentication%20Guide%20Perplexity%20e925c5c4cdb443b28e7c28bb26e8245e/Untitled%202.png)
    
3. Hit `Try It!`, you should get a content response.
    
    ![Untitled](Authentication%20Guide%20Perplexity%20e925c5c4cdb443b28e7c28bb26e8245e/Untitled%203.png)
    

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://api.perplexity.ai`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `Authorization`
    - Header Auth Value Pattern: `Bearer %s`
    - Api Key: `{{your_api_key}}`
2. Define your API action for chat completion.
    
    ```bash
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
    ```
    
    - Path: `/chat/completions`
    - Method: `POST`
    - Request Body:
        
        ```json
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
        ```
        
    - Headers:
        
        
        | Key | Value |
        | --- | --- |
        | accept | application/json |
        | content-type | application/json |
3. Test your setup in Agent Studio and look for a successful execution.
    
    ![Untitled](Authentication%20Guide%20Perplexity%20e925c5c4cdb443b28e7c28bb26e8245e/Untitled%204.png)
    

# **Congratulations!**

You've successfully integrated Perplexity’s API with Agent Studio. You can now access their LLMs from Agent Studio.
