---
difficulty_level: BEGINNER
fidelity: GUIDE
name: Greenhouse
time_in_minutes: 30
---

# **Introduction**

Connecting Greenhouse to Creator Studio enables seamless automation of recruiting workflows, from job requisition to candidate management. By leveraging Greenhouse’s API and using API Key Authentication, you can automate hiring processes, retrieve recruiting analytics and improve collaboration between recruiters, hiring managers and interviewers. This guide provides a step-by-step process to connect your Greenhouse instance to Creator Studio and test the integration for streamlined recruiting operations.

# **Prerequisites**

- **Access to a Greenhouse Instance**: Ensure you have access to either a **Sandbox or Production** Greenhouse instance, depending on your testing environment.
- **Install Postman**: Download and install Postman or another API testing tool to interact with Greenhouse's REST API.
- **Greenhouse API Key**:
    - Generate a **Harvest API** Key in Greenhouse to authenticate API requests.
    - Ensure the API Key has the necessary permissions based on the required automation (e.g., job posts, candidate applications, interview scheduling).
    - Only users with the **Site Admin** role or specific API management permissions can create API keys. If you do not have the necessary access, request it from your Greenhouse administrator. Reference: [Manage User-Specific Permissions in Greenhouse](https://support.greenhouse.io/hc/en-us/articles/360020849292-Manage-user-specific-permissions)

# **Connect with Basic Authentication**

## **Step 1: Get Your Greenhouse API Key**

- **Log in to Greenhouse:**
    - Go to [Greenhouse](https://www.greenhouse.io/) and log in with your credentials.
- **Navigate to API Key Management:**
    - Click on the **Configure (⚙️) icon** in the top-right menu.
    - Select **Dev Center** from the sidebar.
    - Click on **API Credentials Management**.
- **Create a New API Key:**
    - Click **Create New API Key**.
    - In the pop-up, select **Harvest API** as the API type.
    - Provide a **descriptive name** for the API key.
    - Click **Manage** **Permissions**.
    - Copy your Harvest API key to a secure location. You'll need your API key to authenticate Harvest API requests.
    - Click **I have stored the API key**, then assign the appropriate endpoint permissions to your new key.
- **Set Permissions:**
    - Choose the required **Harvest API endpoints** based on your integration needs and click **Save**.
    - Ensure you only grant the permissions necessary for your automation tasks.

Reference: [Harvest API overview](https://support.greenhouse.io/hc/en-us/articles/360029266032-Harvest-API-overview)

## **Step 2: Test with Postman (or another API client)**

Example API: Get All Jobs

- The GET `/v1/jobs` endpoint retrieves a list of all jobs in your Greenhouse instance that the authenticated user has access to. This is a simple endpoint for testing authentication and retrieving basic job details.
- Set Up a New Request in Postman:
    - Open **Postman** and create a new request.
    - Set the request type to **GET** and enter the following URL:
        - **https://harvest.greenhouse.io/v1/jobs**
- Add Authentication:
    - In Postman, go to the **Authorization** tab.
    - Select **Basic Auth** as the authentication type.
    - Enter your Greenhouse **API Key** in the **Username** field.
    - Leave the **Password** field empty.
- Send the Request and Verify the Response:
    - Click **Send** in Postman.
    - Upon success, you will receive a list of all jobs in your Greenhouse instance, including their **ID, title, departments, status** and **offices**.

## **Step 3: Connect Greenhouse to Creator Studio**

- In Creator Studio, create a new Plugin.
    - Click on **Plugins** > **Actions** tab
    - Click on **CREATE** to create a new plugin
    - Fill in the Base URL: `https://harvest.greenhouse.io` and Endpoint URL: `/v1/jobs`
    - Click on **Use Existing Authorization** > select the **Basic Auth** > Click on **Apply**. This will populate the Authorization section of the API Editor.
    - Click on **Test** to verify if the Connector setup is successful. If successful, click on the **Save** button.
        
        ![Screenshot 2025-02-20 at 6.39.45 PM.png](Greenhouse%2008d7bcd3089a4176902fb7930a44389d/Screenshot_2025-02-20_at_6.39.45_PM.png)
        
    - Provide the **Connector Name**, **API Name** and **API Description** as shown below, then click on **Save**.
        
        ![Screenshot 2025-02-20 at 6.53.49 PM.png](Greenhouse%2008d7bcd3089a4176902fb7930a44389d/Screenshot_2025-02-20_at_6.53.49_PM.png)
        
    - This will create a connector for the Greenhouse instance with the specified connector name, which can be used in the future when creating actions.

# Congratulations!

You've successfully integrated Greenhouse’s API with Creator Studio. This opens up a variety of automation and integration possibilities within your Greenhouse environment.
