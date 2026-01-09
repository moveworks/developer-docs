---
availability: VALIDATED
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/slack-integration-logo-primary.svg
name: Slack
solution_tags:
- General
---

# **Introduction**

Slack's API provides a powerful way to automate tasks in your Slack workspace. This guide will show you how to create a Slack app, authenticate with Slack's API, and use it for channel creation in your workspace, all through Agent Studio.

# **Prerequisites**

- Admin access to a Slack workspace ([Create a Slack Workspace](https://slack.com/get-started#/create))

# **Walkthrough**

## **Step 1: Set Up Your Slack App**

1. Go to [Your Apps](https://api.slack.com/apps) on Slack API's website.
2. Click on **Create New App** and choose **From scratch**.
3. Name your app (e.g., **Agent Studio Bot**) and select your Slack workspace.
    
    ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/image.png)
    

## **Step 2: Obtain API Credentials**

### Identify Permissions

1. Go to [Slack API Methods](https://api.slack.com/methods) and find the APIs you want to execute. Each API endpoint specifies exactly what scopes you will need.

![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled%201.png)

### **Add Permissions**

1. In your app settings, navigate to **OAuth & Permissions**.
2. Under **Bot Token Scopes**, add necessary permissions like **channels:manage** to create channels.
    
    ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Untitled%202.png)
    

### **Install App to Workspace**

1. Click **Install App to Workspace**.

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new **HTTP Action** and Test it.
   - Go to Agent Studio -> **Actions** -> **HTTP Actions** -> **Create**

      ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Pasted%20Graphic.png)

      ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Pasted%20Graphic%201.png)
   
   - Click on **Create New Connector** and fill the following information.
        - **Base Url**: https://slack.com/api
        - **Name**: Name Accordingly
        - **Description**: Give a Suitable Description
        - **Auth Config**: Api Key Auth
        - **Api Key Auth Auth Type**: Header Auth
        - **Header Auth Key**: Authorization
        - **Header Auth Value Pattern**: Bearer %s
        - **Api Key**: {{xoxb_your_bot_access_token}}
  
        ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Pasted%20Graphic%206.png)   
    
   
2. Add your API details and Test.
    - Fill the endpoint as : **/conversations.list**
    - Click Test
      
      ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Pasted%20Graphic%208.png)

      ![Untitled](Authentication%20Guide%20Slack%20API%203f2aff0ceb4041d697444d8585eb3357/Pasted%20Graphic%207.png)

# **Congratulations!**

You've successfully integrated Slack's API with Agent Studio. This opens up a variety of automation and integration possibilities within your Slack workspace.
