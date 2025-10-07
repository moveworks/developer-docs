---
availability: VALIDATED
difficulty_level: BEGINNER
fidelity: GUIDE
name: Jira
time_in_minutes: 15
---

# **Introduction**

Connecting Jira to Agent Studio allows seamless integration of project management and issue tracking capabilities. This guide provides a step-by-step process to connect your Jira instance to Agent Studio in two ways:
1. [Webhook Connection](https://marketplace.moveworks.com/connectors/jira#Webhook-Connection)
2. [Basic Auth](https://marketplace.moveworks.com/connectors/jira#Basic-Auth)

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
