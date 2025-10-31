---
accreditations:
- indrapaul24
- DEFAULT
availability: VALIDATED
description: A connector that connects your SailPoint IIQ instance to Moveworks via
  Creator Studio.
difficulty_level: BEGINNER
fidelity: GUIDE
logo: https://yt3.googleusercontent.com/NWmnILK9J0wIIvMovo8CW2ror6OsnxWxNEXr5dIqC-qjpgnBuYTczRGmRBNS8PuwOnOg3alW=s900-c-k-c0x00ffffff-no-rj
name: Sailpoint IdentityIQ
time_in_minutes: 20
---

# Introduction

**SailPoint IdentityIQ** is a prominent leader in enterprise identity governance solutions, providing businesses with the necessary tools to manage digital identities securely and effectively.

This guide will demonstrate how to connect Sailpoint IdentityIQ to Agent Studio. In doing so, there are two ways you can proceed:
1. [Webhook](https://marketplace.moveworks.com/connectors/sailpoint-iiq#Webhook-Connection) - This is best when building ambient agents that are trigged from a system event inside of Sailpoint IIQ. 
2. [Oauth 2.0 with Client Credentials](https://marketplace.moveworks.com/connectors/sailpoint-iiq#OAuth-2.0-with-Client-Credentials) - This is best when you want to build user trigged agents that connect to SalpointIIQ.

# Webhook Connection
![Mermaid-Chart](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/Sailpoint-Mermaid.png)

## What you’re connecting

- **SailPoint Event Triggers** fire and forget HTTP POSTs to a URL you provide secured with a Moveworks Bearer Token).
    - [SailPoint Event Trigger Documentation](https://documentation.sailpoint.com/saas/help/common/event_triggers.html)
    - [Sailpoint Developer Trigger Documentation](https://developer.sailpoint.com/docs/api/beta/triggers)
- **Moveworks Listener** is your HTTPS endpoint where you’ll enforce auth (e.g., Bearer), optionally add payload validation/deduping, and route to a plugin/Compound Action. The Listener docs include verification, filtering, dedupe, and schema options.
    - [Moveworks Webhook Documentation](https://help.moveworks.com/docs/webhooks-listener)

## Step 1: Create the Moveworks Listener

In **Agent Studio → Listeners → Create new listener** :

1. **Open your Listener**
    - Copy your Webhook URL
    - In the Listener config page, scroll to **Verification**.
    - Check **Enable Credential Verification** (purple checkbox in the screenshot).

![Create-Listener](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/Sailpoint-Create-Listener.png)

2. **Create the credential (API token)**
    - Click **Create a New Credential** (link on the right of the Verification section) or go to **moveworks setup** → credentials
    - In the credential dialog:
        - **Type:** API Key
        - **Name:** something explicit, e.g. `sailpoint_webhook_bearer_prod`.
        - Submit
    - **Copy the token value now.** Many tenants show it only once. Store it in your secret manager if you need a backup.

![Create-Credential](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/Sailpoint-Create-Credential.png)

## Step 2: Subscribe in SailPoint (UI method)

**In SailPoint Admin → Event Triggers**

1. Pick a trigger → review its **Type**, **Input Schema** 
    
    ![Sailpoint-Trigger](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/Sailpoint-Create-Trigger.png)
    
2. **+ Subscribe** → **Subscription Type: HTTP**.
3. **Integration URL**: paste your Moveworks Listener URL.
4. **Authentication Type**: choose **Bearer Token** and paste the long-lived token you created in moveworks.
5. For **Request-Response** triggers, select **Response Type** (SYNC/ASYNC/DYNAMIC) and, if ASYNC, set **Response Deadline** in ISO-8601 (e.g., `PT1H`). SYNC is fixed at **10s**. We aren’t using this so SYNC is fine; for more advanced use cases you may use async and respond in your compound action logic.
6. (Optional) **Filter** with **Jayway JSONPath** to reduce noise (e.g., only identities in a business unit).
7. **Save** and **Enable**. You can **Test Subscription** from the UI. 

## Step 3: Subscribe via API (if you prefer code)
- **List triggers** to find the `triggerId`: `GET /triggers`.
- **Create subscription**: `POST /trigger-subscriptions` (HTTP subs include an `httpConfig` block in the POST).
- **Start a test event** (customizable): `POST /trigger-invocations/test`.
- **Monitor invocations**: `GET /trigger-invocations/status` (recent successes 24h, failures 48h, max 2000).

## Congratulations

You have successfully created a webhook connection between SailPoint IIQ and Agent Studio. This opens up a variety of automation and integration possibilities using your SailPoint IIQ instance.


---

# OAuth 2.0 with Client Credentials
## Prerequisites

- Sailpoint IIQ account with Admin privileges to create a new service account and setup API Authentication
- Your Sailpoint instance must be of version **8.1 or more** for our plugin to work correctly
- Your Sailpoint instance must either be deployed to Cloud or you should make the API endpoints available/accessible to Moveworks
- [Install Postman](https://www.postman.com/downloads/) for testing the API connection

## Set up SailPoint IIQ

Authentication with SailPoint’s API endpoints is done over an OAuth client whose capabilities are bound to the same permissions as our proxy user ([see Sailpoint’s docs](https://community.sailpoint.com/t5/IdentityIQ-Wiki/OAuth-2-0-client-credentials-as-a-token-based-protocol-for-API/ta-p/77630#toc-hId--1185039208)).

## (Optional) Step 1: Install the Moveworks for Sailpoint Plugin

On top of the capabilities that are supported via their native ReST APIs, to support additional abilities like pulling in identity and approvals information, and actioning on those approval requests, we have built a custom Sailpoint Plugin which installs a few extra APIs in your Sailpoint instance. If you are building a plugin that deals with either Identity or Approval Requests within SailPoint IIQ, we strongly suggest you to install the custom Sailpoint plugin and then utilize the APIs exposed for building your Agent Studio plugin.

All authentication with these endpoints is done over the same OAuth client as mentioned above.

> Please download the .ZIP file of the Moveworks Plugin before proceeding to configure.
> 
> [moveworks_plugin.zip](https://developer.moveworks.com/file-hosting/sailpoint/moveworks_plugin.zip)

1. Ensure that the plugin feature is enabled in IdentityIQ and that you have **System Administrator** or **Plugin Administrator** capabilities to install plugins.

2. Open the **Installed Plugins** page by selecting Plugins from the list under the gear icon.
    
    ![Installed Plugins](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/installed_plugins.png)
    

3. Click **New** to upload the plugin.
    
    ![New](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/new%20plugin.png)
    

4. **Click to upload your plugin**. A window dialog will appear. You can drag & drop our ZIP file from there.
    
    ![Upload](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/upload%20plugin.png)
    

5. Finish the plugin installation following the prompts in your Sailpoint Instance.

## Step 2: Set up OAuth API Client

1. Create an Identity for Moveworks. We recommend naming the account `svc.moveworks`.
    
    ![*Home Page → Create Identity*](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/create%20identity.png)

    *Home Page → Create Identity*

    
    ![*Fill out information on Create Identity Page*](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/identity%20fill%20up.png)
    
    *Fill out information on Create Identity Page*

2. Make sure the new service account has the appropriate user capabilities enabled. If you are installing the Moveworks for Sailpoint plugin, then make sure that the  `Moveworks Approvals Plugin Service Account` user capability is enabled.
    
    ![User cap](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/user%20capabilities.png)
    

3. Go to configure API Authentication.
    
    ![API Auth](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/API%20Auth.png)


4. Create a new API Client, setting the Proxy User to our service account.
    
    ![OAuth Client](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/new%20oauth%20client.png)


5. Note your `Client ID` and `Client Secret` - this will be required later to configure the Connector within Agent Studio

## Step 3: Test with Postman

Once you have all the required credentials from the above process, please move on to test the OAuth API and try to fetch the token.

1. [SailPoint IIQ OAuth Authentication API](https://community.sailpoint.com/t5/IdentityIQ-Wiki/OAuth-2-0-client-credentials-as-a-token-based-protocol-for-API/ta-p/77630#toc-hId--122537317): An API for SailPoint IIQ to request and receive Access token before invoking IdentityIQ or the Moveworks Plugin API.
    
    ```bash
    curl --location --request POST '{{sailpoint_url}}/identityiq/oauth2/token?grant_type=client_credentials' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --user '{{sailpoint_client_id}}:{{sailpoint_client_secret}}'
    ```
    
    Replace the `sailpoint_client_id` with the `Client ID` and `sailpoint_client_secret` with the `Client Secret` obtained from the previous step.
    
2. Import this request into Postman, replace the credentials and execute it. You should get a successful response and an access token.
    
    ![image.png](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/image.png)
    

## Step 4: Integrate with Agent Studio

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `{{sailpoint_url}}`. This will be the base URL of your SailPoint instance. If you visit your SailPoint instance’s home page and the URL looks something like the following: `https://seri.company2482-poc.demohub.sailpointtechnologies.com:8080/identityiq/home.jsf`, the portion before `/identityiq` is your base URL.
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Client Credentials Grant`
    - Client ID: `{{sailpoint_client_id}}`
    - Client Secret: `{{sailpoint_client_secret}}`
    - Oauth2 Token Url: `{{sailpoint_url}}/identityiq/oauth2/token?grant_type=client_credentials`
    - Oauth2 Client Authentication: `OAuth 2.0 with Basic Auth Header set to client id and client secret`
    
    ![Screenshot 2024-09-17 at 11.27.30 AM.png](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/Screenshot_2024-09-17_at_11.27.30_AM.png)
    

2. Test your Connector by setting up a demo API action
    1. In Agent Studio, create a new Plugin.
        1. Click on Plugins > Actions tab
        2. Click on CREATE to create a new plugin
    2. Set up your API Connection to configure the API endpoint based on the following:
        1. Click on Use Existing Connector > select the Sailpoint connector that you just created > Click on Apply. This will populate the Authorization section of the API Editor
            
          ![image.png](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/image%201.png)
            
        2. Fill out the Endpoint URL: `/identityiq/rest/ping`
        
    3. Click on Test to check if the Connector setup was successful and expect a successful response as shown below
        
        ![Screenshot 2024-09-25 at 7.18.05 PM.png](Sailpoint%20IdentityIQ%20c7d45655365d4d25b30bd22674c5b910/Screenshot_2024-09-25_at_7.18.05_PM.png)
        

## Congratulations

You have successfully integrated SailPoint IIQ’s APIs with Agent Studio. This opens up a variety of automation and integration possibilities using your SailPoint IIQ instance.
