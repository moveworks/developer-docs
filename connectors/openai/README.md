---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/openai/logo.png
name: OpenAI
---

# **Introduction**

OpenAI offers a comprehensive set of APIs that allow developers to integrate advanced AI capabilities into their applications. To maintain security and ensure only authorized access, OpenAI requires authentication for all API requests. This guide will walk you through the process of authenticating with OpenAI's APIs and test it in Agent Studio.

# **Prerequisites**

- An OpenAI account. If you do not have one, you can create an account at **[OpenAI](https://openai.com/)**.
- [Install Postman](https://www.postman.com/downloads/)

# Walkthrough

We will be following the [Authentication method](https://platform.openai.com/docs/api-reference/authentication) used by OpenAI to create an API Key and authenticate our API calls.

## **Step 1: Generate an API Key**

1. Go to the [OpenAI's Documentation](https://platform.openai.com/docs/overview) and login using the account you created.
2. Click on `API Keys` after hovering over the left navigation bar
    
    ![OpenAI API Home Page](Authentication%20Tutorial%20OpenAI%20c764b9c442a64a469cc4c80d60f54190/Untitled.png)
    
3. Click on `Create new secret key` 
    
    ![OpenAI API Keys Page](Authentication%20Tutorial%20OpenAI%20c764b9c442a64a469cc4c80d60f54190/Untitled%201.png)
    
4. Set the name of the Secret key and the permissions based on your requirement. Then click on `Create secret key` .
    
    ![Create New Secret Key](Authentication%20Tutorial%20OpenAI%20c764b9c442a64a469cc4c80d60f54190/Untitled%202.png)
    
5. Copy and save the secret key in a safe and accessible place.
    
    ![Save Secret Key](Authentication%20Tutorial%20OpenAI%20c764b9c442a64a469cc4c80d60f54190/Untitled%203.png)
    

## **Step 2: Test with Postman**

1. Set up your request in Postman with your `API Key`.
    
    ```bash
    curl https://api.openai.com/v1/models \
      -H "Authorization: Bearer $OPENAI_API_KEY"
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of your user information.
    
    ![Postman Successful Response](Authentication%20Tutorial%20OpenAI%20c764b9c442a64a469cc4c80d60f54190/Untitled%204.png)
    

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://api.openai.com`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `Authorization`
    - Header Auth Value Pattern: `Bearer %s`
    - Api Key: `{{OPENAI_API_KEY}}`
2. Define your API action for fetching OpenAI models.
    
    ```bash
    curl https://api.openai.com/v1/models \
      -H "Authorization: Bearer $OPENAI_API_KEY"
    ```
    
    - Path: `/v1/models`
    - Method: `GET`
3. Test your setup in Agent Studio and look for a successful execution.
    
    ![Untitled](Authentication%20Tutorial%20OpenAI%20c764b9c442a64a469cc4c80d60f54190/Untitled%205.png)
    

# **Congratulations!**

You've successfully integrated OpenAI’s API with Agent Studio. This opens up a variety of AI automation and integration possibilities within your Moveworks bot.
