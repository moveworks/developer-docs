---
name: Slack
fidelity: GUIDE
time_in_minutes: 15
difficulty_level: BEGINNER
---

# **Introduction**

Slack's API provides a powerful way to automate tasks in your Slack workspace. This guide will show you how to create a Slack app, authenticate with Slack's API, and use it for channel creation in your workspace, all through Creator Studio.

# **Prerequisites**

- Admin access to a Slack workspace ([Create a Slack Workspace](https://slack.com/get-started#/create))
- [Install Postman](https://www.postman.com/downloads/)

# **Walkthrough**

## **Step 1: Set Up Your Slack App**

1. Go to [Your Apps](https://api.slack.com/apps) on Slack API's website.
2. Click on `Create New App` and choose `From scratch`.
3. Name your app (e.g., `Creator Studio Bot`) and select your Slack workspace.
    
    ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled.png)
    

## **Step 2: Obtain API Credentials**

### Identify Permissions

1. Go to [Slack API Methods](https://api.slack.com/methods) and find the APIs you want to execute. Each API endpoint specifies exactly what scopes you will need.

![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled%201.png)

### **Add Permissions**

1. In your app settings, navigate to `OAuth & Permissions`.
2. Under `Bot Token Scopes`, add necessary permissions like `channels:manage` to create channels.
    
    ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled%202.png)
    

### **Install App to Workspace**

1. Click `Install App to Workspace`.

## **Step 3: Test with Postman**

1. Set up your request in Postman with your `Bot User OAuth Access Token`.
    
    ```bash
    curl -X POST 'https://slack.com/api/conversations.create' \
    --header 'Authorization: Bearer {{xoxb_your_bot_access_token}}' \
    --data-urlencode 'name=test-channel'
    ```
    
2. Import this request into Postman and execute it.
    
    ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled%203.png)
    
3. Check for a successful response with details of the newly created channel.
    
    ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled%204.png)
    

## **Step 4: Integrate with Creator Studio**

1. In Creator Studio, create a new connector with the following configuration:
    - Base URL: `https://slack.com/api`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `Authorization`
    - Header Auth Value Pattern: `Bearer %s`
    - Api Key: `{{xoxb_your_bot_access_token}}`
2. Define your API action for channel creation.
    
    ```bash
    curl -X POST '{{base_url}}/conversations.create' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode 'name={{channel-name}}'
    ```
    
    - Path: `/conversations.create`
    - Method: `POST`
    - Headers
        
        
        | Key | Value |
        | --- | --- |
        | Content-Type | application/x-www-form-urlencoded |
    - Body:
        
        ```text
        name=channel-name
        ```
        
    
3. Test your setup in Creator Studio and look for a successful execution.
    
    ```json
    
    {
        "ok": true,
        "channel": {
            "id": "C1234567890",
            "name": "channel-name",
            "is_channel": true,
            ...
        }
    }
    ```
    

# **Congratulations!**

You've successfully integrated Slack's API with Creator Studio. This opens up a variety of automation and integration possibilities within your Slack workspace.
