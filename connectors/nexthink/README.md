---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/nexthink/logo.png
name: Nexthink
solution_tags:
- General
---

# **Introduction**

Accessing features using the Nexthink APIs gives you the flexibility to create integrations from external third-party tools. Using APIs helps remove complexity, as IT teams do not have to access multiple consoles to carry out their work. This guide will demonstrate how to create API credentials, authenticate with Nexthink’s API, and test it in Agent Studio.

# **Prerequisites**

- Access to a Nexthink workspace
- [Install Postman](https://www.postman.com/downloads/)

# Walkthrough

To set up an integration with a Nexthink API, you must first create a set of API credentials for your instance that Agent Studio will use to access the API and send requests.

## **Step 1: Create API Credentials**

1. Log in to the Nexthink web interface.
2. Select **Administration** from the main menu.
3. Click on **API credentials** in the navigation panel from the Account Management section.
    
    ![Untitled](Authentication%20Tutorial%20Nexthink%20f0799a5634704e0587dead9284041f00/Untitled.png)
    
4. Click on the **New OAuth client credentials** button located in the top-right of the API credentials page.
    
    ![Untitled](Authentication%20Tutorial%20Nexthink%20f0799a5634704e0587dead9284041f00/Untitled%201.png)
    
5. Fill up the details based on the below instructions:
    - **Name**: provide a meaningful name for the credential. Nexthink recommends using the name of the application you are configuring to call the API.
    - **Description**: enter a description to inform users what applications and services use the credentials and why.
    - **Permissions**: select the features you want to enable the permissions for. Some permissions are related to features that may not be available to you, for example, features in technical preview or those not included in your license. For most starting Agent Studio use cases, enable the permissions check for the "Remote Actions API".
        - **Remote Actions API** Select the checkbox to send API calls to trigger and query remote actions.
        - **Enrichment API** Select the checkbox to send API calls to operate the enrichment feature.
        - **Campaigns API** Select the checkbox to send API calls to trigger campaigns.
        - **Workflows API** Select the checkbox to send API calls to trigger and query workflows.
        - **NQL API** Select the checkbox to send API calls to extract data from your Nexthink platform.
    - Click on **Save and generate credentials** to generate the credentials. A new modal appears with the OAuth client credentials.
        
        ![Untitled](Authentication%20Tutorial%20Nexthink%20f0799a5634704e0587dead9284041f00/Untitled%202.png)
        

1. For security reasons, the credentials appear only once. Copy and save them securely, as you cannot access them beyond this point.
    
    ![Untitled](Authentication%20Tutorial%20Nexthink%20f0799a5634704e0587dead9284041f00/Untitled%203.png)
    

## **Step 2: Test with Postman**

1. Set up your request in Postman with your `API Credentials`.
    
    ```bash
    curl --location --request POST 'https://{{nexthink_instance}}.api.{{region}}.nexthink.cloud/api/v1/token' 
    		 --header 'Authorization: Basic <Base64 encoded {{nexthink_clientId}}:{{nexthink_clientSecret}}>'
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of generating an access token.
    
    ![Untitled](Authentication%20Tutorial%20Nexthink%20f0799a5634704e0587dead9284041f00/Untitled%204.png)
    
3. Try using this generated `access_token` to execute the following API to check if it has the correct access.
    
    ```bash
    curl --request GET 'https://{{nexthink_instance}}.api.{{region}}.nexthink.cloud/api/v1/workflows' \
      --header 'Accept: application/json' \
      --header 'Authorization: Bearer {{access_token}}'
    ```
    
    ![Untitled](Authentication%20Tutorial%20Nexthink%20f0799a5634704e0587dead9284041f00/Untitled%205.png)
    

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://{{nexthink_instance}}.api.{{region}}.nexthink.cloud`
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Client Credentials Grant`
    - Client ID: `{{nexthink_clientId}}`
    - Client Secret: `{{nexthink_clientSecret}}`
    - Oauth2 Token Url: `https://{{nexthink_instance}}.api.{{region}}.nexthink.cloud/api/v1/token`
    - Oauth2 Client Authentication: `OAuth 2.0 with Basic Auth Header set to username and password`
2. Define your API action for listing workflows.
    
    ```bash
    curl --request GET 'https://{{nexthink_instance}}.api.{{region}}.nexthink.cloud/api/v1/workflows' \
      --header 'Accept: application/json' \
      --header 'Authorization: Bearer {{access_token}}'
    ```
    
    - Path: `/api/v1/workflows`
    - Method: `GET`
3. Test your setup in Agent Studio and look for a successful execution.
    
    ```bash
    
    [
    	{
    		"id": "license_reclamation",
    		"lastUpdateTime": "2023-12-07T16:26:36Z",
    		"name": "License reclamation",
    		"status": "ACTIVE",
    		.....
    	}
    ]
    ```
    

# **Congratulations!**

You've successfully integrated Nexthink’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your Nexthink workspace.
