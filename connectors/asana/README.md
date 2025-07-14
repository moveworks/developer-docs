---
accreditations:
- ajaymerchia
- DEFAULT
availability: VALIDATED
difficulty_level: BEGINNER
fidelity: GUIDE
name: Asana
time_in_minutes: 15
---

# **Introduction**

Asana's API provides a robust platform to integrate and streamline tasks in your Asana workspace. This guide will demonstrate how to create an Asana Personal Access Token (PAT), authenticate with Asana's API, and test it in Creator Studio. 

# **Prerequisites**

- Access to an Asana workspace
- [Install Postman](https://www.postman.com/downloads/)

# **Walkthrough**

## **Step 1: Create a Personal Access Token**

1. Go to the [Asana developer console](https://app.asana.com/0/my-apps)
2. Click on `Create New Token` under `Personal access tokens`. 
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled.png)
    
3. Provide a description for your key
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled%201.png)
    
4. Copy the token
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled%202.png)
    

## **Step 2: Test with Postman**

1. Set up your request in Postman with your `Personal access token`.
    
    ```bash
    curl https://app.asana.com/api/1.0/users/me \
      -H "Authorization: Bearer {{YOUR_PERSONAL_ACCESS_TOKEN}}"
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of your user information.
    
    ![Untitled](Authentication%20Guide%20Asana%20187c2020eb774256ab9e452a4efdb183/Untitled%203.png)
    

## **Step 3: Integrate with Creator Studio**

1. In Creator Studio, create a new connector with the following configuration:
    - Base URL: `https://app.asana.com/api`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `Authorization`
    - Header Auth Value Pattern: `Bearer %s`
    - Api Key: `{{your_personal_access_token}}`
2. Define your API action for channel creation.
    
    ```bash
    curl https://app.asana.com/api/1.0/users/me \
      -H "Authorization: Bearer {{YOUR_PERSONAL_ACCESS_TOKEN}}"
    ```
    
    - Path: `/1.0/users/me`
    - Method: `GET`
3. Test your setup in Creator Studio and look for a successful execution.
    
    ```json
    
    {
    	"data": {
    		"email": "************",
    		"gid": "1200311869439617",
    		"name": "Ajay Merchia",
    		...
    	}
    }
    ```
    

# **Congratulations!**

You've successfully integrated Asana’s API with Creator Studio. This opens up a variety of automation and integration possibilities within your Asana workspace.
