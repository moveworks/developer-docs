---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/perplexity/logo.png
name: Workato
- General
---

# Introduction

Workato is a low-code, no-code tool that allows you to build “recipes” as custom APIs.

In this guide, we will demonstrate how to trigger a Workato API endpoint from Agent Studio and return data back to Agent Studio. We will walk through creating & publishing a recipe, testing it in Postman, and connecting it to Agent Studio.

We are going to build a simple “Reverse Echo” API that returns the value sent to the API, but backwards.

# Prerequisites

- Workato Account with Workato API Platform

# Walkthrough

## Step 1: Setup Trigger

1. Create a new recipe
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled.png)
    
    - **Name:** `EchoReverse`
    - **Starting Point:** `Build an API endpoint`
2. In your trigger configuration, click `Use JSON` under 
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%201.png)
    
3. Provide the sample payload, then click `Generate Schema`
    
    ```json
    {
    	"name": "Luke"
    }
    ```
    
4. Add a response for the reversed name
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%202.png)
    

## Step 2: Implement Recipe

1. Add an action to your recipe to `Create variable`, we’ll calculate the reversed name and store it here.
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%203.png)
    
2. Create a new variable (`Reversed Name`), and enter `Formula` mode.
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%204.png)
    
3. Calculate the reverse of the input string using Workato formulas
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%205.png)
    
4. Return the value in the API Response. Select the Trigger response you configured above and pass the `Reversed Name` value 
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%206.png)
    
5. Save the recipe.
6. Exit the recipe editor and start the recipe.
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%207.png)
    

## Step 3: Connect to an API Endpoint

1. Go to [API Collections](https://app.workato.com/api_management/groups), select your API collection, and click `Create new endpoint`
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%208.png)
    
2. Set up your endpoint
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%209.png)
    
    - Name: `Reverse Echo`
    - Recipe: `Reverse Echo` this is the recipe we created in steps 1 & 2
    - Endpoint Path: `reverse-echo`
    - HTTP method: `POST`
3. Mark the endpoint as active
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2010.png)
    

## Step 4: Create an API Key

1. Go to [API Clients](https://app.workato.com/api_management/clients), create a new client. This is how you will authenticate with Moveworks.
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2011.png)
    
2. Create an Access Profile
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2012.png)
    
3. Setup the access profile
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2013.png)
    
    - Name: Any
    - API Collections: Select the API collection where you created your endpoint
    - Authentication Method: Use `Auth Token` for this guide.
4. Copy your access token & save it for future use
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2014.png)
    

## Step 5: Test in Postman

1. Go back to your API endpoint & copy the endpoint URL
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2015.png)
    
2. Build a cURL request to import to Postman
    
    ```bash
    curl --location '{{recipe_url}}' \
    --header 'Content-Type: application/json' \
    --header 'api-token: {{access_token}}' \
    --data '{
        "name": "Luke"
    }'
    ```
    
3. Run your request. It should return the name you provided, but reversed!
    
    ![Untitled](Authentication%20Guide%20Workato%20c6344fa56dd748e9bc3f0c58d1abe8d3/Untitled%2016.png)
    

## Step 6: Connect to Agent Studio

1. In your API editor, create a new connector. You can read more about the supported auth types on [our connector reference](https://developer.moveworks.com/creator-studio/connector-configuration/).
    - Base Url: `https://apim.workato.com`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `api-token`
    - API Key: `{{access_key}}`
2. Add your API details. You can read more about setting up API actions from our [API configuration reference](https://developer.moveworks.com/creator-studio/api-configuration/).
    
    ```bash
    curl --location '{{base_url}}/mw/ajay-merchia-vv1/reverse-echo' \
    --data ''
    ```
    
    - Path: `/{{workato_tenant_name}}/{{collection_name}}/{{endpoint_name}}`
    - Method: `POST`
    - Body:
        
        ```json
        {
          "name": "{{query}}"
        }
        ```
        
    - Example Value: `Luke`
3. Hit test & celebrate!
    
    ```json
    {
        "reversed_name": "ekuL"
    }
    ```
    

# Congratulations!

You just connected your first Workato API to Agent Studio.