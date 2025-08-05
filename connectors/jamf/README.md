---
availability: IDEA
description: Connect your Moveworks Copilot to Jamf.
fidelity: GUIDE
name: Jamf
difficulty_level: INTERMEDIATE
time_in_minutes: 30
---
## **Introduction:**

**Jamf Pro** is a cloud-based Apple device management solution, enabling organizations to streamline deployment, security, and lifecycle management of Apple devices across their workforce.

This guide walks you through the process of creating a connector within **Agent Studio** to make API calls to **Jamf Pro**, using **OAuth Client Credentials Flow** for secure authentication. The guide is organized into two main sections:

1. **Set up OAuth Client Credentials Flow**
2. **Create a Connector in Agent Studio**

## **Prerequisites:**

- Ensure you have **admin privileges** in your **Jamf Pro instance** to create and configure **OAuth 2.0 clients**.
- Detailed instructions on OAuth token generation and integration are available in the official Jamf Pro documentation [**here**](https://learn.jamf.com/en-US/bundle/jamf-pro-documentation-current/page/API_Roles_and_Clients.html).

## **Set up Jamf Pro**

To connect **Jamf Pro** with **Agent Studio**, we’ll use **OAuth 2.0 authentication**. This method allows backend systems like Agent Studio to securely authenticate using a **client ID and secret.**

This guide walks you through registering an OAuth 2.0 client in Jamf Pro, generating an access token using the **Client Credentials Flow**, and configuring the connector in Agent Studio for seamless access to Jamf Pro APIs.

## Register OAuth 2.0 API Client in Jamf Pro

### Step 1: Log in to Jamf  Instance with Username and Password

- Go to [https://moveworksnfr.jamfcloud.com/](https://moveworksnfr.jamfcloud.com/)

![image.png](image.png)

- Look at the **bottom-left corner** of the sidebar menu.
- Click the **gear icon “Settings”**

![image.png](image%201.png)

- In the **Settings** screen, locate the **search bar** at the top.
- Type **`API Roles and Clients`** into the search bar.
- When **API Roles and Clients** appears in the search results, click it.

### Step 2: Create an API Role

![image.png](image%202.png)

- After searching for **"API Roles and Clients"**, the page will default to the **API Roles** tab.
- Click the **+ New** button in the top-right corner.

### Step 3: Configure and Save the API Role

- Once you click **+ New** on the API Roles page, you’ll be brought to the **New API Role** configuration screen.
- **Display Name**:
    
    Enter a name that clearly identifies the purpose of this role.
    
- **Privileges**:
Select the required API privileges based on what actions your integration needs to perform.
- After selecting all necessary privileges, click **Save** (bottom right)

![image.png](image%203.png)

### Step 4: Create an OAuth API Client

![image.png](image%204.png)

- In the **API Roles and Clients** section, click on the **API Clients** tab.
- Click the **+ New** button in the top-right corner.
- **Display Name**:
    
    Enter a name that clearly identifies the purpose of this Client.
    
- API roles:
 Choose the API Role you created earlier.
- Click the **Enable API client** button
- Click **Save**
- After saving, you'll see the **Client ID** displayed.
- Click the **Generate client secret** button to obtain the **Client Secret** (copy and store it securely)

![image.png](image%205.png)

![image.png](image%206.png)

### Step 5: Secure Your Client Credentials

After the app is registered:

- Copy and securely store the:
    - **`Client ID`**
    - **`Client Secret`**
- These will be used in Agent Studio for authentication

### Step 6: Request an Access Token

After successfully creating an **API Client** in **Jamf Pro** and retrieving the required credentials (`client_id` and `client_secret`), you can request an **access token**. This token is used to authenticate API requests securely.

To request an access token, use the following `curl` command:

```bash
curl --location --request POST 'https://<API_SERVER_DOMAIN>/api/oauth/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'grant_type=client_credentials' \
--data-urlencode 'client_id=YOUR_CLIENT_ID' \
--data-urlencode 'client_secret=YOUR_CLIENT_SECRET'
```

### Enter your specific values below:

- `<API_SERVER_DOMAIN>` – Your Jamf Pro instance domain
- `YOUR_CLIENT_ID` – The client ID generated from your API Client
- `YOUR_CLIENT_SECRET` – The client secret associated with the API Client

### ****Step 7**: Integrate with Agent Studio**

To complete the integration between ServiceNow and Agent Studio using OAuth 2.0, follow the steps below:

1. **Auth Config:**
    - `Oauth2`
2. **OAuth2 Grant Type(**which is **static** and cannot be changed**):**
    - `Client Credentials`
3. **Client ID:**
    - Enter the **`Client ID`** you received when registering your ServiceNow app.
4. **Client Secret**
    - Enter the **`Client Secret`** corresponding to your app’s Client ID.
    1. **OAuth2 Token URL:**
        - `https://<your-jamf-url>/api/oauth/token`
5. Click on **Save** to submit the credentials, and your connector will be ready

![image.png](image%207.png)

### Step 8: Integrate Jamf API in Agent Studio

- Add your API details below to integrate with the **Jamf Pro** API. You can read more about setting up API actions in the [API configuration reference](https://help.moveworks.com/docs/http-action-data-bank-legacy).

```bash
curl --location 'hhttps://<API_SERVER_DOMAIN>/api/v1/computers-inventory' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Accept: application/json'
```

- **API Endpoint Path:**
    - [https://<API_SERVER_DOMAIN>/api/v1/computers-inventory](https://moveworksnfr.jamfcloud.com/api/v1/computers-inventory)
- **Method:**
    
    `GET` 
    
    ![Untitled design.png](Untitled_design.png)
    

# **Congratulations!**

You've successfully integrated **Jamf Pro** with **Agent Studio** using **OAuth 2.0**. You can now securely access **Jamf Pro APIs** and power automated use cases within your workflows.