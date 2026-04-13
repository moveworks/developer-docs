---
availability: VALIDATED
logo: https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/google-admin.png
name: Google Admin SDK
redirects:
- googleadminsdk
---

## Introduction

**Google Admin SDK** is Google's suite of APIs for managing Google Workspace resources — including users, groups, devices, and organizational data — at scale.

Connecting the Google Admin SDK to **Moveworks Agent Studio** allows the AI Assistant to access and manage data from your Google Workspace directory. For example, this connector can be used to look up room and building resources across your organization, or to retrieve user and group information for identity-based workflows.

This guide walks through setting up the OAuth 2.0 Authorization Code (User Consent Auth) flow to connect the Google Admin SDK with Agent Studio. For a full list of available API resources, refer to the [Admin SDK Directory API documentation](https://developers.google.com/workspace/admin/directory/v1/guides).

---

## Prerequisites

### Google Requirements

- A **Google Cloud project** with the **Admin SDK API** enabled
- A licensed Google Workspace account
- Access to the [Google Cloud Console](https://console.cloud.google.com/) — specifically **APIs & Services**
- A Google Workspace domain with API access enabled

### Moveworks Requirements

- Agent Studio admin access in your Moveworks tenant ([grant access guide](https://help.moveworks.com/docs/manage-roles-and-permissions-for-moveworks-applications#add-an-application-admin))

---

## OAuth 2.0 with Authorization Code (User Consent Auth) Setup

Use this flow for actions performed in the context of the authenticated end user. Each user will authorize the integration once, and Moveworks will act on their behalf using their delegated permissions.

---

### Step 1: Create or Select a Google Cloud Project

1. Go to the [Google Cloud Console](https://console.cloud.google.com/) and sign in as a Google Workspace administrator.
2. In the top navigation bar, click the project dropdown and select the same project you used for the Google Calendar connector, or create a new one.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image.png)
    

---

### Step 2: Enable the Admin SDK API

1. In the left-hand menu, navigate to **APIs & Services → Library**.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%201.png)
    
2. Search for **Admin SDK API** and click on it from the results.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%202.png)
    
3. Click **Enable**. You will be redirected to the API overview page once it is enabled.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%203.png)
    

---

### Step 3: Configure the OAuth Consent Screen

In the left-hand menu, navigate to **APIs & Services → OAuth consent screen**. This will take you into the **Google Auth Platform**, where the consent screen settings are split across three sections: **Branding**, **Audience**, and **Data Access**.

### Branding

1. Navigate to **Branding**.
2. Fill in the following required fields if not already completed:
    
    
    | Field | Recommended Value |
    | --- | --- |
    | App name | Moveworks Connector (or your preferred name) |
    | User support email | Your IT or admin team email address |
    | Developer contact information | Your IT or admin team email address |
3. Click **Save**.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%204.png)
    

### Audience

1. Navigate to **Audience**.
2. Under **User Type**, select **Internal** — this restricts access to users within your Google Workspace organization only.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%205.png)
    
3. Click **Save**.

### Data Access

1. Navigate to **Data Access**.
2. Click **Add or Remove Scopes** and add the following scope based on the plugins you are enabling. For example, for most of the recommend rooms for a meeting plugin, you need the following scope:
    
    
    | Scope | Access Level | Description |
    | --- | --- | --- |
    | `https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly` | Read-only | Read room and building resource data from the Admin Directory |
    
![image.png](Google%20Admin%20SDK%20Connector/image%206.png)
    
3. Click **Update**, then **Save**.

---

### Step 4: Create OAuth 2.0 Credentials

1. Navigate to **APIs & Services → Credentials**.
2. Click **+ Create Credentials** and select **OAuth client ID**.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%207.png)
    
3. Fill in the following fields:
    
    
    | Field | Value |
    | --- | --- |
    | Application type | Web application |
    | Name | Moveworks Calendar Connector (or your preferred name) |
    | Authorized redirect URIs | `https://{{tenant}}.moveworks.com/auth/oauthCallback` |
    
![image.png](Google%20Admin%20SDK%20Connector/image%208.png)
    
4. Click **Create**.
5. A dialog will appear showing your **Client ID.** Open the API client again for **the Client Secret**. Copy and securely store both values — you will need them in Step 6.

---

### Step 5: Confirm Your OAuth Endpoints

Google's OAuth 2.0 endpoints are standardized and do not vary by tenant:

| Endpoint | URL |
| --- | --- |
| Authorization URL | `https://accounts.google.com/o/oauth2/v2/auth` |
| Token URL | `https://oauth2.googleapis.com/token` |

---

### Step 6: Configure the Moveworks HTTP Connector

1. In Agent Studio, go to **HTTP Connectors → Create**.
2. Fill in the connector fields:
    - **Connector Name:** `Google_AdminSDK_Authcode_Flow` (or your preferred name)
    - **Base URL:** `https://admin.googleapis.com`
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%209.png)
    
    - **Auth Config:** `Oauth2`
    - **Oauth2 Grant Type:** `Authorization Code Grant`
    - **Authorization URL:** `https://accounts.google.com/o/oauth2/v2/auth`
    - **Client ID:** Your Client ID from Step 4
    - **Client Secret:** Your Client Secret from Step 4
    - **Authorization Code Grant Scope:** `https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly offline_access` 
    *(Adjust the scope to match the permissions required by the plugins you are enabling.)*
    - **Authorization Request Query Parameters**
        
        
        | **Key** | **Value** |
        | --- | --- |
        | access_type | offline |
        | prompt | consent |
        
![image.png](Google%20Admin%20SDK%20Connector/image%2010.png)
        
    - **Oauth2 Token URL:** `https://oauth2.googleapis.com/token`
    - **Oauth2 Custom Oauth Response Response Type:** `Json`
3. Click **Save**.

---

### Step 7: Test the User Consent Connector

1. In Agent Studio, navigate to a new **HTTP Action**.
2. Fill in the following fields:
    - **Connector:** Select **Inherit from existing connector** and choose the connector created in Step 6.
    - **Action Name:** `Get_Buildings` (or your preferred name)
    - **Endpoint URL:** `/admin/directory/v1/customer/my_customer/resources/buildings`
    - **Method:** `GET`
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%2011.png)
    
3. Click **Test**. You will be prompted to **Generate New Access Token**. Click it.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%2012.png)
    
4. A Google sign-in window will appear — sign in with a Google Workspace administrator account.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%2013.png)
    
5. If prompted, review and accept the permission consent screen.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%2014.png)
    
6. After successful login, you will be redirected back to Moveworks with a confirmation that authentication was successful.
7. Click **Test** again. A `200` response confirms the connector is working.
    
    ![image.png](Google%20Admin%20SDK%20Connector/image%2015.png)
    

---

## Congratulations!

You've successfully connected the Google Admin SDK to Moveworks Agent Studio using the OAuth 2.0 Authorization Code (User Consent) flow. Your connector is now ready to support plugins that require access to your Google Workspace directory on the Moveworks AI Assistant.