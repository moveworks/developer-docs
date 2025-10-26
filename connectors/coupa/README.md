---
accreditations:
- indrapaul24
- DEFAULT
availability: VALIDATED
difficulty_level: BEGINNER
drop_accreditations:
- ajaymerchia
fidelity: GUIDE
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/coupa-integration-logo-primary.svg
name: Coupa
time_in_minutes: 15
---

# **Introduction**

Coupa is a cloud-based platform that streamlines business spend management. It offers robust tools for procurement, invoicing, and expense management. This guide will demonstrate how to create an **OAuth Client** in Coupa, authenticate with Coupa’s API, and test it in Agent Studio.

# **Prerequisites**

- Access to the Setup module in a Coupa instance
- [Install Postman](https://www.postman.com/downloads/)

# Walkthrough

## **Step 1:** OAuth Client creation and scope assignment

1. Navigate to **Setup > Oauth2/OpenID Connect Clients** (/oauth2/clients).
    
    ![Untitled](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled.png)
    
2. Click **Create** and select **Client Credentials** in the **Grant type** dropdown.
3. Complete the fields and select the scopes (access permissions) the Client needs.
    - **Name:** Moveworks Client
    - **Login Details** → The details of the account you are using to create the client
    - **Scopes** → Select the scopes based on the requirement of your use case. For example, if you want to build a use case that requires fetching expense reports, scroll down and select the **`core.expense.read`** scope.
    
    ![https://compass.coupa.com/Import/Integrate/Technical_Documentation/API/OAuth_Transition/01_Transition_Guide/create_client.jpg](https://compass.coupa.com/Import/Integrate/Technical_Documentation/API/OAuth_Transition/01_Transition_Guide/create_client.jpg)
    
4. Once you save the Client, you will get the Client credentials: **Identifier**, **Secret**, **Oidc Scopes**.
Copy all three of them and store in a secure place. We will need these later to generate the OAuth Token.
    
    ![https://compass.coupa.com/Import/Integrate/Technical_Documentation/API/OAuth_Transition/01_Transition_Guide/oath_client_info.jpg](https://compass.coupa.com/Import/Integrate/Technical_Documentation/API/OAuth_Transition/01_Transition_Guide/oath_client_info.jpg)
    

## **Step 2: Test with Postman**

1. Set up your request in Postman with your `Client Credentials`.
    
    ```bash
    curl --location 'https://{{INSTANCE_DOMAIN}}/oauth2/token' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode 'grant_type=client_credentials' \
    --data-urlencode 'client_id={{Identifier}}' \
    --data-urlencode 'client_secret={{Secret}}' \
    --data-urlencode 'scope={{SPACE_SEPARATED_LIST_OF_SCOPES}}'
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of your user information.
    
    ![Untitled](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled%201.png)
    

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - **Connection Name:** Coupa Connector
    - Base URL: `https://{{INSTANCE_DOMAIN}}` (For example: `https://moveworks-usa-coupalink-demo.coupacloud.com`)
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Client Credentials Grant`
    - Client ID: `{{Identifier}}`
    - Client Secret: `{{Secret}}`
    - Client Credentials Grant Scope: `{{SPACE_SEPARATED_LIST_OF_SCOPES}}`
    - Oauth2 Token Url: `https://{{INSTANCE_DOMAIN}}/oauth2/token`
    Click on `Save` to submit the credentials and your connector will be ready.
2. Add your API details. You can read more about setting up API actions from our [API configuration reference](https://developer.moveworks.com/creator-studio/integrations/outbound/api-configuration/).
    
    ```bash
    curl --location 'https://{{INSTANCE_DOMAIN}}/api/expense_reports' \
    --header 'Accept: application/json' \
    --header 'Authorization: Bearer {{generated_bearer_token}}'
    ```
    
    - API endpoint Path: `/api/expense_reports`
    - Method: `GET`
    - Headers:
        
        
        | Key | Value |
        | --- | --- |
        | Accept | application/json |
    - Query parameters:
        
        
        | Key | Value |
        | --- | --- |
        | limit | 1 |
3. Test your setup in Agent Studio and look for a successful execution.
    
    ![Untitled](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled%202.png)
    

# **Congratulations!**

You've successfully integrated Coupa’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your Coupa instance.