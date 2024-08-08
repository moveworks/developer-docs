---
name: Smartsheet
description: Connect Creator Studio to Smartsheet
time_in_minutes: 15
difficulty_level: Beginner
---

# **Introduction**

Smartsheet’s API provides a robust platform to integrate and streamline tasks in your Smartsheets. This guide will demonstrate how to create a Smartsheet application, generate an API Key to authenticate with Smartsheet’s API, and build a new Connector to test it in Creator Studio.

# **Prerequisites**

- Access to a Smartsheet workspace
- [Install Postman](https://www.postman.com/downloads/)


# **Walkthrough**

## **Step 1: Create a Personal Access Token**

1. Navigate to https://app.smartsheet.com/b/home
2. Navigate to ‘Account’ icon at bottom left > ’Apps & Integrations’ > ‘API Access’ note API token or click ‘Generate new access token’ to generate a new one.    
    ![Create a Personal Access Token](./Authentication%20Guide%20Smartsheet/smartsheet-1.png)

## **Step 2: Test Your API**

1. To get a list of all your sheets, try the following command in Postman:
    
    ```bash
    curl -X GET "https://api.smartsheet.com/2.0/sheets" \
    -H "Authorization: Bearer {{smartsheet_api_key}}"
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of your user information.
    
    ![Postman Request Response](./Authentication%20Guide%20Smartsheet/smartsheet-2.png)
    

## **Step 3: Integrate with Creator Studio**

1. Navigate to ‘Creator Studio Connectors’
2. Click ‘Create’ and fill in values like screenshot below
    1. **Description**: Smartsheet Connector
    2. **Base Url:** `https://api.smartsheet.com`
    3. **Auth** **Config:** Api Key Auth
    4. **Api Key Auth Auth Type:** Header Auth
    5. **Header Auth Key:** Authorization
    6. **Header Auth Value Pattern:** `Bearer %s`
    7. **API Key:** Paste your API Key from Step 1
        
        ![Creator Studio Connector Configuration](./Authentication%20Guide%20Smartsheet/smartsheet-3.png)
    

# **Congratulations!**

You've successfully integrated Smart sheet’s API with Creator Studio. This opens up a variety of automation and integration possibilities within your Smartsheet workspace.