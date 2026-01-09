---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/microsoft-graph/logo.png
name: Microsoft Graph
- General
---

# Introduction

The Microsoft Graph API allows you to access all your Microsoft data through one unified API. 

In this guide, we will demonstrate how to authenticate with the Microsoft Graph API from Agent Studio. We will walk through identifying permissions needed, creating a Microsoft Graph API key with those permissions, testing an endpoint in Postman, and connecting it to Agent Studio.

# Prerequisites

- Admin Access to Microsoft Tenant ([Get an Instant Sandbox](https://developer.microsoft.com/en-US/microsoft-365/dev-program))
- [Postman](https://www.postman.com/downloads/) or your API tester of choice

# Steps

## Step 1: Identify Permissions Needed

1. Open the [Graph API Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer)
2. Find the APIs you want to use. 
3. Click on the **Modify permissions** tab. There, you’ll see the permissions you need to create an API key for.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Untitled.png)
    

## Step 2: Get an API Key

### Grant Permissions

1. Open [App Registrations in the Azure Portal](https://portal.azure.com/#view/Microsoft_AAD_RegisteredApps/ApplicationsListBlade)
2. Register an **Agent Studio** app, or select an existing one.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/image.png)
    
3. Under **API permissions**, click **Add a permission**, then add the permissions you identified in the previous step.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/image%20copy.png)
    
4. Click **Grant admin consent for {Tenant}**. This formally assigns the entitlements to your API key.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Untitled%203.png)
    

### Create Key

1. Create a **client secret** and jot it down.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/image%20copy%202.png)
    
2. Note the app & tenant IDs from your App Overview
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/image%20copy%203.png)
    

## Step 3: Test in Postman

1. Craft your cURL import, replace the values as needed
    
    ```bash
    curl --location 'https://login.microsoftonline.com/{{tenant_id}}/oauth2/token' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode 'client_id={{application_id}}' \
    --data-urlencode 'client_secret={{client_secret}}' \
    --data-urlencode 'resource=https://graph.microsoft.com' \
    --data-urlencode 'grant_type=client_credentials'
    ```
    
2. Import to Postman (using **Import**)
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Untitled%206.png)
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Untitled%207.png)
    
3. Execute the API call and get an **access_token**. You’ll use this to authenticate the actual actions you want to take.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Untitled%208.png)
    
4. Use the API endpoint from the graph explorer in Postman. Make sure you pass your new access token as a “Bearer Token” to the Graph API.
    
    ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Untitled%209.png)
    

## Step 4: Connect to Agent Studio

1. In Agent Studio, create a new **HTTP Action** and Test it.
   - Go to Agent Studio -> **Actions** -> **HTTP Actions** -> **Create**

      ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted%20Graphic.png)

      ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted%20Graphic%201.png)
   
   - Click on **Create New Connector** and fill the following information.
        - **Base Url:** https://graph.microsoft.com/v1.0
        - **Name:** Name Accordingly
        - **Description:** Give a Suitable Description.
        - **Auth Config:** Oauth2
        - **OAuth Grant Type:** Client Credentials Grant
        - **Client ID:** {{application_id}}
        - **Client Secret:** {{client_secret}}
        - **OAuth Token Url:** https://login.microsoftonline.com/{{tenant_id}}/oauth2/token
        - **OAuth2 Client Authorization:** OAuth 2.0 with Request Body
        - **Oauth2 Custom Oauth Request Options Additional Request Data:**
            - resource : https://graph.microsoft.com
            - grant_type : client_credentials
  
        ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted_Graphic_2.png)
   
        ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted_Graphic_3.png)
   
        ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted_Graphic_4.png)
   
3. Add your API details and Test.
    - Fill the endpoint as : **/users/{{your_email}}**
    - Enter your email in the url.
    - Click Test
   
      ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted_Graphic_6.png)

      ![Untitled](Authentication%20Guide%20Microsoft%20Graph%20API%20822c8b4935bd47a6b7b5c633bd75a3a6/Pasted_Graphic_7.png)

# Congratulations!

You just connected your Microsoft Graph API to Agent Studio.
