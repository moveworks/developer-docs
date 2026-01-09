---
availability: VALIDATED
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/zoom-integration-logo-primary.svg
name: Zoom
solution_tags:
- General
---

# **Introduction**

Integrating Zoom with Agent Studio allows seamless incorporation of virtual meeting data and collaboration insights to enhance your workflows. By leveraging Zoom's robust REST API and using appropriate authentication mechanisms, you can automate meeting data management and enhance your collaborative processes. This guide provides a step-by-step process to connect your Zoom instance to Agent Studio and test the integration for efficient meeting management and collaboration.

# **Prerequisites**

- A **Pro or Business Zoom account** is necessary for access to some endpoints.
- A developer account on **Zoom Marketplace**.

# **Step 1: Create a Server-to-Server App**

1. Navigate to the Zoom App Creation Page: [https://marketplace.zoom.us/develop/create](https://marketplace.zoom.us/develop/create)
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image.png)
    
2. Select **Server-to-Server OAuth App**, click **Create**, and name your app.
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%201.png)
    
3. Name your app (eg. *Moveworks Server2Server App*).
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%202.png)
    
4. After naming your app you will be brought to this page, make sure to save your `Account ID`, `Client ID`, and `Client Secret`. Click **Continue** after saving these values.
    
    ![Screenshot 2025-03-17 at 1.27.17 PM.png](Zoom%201b5588d8909f80eab403e031bd13a14e/Screenshot_2025-03-17_at_1.27.17_PM.png)
    
5. Fill out the required fields on the Information screen and click **Continue.**
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%203.png)
    
6. **Add Scopes** according to your needs. Reference this document here: [https://developers.zoom.us/docs/integrations/oauth-scopes-overview/](https://developers.zoom.us/docs/integrations/oauth-scopes-overview/)
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%204.png)
    
7. **Continue** to the next page and click **Activate your app.**
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%205.png)
    
8. You should see a success message confirming your app is activated.
    
    ![Screenshot 2025-03-17 at 1.53.40 PM.png](Zoom%201b5588d8909f80eab403e031bd13a14e/Screenshot_2025-03-17_at_1.53.40_PM.png)
    

# **Step 2: Connect Zoom to Agent Studio**

- In Agent Studio, create a new HTTP Connector with the following configuration:
    
    ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%206.png)
    
    - Connector Name: Assign a name to the connector
    - Base URL : [`https://api.zoom.us`](https://api.zoom.us/v2/)
    - Auth config : **Oauth2**
    - Oauth2 Grant Type : **Client Credentials Grant**
    - Client ID : `Client Id` from the Zoom app you just created.
    - Client Secret : `Client Secret` from the Zoom app you just created.
    - Oauth2 Token Url: [https://zoom.us/oauth/token](https://zoom.us/oauth/token)
    - Oauth2 Client Authentication: OAuth 2.0 with Request Body
    - Oauth2 Custom Oauth Request Options Additional Request Data:
        - `grant_type : account_credentials`
        - `account_id : {{account id from the zoom app you created}}`
        
        ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%207.png)
        
        - Click on Save.
- You can test your Connector by setting up a demo API action:
    - Example API: **Retrieve an user :**
        - `GET /users/{userId}`: View a user's information on a Zoom account.
    - Fill out the Endpoint URL `/users/{userId}` and pass ***“me”*** or a ***registered email ID*** as `{userID}` .
    - Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below:
        
        ![image.png](Zoom%201b5588d8909f80eab403e031bd13a14e/image%208.png)
        

# Congratulations!

You just connected your Zoom App to Agent Studio.