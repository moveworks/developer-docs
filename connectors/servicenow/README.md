---
accreditations:
- indrapaul24
- DEFAULT
availability: VALIDATED
difficulty_level: INTERMEDIATE
fidelity: GUIDE
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/servicenow-integration-logo-primary.svg
name: ServiceNow
time_in_minutes: 30
---

# **Introduction**

ServiceNow provides granular table-level access to its data as part of its service management capabilities. This guide will walk through how you can connect your ServiceNow instance to Moveworks Agent Studio through:
1. [Webhook Connection](https://marketplace.moveworks.com/connectors/servicenow#connect-with-basic-authentication)
2. [Basic Auth](https://marketplace.moveworks.com/connectors/servicenow#connect-with-basic-authentication)
3. [OAuth 2 credentials](https://marketplace.moveworks.com/connectors/servicenow#connect-with-oauth-2-0)

# **Prerequisites**

- Access to a ServiceNow Instance (Sandbox or Production)
- [Install Postman](https://www.postman.com/downloads/)

# Webhook Connection
## What you’re connecting & installing

- **ServiceNow** **Workflow Studio (Flow Designer)** can send REST API calls to an endpoint URL you provide, using our Moveworks Webhook Action. Payloads are sent as **REST over HTTP(S);** you can choose between two types of auth methods.
    - API Key
    - OAuth 2.0
- **Moveworks Listener** is your HTTPS webhook endpoint. You’ll create a listener URL and secure it with an API Key.
- Install the update set in your ServiceNow instance.
    
    [moveworks-webhook-action.xml](https://raw.githubusercontent.com/moveworks/developer-docs/refs/heads/main/connectors/servicenow/Authentication%20Tutorial%20ServiceNow%20v2%20bf9283817e704a4385a4c5e8ffe8859e/moveworks-webhook-action.xml)
    

## 2) Create a Moveworks Listener (UI steps)

In **Agent Studio → Listeners**:

1. **Create Listener** → copy the **Webhook URL** (you’ll paste this into SAP’s **Endpoint URL**). 
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

## 3) Configure Service Workflow Studio to call Moveworks

## Set  Up Credentials

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

# **Connect with Basic Authentication**

## **Step 1: Get your developer username and password**

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

## **Step 3: Test with Postman (or another API client)**

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
    

## **Step 4: Integrate with Agent Studio**

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
    

# Connect with OAuth 2.0

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

## **Step 3: Test with Postman (or another API client)**

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

## **Step 3: Integrate with Agent Studio**

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

# **Congratulations!**

You've successfully integrated ServiceNow’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your ServiceNow environment.
