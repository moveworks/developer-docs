---
difficulty_level: BEGINNER
fidelity: GUIDE
name: Jira
time_in_minutes: 15
---

# **Introduction**

Connecting Jira to Creator Studio allows seamless integration of project management and issue tracking capabilities. By leveraging Jira's robust REST API and using Basic Authentication, you can automate ticket management and enhance workflows. This guide provides a step-by-step process to connect your Jira instance to Creator Studio and test the integration for efficient project collaboration.

# **Prerequisites**

- **Access to a Jira Instance**: Ensure you have access to either a **Sandbox or Production** Jira instance, depending on your testing environment.
- **Install Postman**: Download and install Postman or another API testing tool to interact with Jira's REST API.
- **API Token**: You **do not need to be an Atlassian admin** to create a new API token in Jira. Any user with an Atlassian account can generate an API token for authentication purposes.

# **Connect with Basic Authentication**

## **Step 1: Get Your Jira API Token**

- Log in to Your Atlassian Account :
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
        
    - Name the token (e.g., "Creator Studio").
        
        ![Screenshot 2024-12-03 at 9.58.40 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-03_at_9.58.40_PM.png)
        
    - Click Create and copy the generated API token.
    
      ![Screenshot 2024-12-03 at 9.59.00 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-03_at_9.59.00_PM.png)
    
    - Keep this token secure as it won't be displayed again
- Note Your Jira Instance URL:
    - Your Jira URL is in the format: `https://<your-site>.atlassian.net`

## **Step 2: Assign Necessary Permissions**

- Ensure your account has sufficient permissions to perform the required API operations.
    - Check User Roles:
        - Verify that your Jira user has the Administer Projects or other necessary permissions.
        - For more details, refer to the [Jira Cloud REST API documentation](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/).
    - Grant Permissions If Needed:
        - If using a service account, ensure it is granted project and API permissions required for your integration

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

## **Step 4: Connect Jira to Creator Studio**

- In Creator Studio, create a new connector with the following configuration:
    - **Base URL**: `https://<your-site>.atlassian.net`
    - **Auth Config**: Basic Auth
    - **Username**: username from previous steps
    - **Password**: password from previous steps

      ![Screenshot 2024-12-02 at 12.38.38 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-02_at_12.38.38_PM.png)

- Test your Connector by setting up a demo API action
    - In Creator Studio, create a new Plugin.
        - Click on **Plugins** > **Actions** tab
        - Click on **CREATE** to create a new plugin
    - Set up your API Connection to configure the API endpoint based on the following:
        - Click on **Use Existing Connector** > select the **Jira** connector that you just created > Click on **Apply**. This will populate the Authorization section of the API Editor.
        
          ![Screenshot 2024-12-04 at 1.47.43 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-04_at_1.47.43_PM.png)
        
        - Fill out the Endpoint URL: `/rest/api/3/project`
    - Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below
    
      ![Screenshot 2024-12-04 at 1.49.34 PM.png](Jira%20cd90585e2a5044cf83fed803cba5bdbf/Screenshot_2024-12-04_at_1.49.34_PM.png)
    

# Congratulations!

You've successfully integrated Jira’s API with Creator Studio. This opens up a variety of automation and integration possibilities within your Jira environment.