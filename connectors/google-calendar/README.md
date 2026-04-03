---
availability: VALIDATED
logo: https://google.oit.ncsu.edu/wp-content/uploads/sites/6/2021/01/Google_Calendar.max-2800x2800-1.png
name: Google Calendar
redirects:
- googlecalendar
---
## Introduction

**Google Calendar** is Google's cloud-based calendaring service, deeply integrated across Google Workspace — including Gmail, Meet, and Drive.

Connecting Google Calendar to **Moveworks Agent Studio** brings these capabilities directly into the AI assistant — employees can search calendar events, check availability, book and manage meetings, and find available rooms, all through their AI Assistant.

This guide walks through setting up the OAuth 2.0 Authorization Code (User Consent Auth) flow to connect Google Calendar with Agent Studio. For a full list of available API resources, refer to the [Google Calendar API documentation](https://developers.google.com/calendar/api/guides/overview).

---

## Prerequisites

### Google Requirements

- A **Google Cloud project** with the **Google Calendar API** enabled
- Google Workspace admin privileges to configure the OAuth consent screen
- Access to the [Google Cloud Console](https://console.cloud.google.com/) — specifically **APIs & Services → Credentials**
- A Google Workspace tenant with Google Calendar enabled for your users

### Moveworks Requirements

- Agent Studio admin access in your Moveworks tenant ([grant access guide](https://help.moveworks.com/docs/manage-roles-and-permissions-for-moveworks-applications#add-an-application-admin))

---

## OAuth 2.0 with Authorization Code (User Consent Auth) Setup

Use this flow for actions performed in the context of the authenticated end user. Each user will authorize the integration once, and Moveworks will act on their behalf using their delegated permissions.

---

### Step 1: Create or Select a Google Cloud Project

1. Go to the [Google Cloud Console](https://console.cloud.google.com/) and sign in as a Google Workspace administrator.
2. In the top navigation bar, click the project dropdown and select an existing project, or click **New Project** to create a dedicated one (e.g., Moveworks Marketplace).
    
    ![image.png](Google%20Calendar%20Connector/image.png)
    

---

### Step 2: Enable the Google Calendar API

1. In the left-hand menu, navigate to **APIs & Services → Library**.
    
    ![image.png](Google%20Calendar%20Connector/image%201.png)
    
2. Search for **Google Calendar API** and click on it from the results (the first one in the list).
    
    ![image.png](Google%20Calendar%20Connector/image%202.png)
    
3. Click **Enable**. You will be redirected to the API overview page once it is enabled.
    
    ![image.png](Google%20Calendar%20Connector/image%203.png)
    

---

### Step 3: Configure the OAuth Consent Screen

**Note:** If you are working in an existing Google Cloud project that already has the OAuth consent screen configured, you can skip to Step 4. If this is a fresh project, complete this step first.

In the left-hand menu, navigate to **APIs & Services → OAuth consent screen**. This will take you into the **Google Auth Platform**, where the consent screen settings are split across three sections: **Branding**, **Audience**, and **Data Access**.

### Branding

1. Navigate to **Branding**.
2. Fill in the following required fields:
    
    
    | Field | Recommended Value |
    | --- | --- |
    | App name | Moveworks Calendar Connector (or any other name) |
    | User support email | Your IT or admin team email address |
    | Developer contact information | Your IT or admin team email address |
3. Click **Save**.
    
    ![image.png](Google%20Calendar%20Connector/image%204.png)
    

### Audience

1. Navigate to **Audience**.
2. Under **User Type**, select **Internal** — this restricts access to users within your Google Workspace organization only.
    
    ![image.png](Google%20Calendar%20Connector/image%205.png)
    
    **Note:** Selecting "Internal" means only users within your Google Workspace tenant can authorize the app. This is the recommended setting for enterprise integrations and avoids the need for Google's external app verification process.
    
3. Click **Save**.

### Data Access

1. Navigate to **Data Access**.
2. Click **Add or Remove Scopes.** For example, for most of the calendar plugins, you need the following scope:
    
    
    | Scope | Access Level | Required For |
    | --- | --- | --- |
    | `https://www.googleapis.com/auth/calendar` | Full | If read + write access is required together |
    
![image.png](Google%20Calendar%20Connector/image%206.png)
    
3. Click **Update**, then **Save**.

---

### Step 4: Create OAuth 2.0 Credentials

1. Navigate to **APIs & Services → Credentials**.
2. Click **+ Create Credentials** and select **OAuth client ID**.
    
    ![image.png](Google%20Calendar%20Connector/image%207.png)
    
3. Fill in the following fields:
    
    
    | Field | Value |
    | --- | --- |
    | Application type | Web application |
    | Name | Moveworks Calendar Connector (or your preferred name) |
    | Authorized redirect URIs | `https://{{tenant}}.moveworks.com/auth/oauthCallback` |
    
![image.png](Google%20Calendar%20Connector/image%208.png)
    
4. Click **Create**.
5. A dialog will appear showing your **Client ID.** Open the API client again for **the Client Secret**. Copy and securely store both values — you will need them in Step 6.

---

### Step 5: Confirm Your OAuth Endpoints

Google's OAuth 2.0 endpoints are standardized and do not vary by tenant. Use the following values when configuring the Moveworks connector in the next step:

| Endpoint | URL |
| --- | --- |
| Authorization URL | `https://accounts.google.com/o/oauth2/v2/auth` |
| Token URL | `https://oauth2.googleapis.com/token` |

---

### Step 6: Configure the Moveworks HTTP Connector

1. In Agent Studio, go to **HTTP Connectors → Create**.
2. Fill in the connector fields:
    - **Connector Name:** `Google_Calendar_Authcode_Flow` (or your preferred name)
    - **Base URL:** `https://www.googleapis.com`
        
        ![image.png](Google%20Calendar%20Connector/image%209.png)
        
    - **Auth Config:** `Oauth2`
    - **Oauth2 Grant Type:** `Authorization Code Grant`
    - **Authorization URL:** `https://accounts.google.com/o/oauth2/v2/auth`
    - **Client ID:** Your Client ID from Step 4
    - **Client Secret:** Your Client Secret from Step 4
    - **Authorization Code Grant Scope:** `https://www.googleapis.com/auth/calendar.readonly https://www.googleapis.com/auth/calendar.events https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly offline_access`
    *(Adjust the scope to match the permissions required by the plugins you are enabling.)*
        
        ![image.png](Google%20Calendar%20Connector/image%2010.png)
        
    - **Authorization Request Query Parameters**
        
        
        | **Key** | **Value** |
        | --- | --- |
        | access_type | offline |
        | prompt | consent |
        
    ![image.png](Google%20Calendar%20Connector/image%2011.png)
        
    - **Authorization Code Grant Revoke Access Token Options Revoke Access Token Authentication:** `Revoke access token with Request Body`
    - **Oauth2 Token URL:** `https://oauth2.googleapis.com/token`
        
    ![image.png](Google%20Calendar%20Connector/image%2012.png)
        
3. Click **Save**.

---

### Step 7: Test the User Consent Connector

1. In Agent Studio, navigate to a new **HTTP Action**.
2. Fill in the following fields:
    - **Connector:** Select **Inherit from existing connector** and choose the connector created in Step 6.
    - **Action Name:** `Get Primary Calendar` (or your preferred name)
    - **Endpoint URL:** `/calendar/v3/calendars/primary`
    - **Method:** `GET`
    
    ![image.png](Google%20Calendar%20Connector/image%2013.png)
    
3. Click **Test**. You will be prompted to **Generate New Access Token**. Click it.

    
    ![image.png](Google%20Calendar%20Connector/image%2014.png)
    
4. A Google sign-in window will appear — select an account or enter your Google Workspace credentials to authenticate.
    
    ![image.png](Google%20Calendar%20Connector/image%2015.png)
    
5. When prompted, review and accept the permission consent screen.
    
    ![image.png](Google%20Calendar%20Connector/image%2016.png)
    
6. After successful login, you will be redirected back to Moveworks with a confirmation that authentication was successful.
7. Click **Test** again. A `200` response confirms the connector is working.
    
    ![image.png](Google%20Calendar%20Connector/image%2017.png)
    

---

## Congratulations!

You've successfully connected Google Calendar to Moveworks Agent Studio using the OAuth 2.0 Authorization Code (User Consent) flow. Your connector is now ready to support Google Calendar plugins on the Moveworks AI Assistant.