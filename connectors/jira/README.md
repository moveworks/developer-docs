---
availability: VALIDATED
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/jira-integration-logo-primary.svg
name: Jira
- General
---

# **Introduction**

Connecting Jira to Agent Studio allows seamless integration of project management and issue tracking capabilities. This guide provides a step-by-step process to connect your Jira instance to Agent Studio in three ways:

1. [Webhook Connection](https://marketplace.moveworks.com/connectors/jira#Webhook-Connection)
2. [Basic Auth](https://marketplace.moveworks.com/connectors/jira#Basic-Auth)
3. [OAuth 2.0 with Authorization Code (User Consent Auth) Setup](https://marketplace.moveworks.com/connectors/jira#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup)

# Webhook Connection
## What you’re connecting

- **Jira Service Management “Send web request” (webhook) action.**  A Jira Automation **THEN** action that POSTs events to a URL you provide. You can send the full **Jira issue payload** or a **custom JSON** body with smart values.
    - How it works / settings & payload shape, timeouts, success criteria, async behavior.
    - Allowlist (a.k.a. whitelist) requirement & how to add URLs.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Jira-Then.png)

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Jira-WebHook.png)

[JIRA Service Desk webhook docs](https://developer.atlassian.com/server/jira/platform/jira-service-desk-webhooks/)

- **Moveworks Listener** — Your HTTPS endpoint where you’ll enforce auth (e.g., **Bearer**).

---

## Step 1: Create the Moveworks Listener

In **Agent Studio → Listeners → Create new listener** :

### Steps

1. **Open your Listener** and **s**ave your webhook URL to use in the next section.
2.  In the Listener config page, scroll to **Verification** and check **Enable Credential Verification**.
    
    ![Screenshot 2025-09-23 at 11.21.14 AM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Jira-Listener.png)
    
3. **Create the credential (API token)**
- Click **Create a New Credential** (from Verification) or go to **moveworks setup → credentials**.
- **Type:** API Key
- **Name:** e.g., `jira_webhook_bearer_prod`.
- **Save** and **copy** the token value now; store it in your secret manager.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Jira-Credentials.png)

You’ll paste this token into Jira as an **Authorization: Bearer** header (below).

---

## 3) Configure in Jira (UI method)

**Project settings → Automation → Create rule** (or edit an existing one):

1. **WHEN / IF**
    
    Pick the trigger (e.g., *Issue created, Issue transitioned, SLA threshold breached*) and add any conditions you want.
    
    ![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Jira-UI.png)
    
2. **THEN → Send web request** (webhook action)
    
    Configure:
    
    - **URL:** paste your Moveworks Listener URL.
        - If you’re on Jira Service Management **4.6+**, ensure the Listener URL is on the Jira **allowlist** (Admin → System → **Allowlist**)
    - **HTTP method:** `POST`. (This is how Automation webhooks send data.)
    - **Headers (optional but recommended):**
        - `Authorization: Bearer <your_mw_api_token>`
            
            Jira Automation’s *Send web request* supports **custom headers** (use this to pass your Moveworks token)
            
    - **Body:** choose one of:
        - **Send Jira issue payload** — Jira attaches a JSON body with `issue`, `fields`, etc. (see example payload shape on the Atlassian page).
        - **Custom data** — Build your own JSON using smart values (e.g., `${issue.key}`, `${issue.fields.priority.name}`), or enable **Encode as form** if the endpoint expects form-encoded data.
3. **Save** and **Turn rule on**.
    
    Use the rule’s **Audit log** to verify executions.
    

**Operational behavior to expect (Data Center 10+):** executions are queued and processed **asynchronously**; **success = 2xx**; **~5s connect / 20s response** timeouts; **no retries** if the endpoint is unavailable.
## Congratulations!

You've successfully created a Webhook Connection between Jira and Agent Studio. This opens up a variety of automation and integration possibilities within your Jira environment.


# Basic Auth
## **Prerequisites**

- **Access to a Jira Instance**: Ensure you have access to either a **Sandbox or Production** Jira instance, depending on your testing environment.
- **Install Postman**: Download and install Postman or another API testing tool to interact with Jira's REST API.
- **Admin API Token**: While any Atlassian user can generate an API token for basic authentication, we recommend using a Jira admin account to generate the token when setting up plugins in Agent Studio. This ensures the automation has sufficient permissions to:
    - Access tickets across multiple projects
    - Update issue statuses
    - Assign users
    - Create or delete issues, if required

## **Step 1: Get Your Jira API Token**

- Log in to Your Atlassian Admin Account :
    - Go to [id.atlassian.com](http://id.atlassian.com).
- Access the API Token Management Page:
    - After logging in, click on your **profile picture** in the top-right corner.
    - Select **Account Settings** from the dropdown.
    - In the left-hand menu, click on **Security**.
    - Scroll down to the **API token** section and click **Create and manage API tokens**.
    
      ![Screenshot 2024-12-04 at 1.11.27 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-04_at_1.11.27_PM.png)
    
- Create an API Token:
    - Click on "Create API Token".
        
      ![Screenshot 2024-12-03 at 9.50.29 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-03_at_9.50.29_PM.png)
        
    - Name the token (e.g., "Agent Studio").
        
        ![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image.png)
        
    - Click Create and copy the generated API token.
    
      ![Screenshot 2024-12-03 at 9.59.00 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-03_at_9.59.00_PM.png)
    
    - Keep this token secure as it won't be displayed again
- Note Your Jira Instance URL:
    - Your Jira URL is in the format: **https://<your-site>.atlassian.net**

## **Step 2: Assign Necessary Permissions**

Ensure that the admin account used to generate the API token for your Jira connector is explicitly added to all Jira projects where the plugins need to operate.
By default, Jira admins do not have automatic access to every project. To ensure the plugin can view and modify issues as expected:
- Ensure your account has sufficient permissions to perform the required API operations.
    - Check User Roles:Go to Project Settings → People
    - Add the admin user (the email used to generate the API token)
    - Assign the role: Administrator (recommended)
       
This step ensures the plugin has the required visibility and permissions to access and manage issues across all relevant projects.

## **Step 3: Test with Postman (or another API client)**

Example API: Get All Projects

- The GET `/rest/api/3/project` endpoint retrieves a list of all projects in your Jira instance that the authenticated user has access to. This is a simple endpoint for testing authentication and retrieving basic project details without needing any query parameters.
    - Set Up a New Request in Postman:
        - Open **Postman** and create a new request.
        - Set the request type to GET and enter the following URL:
            - Replace <your-site> with your actual Jira instance URL.
                
                ```bash
                curl --request GET \
                  --url 'https://<your-site>.atlassian.net/rest/api/3/project' \
                  --user 'email@example.com:<api_token>' \
                  --header 'Accept: application/json'
                ```
            
            - Enter your Atlassian account email as the **Username**.
            - Paste the API token as the **Password**
        
              ![Screenshot 2024-12-04 at 1.37.08 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-04_at_1.37.08_PM.png)
        
    - Send the Request and Verify the Response:
        - Send the request and upon success, you will receive list of all projects in your Jira instance, including their key, name, type, links and metadata.
        
## Step 4: Connect to Agent Studio

1. In Agent Studio, create a new **HTTP Action** and Test it.
   - Go to Agent Studio -> **Actions** -> **HTTP Actions** -> **Create**

      ![Untitled](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Pasted_Graphic.png)

      ![Untitled](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Pasted_Graphic_1.png)
   
   - Click on **Create New Connector** and fill the following information.
        - **Base URL**: `https://<your-site>.atlassian.net`
        - Name : Name accordingly
        - Description : Give a suitable description.
        - **Auth Config**: Basic Auth
        - **Username**: username from previous steps
        - **Password**: password from previous steps

        ![Pasted_Graphic_2.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Pasted_Graphic_2.png)
   
3. Add your API details and Test.
    - Fill the endpoint as : **/rest/api/3/project**
    - Click Test
   
      ![Pasted_Graphic_3.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Pasted_Graphic_3.png)

## Congratulations!

You've successfully integrated Jira’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your Jira environment.
# OAuth 2.0 with Authorization Code (User Consent Auth) Setup

To connect **Jira Cloud** to **Agent Studio** using **user-consent-based authentication**, configure the **OAuth 2.0 with Authorization Code** flow.

This ensures Jira users explicitly authorize Moveworks before any API actions are performed on their behalf.

## **Walkthrough**

Follow these steps to set up and validate your connection:

1. Log in to the **Atlassian Developer Console**
2. Register a new **OAuth 2.0 App**
3. Configure **Callback URL**,**Scopes** and **Distribution Settings**
4. Integrate with **Agent Studio**
5. Test the Connector in **Agent Studio**

## **Step 1: Log in to Atlassian Developer Console**

- Go to [developer.atlassian.com/console](https://developer.atlassian.com/console)
- Log in using your **Atlassian admin account**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2019.png)

## **Step 2: Register a New OAuth 2.0 (3LO) App**

-  Click **“Create” → OAuth 2.0 Integration**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%201.png)

-  Enter your app details:
    - **App Name:** `{{YOUR_APP_NAME}}`
-  Click **Create**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%202.png)

## **Step 3: Configure Callback URL and Scopes**

In your newly created app, follow these steps to complete the OAuth 2.0 (3LO) setup:

-  From the **left-side menu**, navigate to the **Authorization** tab.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%203.png)

-  Under **Authorization Type**, select **OAuth 2.0 Integration**.
-  Click **Add Action** and enter the following **Callback URL** (for example: `https://example.com/auth/oauthCallback`).

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%204.png)

-  Click **Save Changes**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%205.png)

-  After saving, go back and open the **Authorization URL Generator** section.
    - Add the relevant **API** to this section.
    
    ![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%206.png)
    
-  Next, you need to configure the **Scopes**:
- In the same **Authorization** section, locate your action and click **Configure**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%207.png)

- Click **Edit Scopes**, then select the scopes you want to add from the available list.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%208.png)

- Configure the scopes by editing your action under the classic scopes:

  - read:jira-work: Allows the app to read issues and projects (e.g., fetch issues, view project details).

  - write:jira-work: Allows the app to create or update issues (e.g., add comments, change statuses).

  - manage:jira-configuration: Allows the app to manage Jira configurations (e.g., update workflows, boards).

  - read:jira-user: Allows the app to read user information (e.g., fetch profiles, assign issues).

- Note: Add more scopes depending on your integration needs. 
    - Examples: 
        - offline_access → For refresh tokens 
        - manage:jira-project → Modify projects
        - manage:jira-automation → Manage automation rules

- After clicking **Save**, a confirmation message will appear.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%209.png)

- The message indicates that the scopes have been successfully added.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2010.png)

- After saving the configuration, go to **Settings** to view your **Client ID** and **Client Secret**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2011.png)

- Copy and store these credentials securely, as they will be required later while configuring the connector in **Agent Studio**.

 **Make the App Public (Distribution Settings):**
  - By default, your OAuth 2.0 app is set to Private, meaning only you (the creator) can authorize and use it.
- To make the app accessible to other users, follow these steps:

  - From the left-side menu, go to the Distribution tab in your app’s settings.
  - Click Edit distribution controls.

 ![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%20281.png)

  - Under Sharing, change the setting from Not sharing to Sharing.

- Fill in the required fields under Vendor & Security Details:
  - Vendor name: Use your own or your organization’s name.
  - Privacy policy: https://example.com/privacy
  - Terms of service: https://example.com/terms
  - Customer support contact: john@gmail.com
  - Personal Data Declaration: Select No if you don’t store user data, otherwise select Yes.
  - Click Save changes.

 ![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%20282.png)

- Once saved, your app will become Public, allowing others to install and authorize it.

## **Step 4: Integrate with Agent Studio**

In **Agent Studio**, create a new connector with the following configuration:

**Connector Name:** `{{Connector_Name}}`

**Display Name:** `{{Display_Name}}`

**Display Description:**

This connector facilitates secure, user-authorized access to the Jira API using User Consent Authentication.

**Base URL:** `https://{JIRA_BASE_URL}`

**Auth Config:** OAuth2

**OAuth2 Grant Type:** Authorization Code Grant

**Authorization URL:** `https://{JIRA_AUTH_DOMAIN}/authorize`

**Client ID:** `{{CLIENT_ID}}`

**Client Secret:** `{{CLIENT_SECRET}}`

**Authorization Code Grant Scope:** `read:jira-work write:jira-work offline_access read:jira-user`

**Authorization Request Query Parameters:**

- `audience`: `api.atlassian.com`

**OAuth2 Token URL:** `https://{JIRA_AUTH_DOMAIN}/oauth/token`

**OAuth2 Client Authentication:** OAuth 2.0 with Request Body

**OAuth2 Custom OAuth Response Type:** JSON

**Additional Headers:** `Content-Type: application/json`

**Header Auth Key:** `Authorization`

**Header Auth Value Pattern:** `Bearer %s`

**Custom Grant Type:** `authorization_code`

Once all fields are completed, click **Save** to create and store your connector configuration.

## **Step 5: Test the Connector in Agent Studio**

Set up your API. You can read more about configuring and testing API actions from our **API Configuration Reference**.

Use the following API to verify that the **User Consent Authentication (UCA)** setup for **Jira Cloud** is functioning correctly.

This call helps confirm that authentication is working as expected and that the data is being fetched at the **user level only** — based on the logged-in user’s access permissions in **Jira**.

```bash
curl --location 'https://<YOUR_INSTANCE_DOMAIN>/oauth/token/accessible-resources' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{ACCESS_TOKEN}}'
```

**API Endpoint Path:**

`/oauth/token/accessible-resources`

**Method:**

`GET`

**Headers:**

- `Accept`: `application/json`

**Your Instance Configuration**

All Jira API endpoints in this plugin use **`{{YOUR_INSTANCE_DOMAIN}}`** as a placeholder.

Follow the steps below to update it correctly after installation:

1. Go to your **Jira Cloud** instance settings.
2. Locate your **API base domain** (this will be your organization’s Jira Cloud domain).
3. Replace **`{{YOUR INSTANCE DOMAIN}}`** with your actual Jira Cloud API domain in all **action definitions** within the connector.
4. Save your configuration to ensure that all API requests are routed to your Jira Cloud instance.

### **Test Your Setup:**

1. In **Agent Studio**, create and run a new **Action**.
2. Import the above **cURL command**.
3. Add the **Jira User Consent Auth Connector**.
4. Click **Test → Generate New Access Token**.
    - Ensure you are acting on behalf of the **intended Jira user** before generating the token.
    - The returned data will reflect only what that user has permission to access in **Jira Cloud**.
    
    ![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/183e028d-82b8-4293-a5e5-cb89b33a8913.png)
    

### **Establish a Connection Between Your UCA Connector and Agent Studio**

- Integrate your **UCA Connector** with **Agent Studio**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/94a73570-6fe1-4702-a726-ee4cd63f5348.png)

- Next, you will be redirected to the **Atlassian login page**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2013.png)

- If you log in as an **admin**, you’ll have access to all project and issue data, while a **regular user** will only see data that they have permissions for
- After logging in successfully, click **Accept** to generate the **authorization code**.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2014.png)

- Once you click **Accept**, you will receive a notification from the **Moveworks bot** confirming that it has access to perform actions on your behalf.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2015.png)

### **Verify UCA Functionality**

- Click **Test** to verify that **User Consent Authentication (UCA)** is working correctly.
- The action (for example, *Get Accessible Resources*) should use the logged-in user’s token to return only the Jira Cloud resources accessible to that user — confirming that **user-specific consent and permissions** are configured correctly.

![image.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/image%2016.png)

# **Congratulations!**

You’ve successfully integrated **Jira Cloud** with **Agent Studio** using **OAuth 2.0 (User Consent Auth)**, enabling secure user-level authentication and access to Jira Cloud data based on user consent within your Atlassian instance.