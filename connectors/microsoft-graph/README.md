---
availability: VALIDATED
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/microsoft-graph/logo.png
name: Microsoft Graph
---

# Introduction

**Microsoft Graph** is Microsoft's unified API endpoint for accessing data and capabilities across Microsoft 365 — including Outlook, Teams, SharePoint, OneDrive, and more.

Connecting Microsoft Graph to **Moveworks Agent Studio** brings these capabilities directly into the AI assistant — employees can manage calendar events, check availability, book rooms, and more, all through their AI Assistant.

This guide walks through setting up the OAuth 2.0 Authorization Code (User Consent Auth) flow and OAuth 2.0 with Client Credentials Grant flow to connect Microsoft Graph with Agent Studio. For most use cases, we recommend the User Consent Auth connector. For a full list of available API resources, refer to the [Microsoft Graph API documentation](https://learn.microsoft.com/en-us/graph/overview).


# Prerequisites

### Microsoft Requirements

- **Azure Active Directory (Azure AD) / Entra ID** admin privileges to register an application and configure API permissions
- Access to the [Azure Portal](https://portal.azure.com/) — specifically **Microsoft Entra ID → App Registrations**
- A Microsoft 365 tenant with Outlook/Exchange Online enabled for your users

### Moveworks Requirements

- Agent Studio admin access in your Moveworks tenant ([grant access guide](https://help.moveworks.com/docs/manage-roles-and-permissions-for-moveworks-applications#add-an-application-admin))


# OAuth 2.0 with Authorization Code (User Consent Auth) Setup

Use this flow for actions performed in the context of the authenticated end user. Each user will authorize the integration once, and Moveworks will act on their behalf using their delegated permissions.

---

### Step 1: Register an Application in Azure AD (Entra ID)

1. Log in to the [Azure Portal](https://portal.azure.com/) as a Global Administrator or Application Administrator.
2. In the top search bar, search for **App registrations** and select it from the results.
    
    ![image.png](MS%20Graph%20Connector/image.png)
    
3. Click **+ New Registration**.
    
    ![image.png](MS%20Graph%20Connector/image%201.png)
    
4. Fill in the following fields:
    - **Name:** `Moveworks Outlook Connector` (or your preferred name)
    - **Supported account types:** `Accounts in this organizational directory only (Single tenant)`
    - **Redirect URI:**
        - Platform: `Web`
        - URI: `https://{{tenant}}.moveworks.com/auth/oauthCallback`*(Replace `{{tenant}}` with your organization's Moveworks tenant name)*
    
    ![image.png](MS%20Graph%20Connector/image%202.png)
    
5. Click **Register**. Azure will create the application and redirect you to its overview page.
6. Copy and securely store the following values from the **Overview** tab — you'll need them in the next step:
    - **Application (client) ID**
    - **Directory (tenant) ID**
    
    ![image.png](MS%20Graph%20Connector/image%203.png)
    

---

### Step 2: Create a Client Secret

1. In the left-hand menu of your newly registered app, navigate to **Manage** → **Certificates & secrets**.
2. Under the **Client secrets** tab, click **+ New client secret**.
    
    ![image.png](MS%20Graph%20Connector/image%204.png)
    
3. Fill in:
    - **Description:** `Moveworks Connector Secret`
    - **Expires:** Choose an expiration period appropriate for your organization (e.g., 12 or 24 months)
4. Click **Add**.
5. **Immediately copy the secret `Value`** — this is only shown once.
    
    ![image.png](MS%20Graph%20Connector/image%205.png)
    

> **Important:** The Client Secret value cannot be retrieved after you leave this page. If lost, you will need to generate a new secret and update your Moveworks connector accordingly.
> 

---

### Step 3: Configure API Permissions

To allow Moveworks to act on behalf of users, you need to grant the appropriate **delegated permissions** through Microsoft Graph. The permissions you configure will depend on the capabilities you want to enable.

1. In the left-hand menu of your registered app, navigate to **API Permissions**.
2. Click **+ Add a permission**.
3. Select **Microsoft Graph → Delegated permissions**.
4. Search for and add the permissions relevant to your use case. For example, the following are recommended for calendar management:
    
    
    | Permission | Use Case |
    | --- | --- |
    | `Calendars.Read.Shared` | Read calendars the user has access to, including shared calendars |
    | `Calendars.ReadWrite` | Create, update, and delete calendar events |
    | `MailboxSettings.Read` | Read the user's mailbox settings (e.g., timezone, working hours) |
    | `Place.Read.All` | Read company location/room data for room booking |
    | `User.Read` | Read the signed-in user's profile |
    | `User.Read.All` | Read all users' profiles (e.g., for looking up attendees) |
    | `offline_access` | Maintain access via refresh tokens |
    
    **Note:** Only grant the permissions your use cases actually require. For example, if you only need to read calendars, grant `Calendars.Read.Shared` — not `Calendars.ReadWrite`.
    
5. Click **Add permissions** after selecting all required permissions.
    
    ![image.png](MS%20Graph%20Connector/image%206.png)
    

**Note:** 

- By default, each user will be prompted to approve the permissions on their first login — this is the recommended approach for delegated permissions as it keeps users in control of their own data. If your organization prefers to pre-approve permissions for all users, an admin can click **Grant admin consent for [Your Organization]** to skip the individual consent prompt.
- Some permissions, such as `Place.Read.All`, always require admin consent regardless of your organization's preference. You can see the warning under ‘Status’ for these permissions.

![image.png](MS%20Graph%20Connector/image%207.png)

---

### Step 4: Configure the Authorization URL Parameters

Before setting up the Moveworks connector, confirm your authorization and token endpoint URLs.

Your Microsoft OAuth endpoints follow this pattern based on your **Directory (tenant) ID**:

- **Authorization URL:** `https://login.microsoftonline.com/{{tenant_id}}/oauth2/v2.0/authorize`
- **Token URL:** `https://login.microsoftonline.com/{{tenant_id}}/oauth2/v2.0/token`

Replace `{{tenant_id}}` with the **Directory (tenant) ID** copied from Step 1.

**Tip:** You can also find these URLs in your app's **Overview** page under **Endpoints**.

![image.png](MS%20Graph%20Connector/image%208.png)

---

### Step 5: Configure the Moveworks HTTP Connector

1. In Agent Studio, go to **HTTP Connectors → Create**.
2. Fill in the connector fields:
    - **Connector Name:** `Outlook_Authcode_Flow` (or your preferred name)
    - **Base URL:** `https://graph.microsoft.com/v1.0`
        
        ![image.png](MS%20Graph%20Connector/image%209.png)
        
    - **Auth Config:** `Oauth2`
    - **Oauth2 Grant Type:** `Authorization Code Grant`
    - **Authorization URL:** `https://login.microsoftonline.com/{{tenant_id}}/oauth2/v2.0/authorize`*(Replace `{{tenant_id}}` with your Directory (tenant) ID)*
    - **Client ID:** Your **Application (client) ID** from Azure
    - **Client Secret:** Your **Client Secret Value** from Step 2
    - **Authorization Code Grant Scope:** `https://graph.microsoft.com/Calendars.Read.Shared https://graph.microsoft.com/Calendars.ReadWrite https://graph.microsoft.com/MailboxSettings.Read https://graph.microsoft.com/Place.Read.All https://graph.microsoft.com/User.Read https://graph.microsoft.com/User.Read.All offline_access`
    *(This example reflects calendar management. Adjust the scope to match the permissions you configured in Step 3.)*
    
    ![image.png](MS%20Graph%20Connector/image%2010.png)
    
    - **Oauth2 Token URL:** `https://login.microsoftonline.com/{{tenant_id}}/oauth2/v2.0/token`*(Replace `{{tenant_id}}` with your Directory (tenant) ID)*
    - **Oauth2 Custom Oauth Response Response Type:** `Json`
        
        ![image.png](MS%20Graph%20Connector/image%2011.png)
        
3. Click **Save**.

---

### Step 6: Test the User Consent Connector

Let’s test if the connector is set up correctly:

1. In Agent Studio, navigate to a new **HTTP Action**
2. Fill in the following fields:
    - **Connector:** Select **Inherit from existing connector** and choose the connector you created in Step 5.
    - **Action Name:** `Get Current User` (or your preferred name)
    - **Endpoint URL:** `/me`
    - **Method:** `GET`
    
    ![image.png](MS%20Graph%20Connector/image%2012.png)
    
3. Click on ‘Test’. You will be asked to Generate New Access Token. Click on it.
    
    ![image.png](MS%20Graph%20Connector/image%2013.png)
    
4. A Microsoft login window will appear — pick an account or enter your Microsoft 365 user credentials to authenticate.
    
    ![image.png](MS%20Graph%20Connector/image%2014.png)
    
5. If prompted, review and accept the permission consent screen.
6. After successful login, you will be redirected back to Moveworks with a confirmation that authentication was successful.
7. The action is now ready to test. Click on ‘Test’ again. 
    
    ![image.png](MS%20Graph%20Connector/image%2015.png)
    
    A `200` response confirms the connector is working. 
    

---

# OAuth 2.0 with Client Credentials Grant Setup

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
