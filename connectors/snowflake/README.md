---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/snowflake/logo.png
name: Snowflake
---

# **Introduction**

Connecting Snowflake to Agent Studio allows for robust data management, analysis, and integration capabilities by leveraging Snowflake's powerful cloud data platform within Agent Studio's automation and workflow environment. This guide will walk you through the process of using OAuth for secure authentication, detailing how to configure OAuth clients in Snowflake, obtain necessary credentials, and establish a secure connection within Agent Studio. By following these steps, you'll enable seamless data workflows that optimize your data-driven projects with efficiency and security.

# **Prerequisites**

- ACCOUNTADMIN access to your Snowflake instance to create OAuth clients and roles
- [Install Postman](https://www.postman.com/downloads/)

# Walkthrough

Snowflake enables OAuth for clients through integrations. An integration is a Snowflake object that provides an interface between Snowflake and third-party services. Administrators configure OAuth using a [Security integration](https://docs.snowflake.com/en/user-guide/admin-security-fed-auth-security-integration), which enables clients that support OAuth to redirect users to an authorization page and generate access tokens (and optionally, refresh tokens) for accessing Snowflake.

Snowflake supports the [OAuth 2.0](https://oauth.net/2/) protocol for authentication and authorization using one of the options below:

- [Snowflake OAuth](https://docs.snowflake.com/en/user-guide/oauth-snowflake-overview)
- [External OAuth](https://docs.snowflake.com/en/user-guide/oauth-ext-overview)

For this tutorial, we are going to use the [Custom client integration](https://docs.snowflake.com/en/user-guide/oauth-custom) under the Snowflake OAuth to connect Agent Studio to your Snowflake instance.

## **Step 1: Preparing Snowflake for OAuth**

> 💡 Hitting `cmd + enter` while highlighting a given block in Snowflake ensures you only attempt to execute the highlighted block.


1. Create a Custom Client Integration in Snowflake
    1. Navigate to the Snowflake Web Interface, switch to the **`Worksheets`** tab and create a new SQL Worksheet to run the following SQL statement for creating an OAuth Security Integration using the [CREATE SECURITY INTEGRATION](https://docs.snowflake.com/en/sql-reference/sql/create-security-integration-oauth-snowflake) command:
        
        ```sql
        CREATE or REPLACE SECURITY INTEGRATION oauth_moveworks_connector
          TYPE = OAUTH
          ENABLED = TRUE
          OAUTH_CLIENT = CUSTOM
          OAUTH_CLIENT_TYPE = 'CONFIDENTIAL'
          OAUTH_REDIRECT_URI = 'https://localhost.com'
          OAUTH_ISSUE_REFRESH_TOKENS = TRUE
        ```
        
        > **Note:**
        > - Only account administrators (users with the ACCOUNTADMIN role) or a role with the global CREATE INTEGRATION privilege can execute this SQL command.
        > - The Refresh Tokens generated are valid for a preiod of [90 days by default](https://docs.snowflake.com/en/sql-reference/sql/alter-security-integration-oauth-snowflake#snowflake-oauth-partner-application-parameters). **Please follow the Authentication process from Step 1.2 (Retrieve the OAuth details for client configuration) onwards to re-generate the refresh tokens after every 90 days, manually.**
    2. You will see the following confirmation if everything is correctly set up:
        
        ![Untitled](Authentication%20Tutorial%20Snowflake%2080f48383283545edaa968ced07eacca3/Untitled.png)
        
2. Retrieve the OAuth details for client configuration
    1. Describe the above Security Integration and note down the below details, they will be used in the following steps:
        - `OAUTH_CLIENT_ID`
        - `OAUTH_REDIRECT_URI`
        - `OAUTH_AUTHORIZATION_ENDPOINT`
        - `OAUTH_TOKEN_ENDPOINT`
        
        ```sql
        DESCRIBE SECURITY INTEGRATION oauth_moveworks_connector;
        ```
        
    2. Note down the Client Secret by running the below command:
        
        ```sql
        SELECT SYSTEM$SHOW_OAUTH_CLIENT_SECRETS('OAUTH_MOVEWORKS_CONNECTOR');
        ```
        
        > Note: You will get 2 secrets, note down either one.
        > 
3. Request an Auth Code Grant
    1. To request an Auth Code Grant, the client needs to hit the Authorization Endpoint by providing the required query parameters
    2. All the query parameters must be URL Encoded, an online tool like [urlencoder.io](https://www.urlencoder.io/) can be used for that purpose (this is not a recommendation, you can use any method to correctly encode the URL). Encode the below parameters that you gathered from the previous step
        1. `OAUTH_CLIENT_ID`
        2. `OAUTH_REDIRECT_URI`
    3. Prepare the Authorization URL in the below format
        
        ```bash
        <OAUTH_AUTHORIZATION_ENDPOINT>?response_type=code&client_id=<encoded value of OAUTH_CLIENT_ID>&redirect_uri=<encoded value of OAUTH_REDIRECT_URI>
        ```
        
    4. Go to your browser and hit the above Authorization URL. This URL will take you to the Login Window of your Snowflake account, a user must log in and the default role of the user must not be `ACCOUNTADMIN`, `SECURITYADMIN`, or `ORGADMIN`
    5. After successful authentication, the below message will appear for Consent. Please read it carefully to understand the operation that is being performed.
        
        ![Untitled](Authentication%20Tutorial%20Snowflake%2080f48383283545edaa968ced07eacca3/Untitled%201.png)
        
    6. After allowing the above consent, the Authorization URL would be redirected to the `OAUTH_REDIRECT_URI` location and you will be able to see the Auth Code Grant in the following format. Please note it may take some time:
    `https://localhost.com/?code=<.......81BB573502BB8C.....>`
    7. The code value is the **Auth Code Grant**, please note it down as it will be used in the next step to request an Access Token.

## **Step 2: Request Access Token and Refresh Token using Postman**

1. Now the client can request an Access Token by hitting the Token endpoint and providing the **Auth Code Grant** along with `OAUTH_CLIENT_ID` and `OAUTH_CLIENT_SECRET`
    
    ```bash
    curl --location '{{OAUTH_TOKEN_ENDPOINT}}' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --header 'Authorization: Basic <Base64 encoded {{OAUTH_CLIENT_ID}}:{{OAUTH_CLIENT_SECRET}}>' \
    --data-urlencode 'grant_type=authorization_code' \
    --data-urlencode 'code={{Auth Code Grant}}' \
    --data-urlencode 'redirect_uri={{OAUTH_REDIRECT_URI}}'
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of an `access_token` and a `refresh_token`.
    
    ![Untitled](Authentication%20Tutorial%20Snowflake%2080f48383283545edaa968ced07eacca3/Untitled%202.png)
    
    ![Untitled](Authentication%20Tutorial%20Snowflake%2080f48383283545edaa968ced07eacca3/Untitled%203.png)
    
    You will receive a response like the following:
    
    ```bash
    {
        "access_token": "ver:1-hint:8498279991--------------wGgCp++/eZK+",
        "refresh_token": "ver:2-hint:12967350277-di------------------------------IpYi//im1u+/N9Kd//+==",
        "token_type": "Bearer",
        "username": "<USERNAME>",
        "scope": "refresh_token session:role:PUBLIC",
        "refresh_token_expires_in": 86400,
        "idpInitiated": false,
        "expires_in": 600
    }
    ```
    
    This refresh_token will be your `OAUTH_REFRESH_TOKEN` for the next step.
    
3. Use the Refresh Token to create a new request to get the `access_token`.
    
    ```bash
    curl --location '{{OAUTH_TOKEN_ENDPOINT}}' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --header 'Authorization: Basic <Base64 encoded {{OAUTH_CLIENT_ID}}:{{OAUTH_CLIENT_SECRET}}>' \
    --data-urlencode 'grant_type=refresh_token' \
    --data-urlencode 'refresh_token={{OAUTH_REFRESH_TOKEN}}' \
    --data-urlencode 'redirect_uri={{OAUTH_REDIRECT_URI}}'
    ```
    
    ![Untitled](Authentication%20Tutorial%20Snowflake%2080f48383283545edaa968ced07eacca3/Untitled%204.png)
    
    You will receive a response like the following:
    
    ```bash
    {
        "access_token": "ver:2-hint:12967350277-di------------------------------IpYi//im1u+/N9Kd//+==",
        "token_type": "Bearer",
        "idpInitiated": false,
        "expires_in": 600
    }
    ```
    
    The `access_token` here is the one you can use to authenticate further API calls to your Snowflake instance.
    

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL:
        - This will be your Snowflake account URL
        - For example, you might use the endpoints `https://myorg-account_xyz.snowflakecomputing.com/oauth/authorize` and `https://myorg-account_xyz.snowflakecomputing.com/oauth/token-request`
        - `https://myorg-account_xyz.snowflakecomputing.com` will be the Base URL here
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Refresh Token Grant`
    - Client ID: `OAUTH_CLIENT_ID`
    - Client Secret: `OAUTH_CLIENT_SECRET`
    - Refresh Token Grant Refresh Token: `OAUTH_REFRESH_TOKEN`
    - Oauth2 Token Url: `OAUTH_TOKEN_ENDPOINT`
    - Oauth2 Client Authentication: `OAuth 2.0 with Basic Auth Header set to client id and client secret`
    - Oauth2 Custom Oauth Response Response Type: `Json`
    - Json Expires In Key: `expires_in`
    - Json Expires In Format: `CUSTOM_OAUTH2_EXPIRES_IN_FORMAT_SECONDS`
2. Define your API action for channel creation.
    
    ```bash
    curl --location '{{Base_URL}}/api/v2/statements' \
    --header 'Accept: application/json' \
    --header 'Authorization: Bearer {{snowflake_access_token}}' \
    --data '{
      "statement": "SHOW DATABASES;"
    }'
    ```
    
    - Path: `/api/v2/statements`
    - Method: `POST`
    - Request Body:
        
        ```json
        {
          "statement": "SHOW DATABASES;"
        }
        ```
        
    - Headers:
        
        
        | Key | Value |
        | --- | --- |
        | Accept | application/json |
3. Test your setup in Agent Studio and look for a successful execution.
    
    ```json
    
    {
    	"code": "*****",
    	"createdOn": 1716349584556,
    	"data": [
    		[
    			"***********",
    			"SNOWFLAKE",
    			"N",
    			"N",
    			....
    			....
    			....
    		]
    	]
    	...
    	...
    }
    ```
    

# **Congratulations!**

You've successfully integrated Snowflake’s API with Agent Studio. This opens up a variety of integration possibilities within your Snowflake workspace.