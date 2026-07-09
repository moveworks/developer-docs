---
availability: VALIDATED
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/servicenow-integration-logo-primary.svg
name: ServiceNow
---

# Introduction

ServiceNow provides granular table-level access to its data as part of its service management capabilities. This guide will walk through how you can connect your ServiceNow instance to Moveworks Agent Studio through:

1. [OAuth 2.0 Authorization Code Grant Flow (User Consent Auth)](https://marketplace.moveworks.com/connectors/servicenow#oauth-2-0-authorization-code)
2. [OAuth 2.0 Client Credentials Grant Flow (System Integration User)](https://marketplace.moveworks.com/connectors/servicenow#oauth-2-0-with-client-credentials)
3. [Basic Auth](https://marketplace.moveworks.com/connectors/servicenow#basic-auth)
4. [Webhook Connection](https://marketplace.moveworks.com/connectors/servicenow#webhook-connection)

# Prerequisites

- Access to a ServiceNow Instance (Sandbox or Production)
- [Install Postman](https://www.postman.com/downloads/) (used for testing the Client Credentials and Basic Auth flows)

# OAuth 2.0 Authorization Code

*Authorization Code Grant Flow — User Consent Auth*

With the **Authorization Code Grant** flow, each end user consents to Moveworks accessing ServiceNow on their behalf. Moveworks then acts as that individual user, so every ServiceNow API call respects that user's own roles and table-level permissions. This guide walks through setting up user consent auth end to end:

1. Register an OAuth application in ServiceNow
2. Set up the Moveworks HTTP Connector
3. Test & validate the connection

> ⚠️ **Prerequisite:** You'll need **admin access** to your ServiceNow instance to register the OAuth application.

## Step 1: Register an OAuth application in ServiceNow

1. Login to your ServiceNow instance as an admin
2. Navigate to System OAuth → Application Registry

    ![Application Registry](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-app-registry.png)

3. Create a new record and select the New Inbound Integration Experience option.

    ![New Inbound Integration Experience](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-new-inbound-integration.png)

4. Create a New Inbound Integration.
5. Select the OAuth - Authorization Code Grant auth type

    ![Select the Authorization Code Grant auth type](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-select-auth-code-grant.png)

6. Enter the app name, add the provider as Moveworks, and define the redirect URL — this will be the redirect URL for your org, in this format: `https://{org-name}.moveworks.com/auth/oauthCallback`

    ![App name, provider and redirect URL](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-app-details-redirect-url.png)

7. Configure required scopes within the OAuth application for users to access info via different ServiceNow API endpoints. You can also limit auth to specific APIs only.

    ![Configure required scopes](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-configure-scopes.png)

8. Under Advanced Settings, you can also set an expiry for the access token and refresh token issued to end users. This is completely optional.

    ![Advanced Settings token expiry](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-advanced-settings-expiry.png)

> 🔐 **Copy the following info securely before saving the integration on ServiceNow:**
>
> - Client ID
> - Client Secret
> - Scopes

## Step 2: Set up the Moveworks HTTP Connector

1. Login to your Moveworks instance and navigate to HTTP connectors
2. Create a new connector, and provide the following info:
    - Connector Name
    - Display Name (a friendly user visible name for the connector)
    - Display Description
    - Base URL of the ServiceNow instance you want to connect with — the base URL can be inferred from the ServiceNow instance web URL, in the format: `https://{org-name}.service-now.com`
    - Auth Config as OAuth2
    - OAuth2 Grant Type as Authorization Code Grant
    - Authorization URL (in format `https://{org-name}.service-now.com/oauth_auth.do`)
    - Client ID from ServiceNow OAuth app
    - Client Secret from ServiceNow OAuth app (needs to be tabbed)
    - Authorization Code Grant Scope from ServiceNow OAuth app (each scope separated by space: ex → useraccount kb_articles_read kb_articles_write)
    - OAuth2 Token URL (same as Authorization URL)

    ![HTTP Connector configuration](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-http-connector-config-1.png)

    ![HTTP Connector configuration continued](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-http-connector-config-2.png)

3. Save the HTTP Connector on Moveworks

## Step 3: Test & validate the connection

1. Go to Agent Studio → HTTP Action editor
2. Import the following API curl, we will use it to test the newly created connector

    ```bash
    curl -X GET \
    "https://<your-instance>.service-now.com/api/now/table/incident?sysparm_limit=1" \
    -H "Authorization: Bearer <your_access_token>" \
    -H "Accept: application/json"
    ```

3. Under the HTTP action editor, once the cURL is imported, go to Connector, and select the newly created HTTP connector

    ![Select the newly created HTTP connector](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-select-connector.png)

4. Name the HTTP Connector, provide a description and save the HTTP Connector.
5. Once done, under the Connector section, click on "Generate Token"

    ![Generate Token](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-generate-token.png)

6. You will be redirected to the logged-in ServiceNow instance to grant consent to specific scopes before you authorize. Once logged in, click on Allow.

    ![Grant consent and click Allow](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-consent-allow.png)

7. You will get a callback request successful message once the authorization goes through. This means that the test run is successful.

    ![Callback request successful](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-callback-success.png)

8. Go back to the HTTP action editor on Agent Studio and check the status of the connector. You should now see a token authorized state against the connector with other details.

    ![Token authorized state](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-token-authorized.png)

9. You can now test the HTTP action and verify it works by checking for a 200 success code and a valid API response.

    ![200 success response](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-UCA-test-success.png)

10. Your connector is now configured and validated. You can start using it to build plugins on Agent Studio.

# OAuth 2.0 with Client Credentials

*Client Credentials Grant Flow — System Integration User*

## Step 1: Register OAuth 2.0 API Client

1. Go to the [ServiceNow Developer Portal](https://developer.servicenow.com/dev.do)
2. Follow [Step 1](#step-1-get-your-developer-username-and-password) of the Basic Auth step to get your `instance name`, `username`, and `password`. These will be used shortly
3. Navigate to **Application Registry** (System OAuth > Application Registry).
    
    ![Screenshot 2024-03-07 at 8.33.31 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.33.31_AM.png)
    
4. Click on "**New**" and select "**Create an OAuth API endpoint for external clients**".
    
    ![Screenshot 2024-03-07 at 8.34.00 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.34.00_AM.png)
    
    ![Screenshot 2024-03-07 at 8.34.12 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.34.12_AM.png)
    
5. Fill out the form according to your requirement and click "**Submit**". If you are unsure then populating the "**Name**" field will suffice. 
    
    ![Screenshot 2024-03-07 at 8.35.19 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.35.19_AM.png)
    
6. Note down the **`Client ID`** and **`Client Secret`** as they will be used later.

## Step 2: Test with Postman (or another API client)

1. Set up your request in Postman with your instance name,  `username`, `password`, `client_id`, and `client_secret`
    
    Auth for OAuth 2.0
    
    ```bash
    curl --location 'https://{{instance_name}}.service-now.com/oauth_token.do' \
    	--header 'Content-Type: application/x-www-form-urlencoded' \
    	--user '{{username}}':'{{password}}'
    	--data-urlencode 'grant_type=password' \
    	--data-urlencode 'client_id={{client_id}}' \
    	--data-urlencode 'client_secret={{client_secret}}' \
    	--data-urlencode 'username={{username}}' \
    	--data-urlencode 'password={{password}}'
    ```
    
2. Import this curl into postman, substituting with values that you have saved from previous steps, and execute it. You should receive a response similar to below with both Access and Refresh Tokens

![Screenshot 2024-03-07 at 8.42.07 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.42.07_AM.png)

## Step 3: Integrate with Agent Studio

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://{{instance_name}}.service-now.com`
    - Auth Config: `OAuth 2.0`
    - Grant Type: `Password Grant`
    - Oauth2 Custom Oauth Response Response Type: `json`
    - Under Oauth2 Custom Oauth Request Options Additional Request Data:
        - `grant_type`: `password`
        - `username`:  `username` from previous steps
        - `password`: `password` from previous steps
        - `client_id`: `client_id` from previous steps
        - `client_secret`: `client_secret` from previous steps

# Basic Auth

## Step 1: Get your developer username and password

1. If you’re using a personal developer instance
    1. Go to the [ServiceNow Developer Portal](https://developer.servicenow.com/dev.do)
    2. Click on your avatar > `Manage Instance Password`
        
        ![Untitled](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Untitled.png)
        
    3. Save your `Instance name`, `Username`, and `Password`
        
        ![Screenshot 2024-02-29 at 8.58.42 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-02-29_at_8.58.42_AM.png)
        
2. If you’re using a production or implementation tenant owned by your organization
    1. Create a service account user (`username` & `password`), note it down
    2. Your instance name is the prefix of your URL: `https://{{instance_name}}.service-now.com`

## Step 2: Grant the appropriate permissions for your service account

Follow steps in our help site to grant the necessary roles/permissions required to execute the API calls:

[https://docs.servicenow.com/bundle/tokyo-platform-administration/page/administer/roles/reference/r_BaseSystemRoles.html](https://docs.servicenow.com/bundle/tokyo-platform-administration/page/administer/roles/reference/r_BaseSystemRoles.html)

## Step 3: Test with Postman (or another API client)

1. Set up your request in Postman with your instance name,  `username` and `password`. 
    
    **Test for Basic Auth (username / password)**
    
    ```bash
    curl "https://{{instance_name}}.service-now.com/api/now/table/problem
    	?sysparm_limit=1" \
    	--request GET \
    	--header "Accept:application/json" \
    	--user '{{username}}':'{{password}}'
    ```
    
2. After execution of the API request, you should get a successful response of your user information.
    
    ![Screenshot 2024-03-07 at 8.29.20 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.29.20_AM.png)
    

## Step 4: Integrate with Agent Studio

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://{{instance_name}}.service-now.com`
    - Auth Config: `Basic Auth`
    - Username: `username` from previous steps
    - Password: `password` from previous steps
    
    ![Screenshot 2024-03-07 at 8.53.03 AM.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Screenshot_2024-03-07_at_8.53.03_AM.png)
    
2. Define your API action for looking up from servicenow tables.
    
    ```bash
    curl "https://{{instance_name}}.service-now.com/api/now/table/problem
    	?sysparm_limit=1" \
    	--request GET \
    	--header "Accept:application/json" \
    	--user '{{username}}':'{{password}}'
    ```
    
    - Path: `/api/now/table/problem`
    - Method: `GET`
    - Query param
        
        
        | Key | Value |
        | --- | --- |
        | sysparm_limit | 1 |
3. Test your setup in Agent Studio and look for a successful execution.
    
    ![Untitled](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Untitled%201.png)

# Webhook Connection
## What you’re connecting & installing

- **ServiceNow** **Workflow Studio (Flow Designer)** can send REST API calls to an endpoint URL you provide, using our Moveworks Webhook Action. Payloads are sent as **REST over HTTP(S);** you can choose between two types of auth methods.
    - API Key
    - OAuth 2.0
- **Moveworks Listener** is your HTTPS webhook endpoint. You’ll create a listener URL and secure it with an API Key.
- Install the update set in your ServiceNow instance.
    
    [moveworks-webhook-action.xml](https://raw.githubusercontent.com/moveworks/developer-docs/refs/heads/main/connectors/servicenow/Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/moveworks-webhook-action.xml)
    

## Create a Moveworks Listener (UI steps)

In **Agent Studio → Listeners**:

1. **Create Listener** → copy the **Webhook URL** (you’ll paste this into ServiceNow’s **Endpoint URL**). 
2. **Verification (secure your listener)**
    - **Credential Verification** → Check **Enable Credential Verification** (purple checkbox in the screenshot).
    
    ![CleanShot 2025-10-05 at 16.36.23@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-Verification.png)
    
3. **Create the credential (API Key)**
    - Click **Create a New Credential** (link on the right of the Verification section) or go to **Moveworks setup** → credentials
    - In the credential dialog:
        - **Type:** API Key.
        - **Name:** something explicit, e.g. `ServiceNow_API_Key`.
        - Submit
        
        ![CleanShot 2025-10-05 at 16.34.13@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-credential.png)
        
    - Copy the API Key. It is only shown once

## Configure ServiceNow Workflow Studio to call Moveworks

## Set Up Credentials

### Create Credential Alias

1. Head to **IntegrationHub → Connection & Credentials → Connection & Credentials Aliases**
2. Click on **New**  to create a new credential
3. Fill the fields:
    1. Name: `Moveworks Credentials`
    2. Type: `Credential`
4. Submit

![CleanShot 2025-10-05 at 16.42.18@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-cred2.png)

### Create Credential inside Alias

1. Click on your newly created alias `Moveworks Credentials`
2. Click **New** in the credentials table within the alias record
    
    ![CleanShot 2025-10-05 at 16.44.51@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-alias.png)
    
3. Select **API Key Credentials**
4. Fill the fields:
    1. Name: `Moveworks_API_Key`
    2. API Key: **`PASTE YOUR API KEY`**
5. Submit

![CleanShot 2025-10-05 at 16.51.18@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/Snow-submit.png)

## Set up Moveworks Action in your flow

In your Workflow Studio Flow:

1. Add the `Moveworks Webhook Sender` Action installed by the update set
    
    ![CleanShot 2025-10-05 at 16.55.15@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-action.png)
    
2. Enter the information in the fields
    1. URL: `YOUR_LISTENER_URL`
    2. Payload: `YOUR_CUSTOM_PAYLOAD`
    3. Credential: `YOUR_CREDENTIAL_ALIAS`

![CleanShot 2025-10-05 at 16.59.58@2x.png](Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/SNOW-fields.png)

# Congratulations!

You've successfully integrated ServiceNow’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your ServiceNow environment.
