---
availability: VALIDATED
difficulty_level: BEGINNER
fidelity: GUIDE
name: Zoom
time_in_minutes: 30
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
    
## Step 2: Connect Zoom to Agent Studio

1. In Agent Studio, create a new **HTTP Action** and Test it.
   - Go to Agent Studio -> **Actions** -> **HTTP Actions** -> **Create**

      ![Untitled](Zoom%201b5588d8909f80eab403e031bd13a14e/Pasted%20Graphic.png)

      ![Untitled](Zoom%201b5588d8909f80eab403e031bd13a14e/Pasted%20Graphic%201.png)
   
   - Click on **Create New Connector** and fill the following information.
        - Base Url: **https://api.zoom.us/v2**
        - Name: Name Accordingly
        - Description: Give a Suitable Description.
        - Auth Config: **Oauth2**
        - OAuth Grant Type: **Client Credentials Grant**
        - Client ID: **Client Id from the Zoom app you just created**
        - Client Secret: **Client Secret from the Zoom app you just created**
        - OAuth Token Url: **https://login.microsoftonline.com/{{tenant_id}}/oauth2/token**
        - OAuth2 Client Authorization: **OAuth 2.0 with Request Body**
        - Oauth2 Custom Oauth Request Options Additional Request Data:
            - account_id : {{account id from the zoom app you created}}
            - grant_type : account_credentials
  
        ![Untitled](Zoom%201b5588d8909f80eab403e031bd13a14e/as1.png)
   
        ![Untitled](Zoom%201b5588d8909f80eab403e031bd13a14e/as2.png)
   
2. Add your API details and Test.
    - Fill the endpoint as : **/users/{{userid}}**
    - Enter **“me”** or a **registered email ID** as **{{userid}}**.
    - Click Test
   
      ![Untitled](Zoom%201b5588d8909f80eab403e031bd13a14e/as3.png)

# Congratulations!

You just connected your Zoom App to Agent Studio.
