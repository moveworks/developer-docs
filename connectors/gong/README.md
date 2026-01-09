---
availability: VALIDATED
description: Gong Connector.
logo: https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiRxcqf6E93pRSDFSa2o8vuXjzc6IdaafuWA&s
name: Gong
solution_tags:
- General
---

# **Introduction**

Integrating Gong with Agent Studio allows seamless integration of conversation intelligence and sales insights to enhance your workflows. By leveraging Gong's robust REST API and using appropriate authentication mechanisms, you can automate call data management and enhance your sales processes. This guide provides a step-by-step process to connect your Gong instance to Agent Studio and test the integration for efficient sales collaboration.

Let’s get started!

# **Prerequisites**

• **API Token:** To obtain credentials, you must be a **Gong administrator**.

# **Connect with Basic Authentication**

## **Step 1: Get Your Gong API Token**

To authenticate the Gong Connector, you'll need to obtain API credentials from your Gong administrator account:

1. Navigate to **Company Settings > Ecosystem > API** in your **Gong Administrator account**.
    
    ![image.png](Gong%20182588d8909f80689fd6cafe7586de60/image.png)
    
2. Click Get API Key to generate your access key and secret.
    
    ![image.png](Gong%20182588d8909f80689fd6cafe7586de60/image1.png)
    
    ![image (1).png](Gong%20182588d8909f80689fd6cafe7586de60/image3.png)
    
    ![image.png](Gong%20182588d8909f80689fd6cafe7586de60/image2.png)
    
3. Use these credentials to authenticate the connector within Moveworks.

## Step 2: Connect Gong to Agent Studio

1. In Agent Studio, create a new **HTTP Action** and Test it.
   - Go to Agent Studio -> **Actions** -> **HTTP Actions** -> **Create**

      ![Untitled](Gong%20182588d8909f80689fd6cafe7586de60/Pasted%20Graphic.png)

      ![Untitled](Gong%20182588d8909f80689fd6cafe7586de60/Pasted%20Graphic%201.png)
   
   - Click on **Create New Connector** and fill the following information.
        - Base Url: Base url received by Gong (for eg. https://us-12345.api.gong.io)
        - Name: Name Accordingly
        - Description: Give a Suitable Description.
        - Auth Config: **Basic Auth**
        - OAuth Grant Type: **Client Credentials Grant**
        - **Username**: Your Access Key from the previous step.
        - **Password**: Your client secret.
  
        ![Untitled](Gong%20182588d8909f80689fd6cafe7586de60/as1.png)
   
   
2. Add your API details and Test.
    - Fill the endpoint as : **/v2/users**
    - Click Test
   
      ![Untitled](Gong%20182588d8909f80689fd6cafe7586de60/as2.png)

# Congratulations!

You just connected your Gong App to Agent Studio.