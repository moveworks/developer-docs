---
availability: VALIDATED
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/github-integration-logo-primary.svg
name: GitHub
solution_tags:
- General
---

# **Introduction**

GitHub provides a powerful API that allows developers to interact with GitHub services programmatically. To safeguard access and ensure that only authorized users can perform actions via the API, GitHub employs authentication mechanisms, including Personal Access Tokens (PATs). This guide will explain how to create and use a Personal Access Token for GitHub's APIs and connect it to Agent Studio.

# **Prerequisites**

- A GitHub account. If you do not have one, sign up at **[GitHub](https://github.com/join)**.
- [Install Postman](https://www.postman.com/downloads/)

# Walkthrough

## **Step 1: Create a Personal Access Token**

1. **Log in** to your GitHub account.
2. Navigate to **Settings** > **Developer settings** > **Personal access tokens > Tokens (classic)** ([https://github.com/settings/tokens](https://github.com/settings/tokens))
    
    ![Untitled](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled.png)
    
3. Click on **Generate new token > Generate new token (classic)**
    
    ![Untitled](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled%201.png)
    
4. Set the Note, Expiration and the Scopes based on your use case and click on **Generate Token**. By default, grant `repo:status` and `public_repo` scopes.
    
    ![Untitled](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled%202.png)
    
5. If your organization is protected by SAML enforcement you must grant your Personal Access token access to this organization. Click on **Configure SSO** and Authorize the organizations that you want to access through the token.
    
    ![Untitled](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled%203.png)
    
6. You will receive a confirmation like the following once its configured:
    
    ![Untitled](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled%204.png)
    

> Note: Using this token, you will be able to access information from your GitHub Account as well as the Organizations you have authorized the token to access.
> 

## **Step 2: Test with Postman**

We will be testing out the [List all Public Repositories of a User](https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#list-organization-repositories) API

1. Set up your request in Postman with your `Personal access token`.
    
    ```bash
    curl --location 'https://api.github.com/users/{{github_username}}/repos' \
    --header 'Authorization: Bearer {{github_classic_token}}'
    ```
    
    Set up the following:
    
    - `github_username`: The username of your GitHub account
2. Import this request into Postman and execute it. You should get a successful response of your repositories’ information.
    
    ![Postman-response](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled%205.png)
    

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Base URL: `https://api.github.com`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Header Auth Key: `Authorization`
    - Header Auth Value Pattern: `Bearer %s`
    - Api Key: `{{github_classic_token}}`
2. Define your API action for channel creation.
    
    ```bash
    curl --location 'https://api.github.com/users/{{github_username}}/repos' \
    --header 'Authorization: Bearer {{github_classic_token}}'
    ```
    
    - Path: `/users/{{github_username}}/repos`
    - Method: `GET`
3. Test your setup in Agent Studio and look for a successful execution.
    
    ![CreatorStudio-test](Authentication%20Tutorial%20GitHub%2089effaebc900474193ba55ebb85340d6/Untitled%206.png)
    

# **Congratulations!**

You've successfully integrated GitHub’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your GitHub organization.
