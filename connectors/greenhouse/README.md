---
availability: VALIDATED
logo: https://cdn.prod.website-files.com/62fe5b9ef9e612fe4fed7ff1/63bf4122ced9145885a65b12_g-icon-green.png
name: Greenhouse
---

# **Introduction**

Connecting Greenhouse to Agent Studio enables seamless automation of recruiting workflows, from job requisition to candidate management. By leveraging Greenhouse’s API and using API Key Authentication, you can automate hiring processes, retrieve recruiting analytics and improve collaboration between recruiters, hiring managers and interviewers. This guide provides a step-by-step process to connect your Greenhouse instance to Agent Studio and test the integration for streamlined recruiting operations.

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

## **Step 3: Connect Greenhouse to Agent Studio**

- In Agent Studio, create a new connector with the following configuration:
    - **Base URL**: `https://harvest.greenhouse.io`
    - **Auth Config**: Basic Auth
    - **Username**: Harvest API key as the username
- Test your Connector by setting up a demo API action
    - In Agent Studio, create a new Plugin.
        - Click on **Actions** > **HTTP Actions** tab
        - Click on **Create** to create a new plugin
    - Set up your API Connection to configure the API endpoint based on the following:
        - Select **Inherit from existing connector** under the **Connector** section > choose the **Greenhouse** connector that you just created. This will populate the Authorization section of the API Editor.
        - Fill out the Endpoint URL: /v1/jobs
    - Click on **Test** to check if the Connector setup was successful and expect a successful response.

# Congratulations!

You've successfully integrated Greenhouse’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your Greenhouse environment.