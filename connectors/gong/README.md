---
description: Gong Connector.
fidelity: IDEA
name: Gong

---

# **Introduction**

Integrating Gong with Creator Studio allows seamless integration of conversation intelligence and sales insights to enhance your workflows. By leveraging Gong's robust REST API and using appropriate authentication mechanisms, you can automate call data management and enhance your sales processes. This guide provides a step-by-step process to connect your Gong instance to Creator Studio and test the integration for efficient sales collaboration.

Let’s get started!

# **Prerequisites**

• **API Token:** To obtain credentials, you must be a **Gong administrator**.

# **Connect with Basic Authentication**

## **Step 1: Get Your Gong API Token**

To authenticate the Gong Connector, you'll need to obtain API credentials from your Gong administrator account:

1. Navigate to **Company Settings > Ecosystem > API** in your **Gong Administrator account**.
    
    ![image.png](Gong%20182588d8909f80689fd6cafe7586de60/image.png)
    
2. Click Get API Key to generate your access key and secret.
    
    ![image.png](Gong%20182588d8909f80689fd6cafe7586de60/image%201.png)
    
    ![image (1).png](Gong%20182588d8909f80689fd6cafe7586de60/image_(1).png)
    
    ![image.png](Gong%20182588d8909f80689fd6cafe7586de60/image%202.png)
    
3. Use these credentials to authenticate the connector within Moveworks.

## **Step 2: Connect Gong to Creator Studio**

- In Creator Studio, create a new action with the following configuration:
    - **Base URL**: Base url received by Gong
    - **Auth Config**: Basic Auth
    - **Username**: username from previous steps
    - **Password**: password from previous steps
        
        ![Screenshot 2025-03-06 at 11.41.31 PM.png](Gong%20182588d8909f80689fd6cafe7586de60/Screenshot_2025-03-06_at_11.41.31_PM.png)
        
    - Click on Save and Name the connector as **Gong.**
        
        ![Screenshot 2025-03-06 at 11.44.38 PM.png](Gong%20182588d8909f80689fd6cafe7586de60/Screenshot_2025-03-06_at_11.44.38_PM.png)
        
    - Click on Save.
    
- To test your Connector by setting up a demo API action
    - Example API: **Retrieve all users**
        - The GET /v2/users Lists all of the company's users. This is a simple endpoint for testing authentication and retrieving all the users of a company without needing any query parameters.
    - Fill out the Endpoint URL: /v2/users
    - Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below:
        
        ![Screenshot 2025-03-02 at 12.15.25 PM.png](Gong%20182588d8909f80689fd6cafe7586de60/Screenshot_2025-03-02_at_12.15.25_PM.png)
        

# Congratulations!

You've successfully integrated Gong’s API with Creator Studio. This opens up a variety of automation and integration possibilities within your Gong environment.