---
availability: VALIDATED
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/sap-ariba-integration-logo-.svg
name: SAP Ariba
---

# Introduction

SAP Ariba is a comprehensive cloud-based solution for procurement and supply chain management. This guide covers the access needs that are required to establish a stable connection to your Ariba Instance, authenticate with SAP Ariba’s APIs, and test it successfully in Tool Studio.

# Prerequisites

- Be a Designated Support Contact (DSC) for your organization (required for accessing Ariba’s Developer Portal)
- Admin access to your Ariba instance
- [Install Postman](https://www.postman.com/downloads/) for testing the API connection

# Walkthrough

## Step 1: Set Up the Application and Enable API Access

1. Visit [developer.ariba.com](http://developer.ariba.com) to access the SAP Ariba developer portal
    1. NOTE: Only **Designated Support Contacts (DSC) have access / can request access** to the developer portal
2. Once in the developer portal, begin by creating a new application:
    1. Click **Manage** from the left navigation menu.
    2. Click **Applications or create a new application**
        
        ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled.png)
        
3. Once the application has been created, you will need to request API access from your Admin.
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%201.png)
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%202.png)
    
4. You then select the “Actions” dropdown and request API access from your admin
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%203.png)
    
5. Select the specific API endpoint, tenant, and realm associated with this access:
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%204.png)
    
    1. Select the API name in the **API Names** dropdown – this is the API that you want to access using this application.
    2. Enter the realm name in the **Realm Name** field – this is the site that you want the application to be enabled for.
    3. Enter the AN-ID in the **AN-ID** field. 
    4. Select the radio button corresponding to the realm type: **Production** or **Test**.
    5. Click **Submit**.
        
        ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%205.png)
        
6. Once you have submitted a request asking your admin for API access, your admin then has to request API access from Ariba support for the application
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%206.png)
    
    Please allow 12 hours for the API to be enabled. The application Client ID will be listed under **Account Settings** > **API Management Section** within your Ariba account.
    
    Reference: [https://helpcenter.ariba.com/index.html?sap-language=en#/item&/i/KB0399724](https://helpcenter.ariba.com/index.html?sap-language=en#/item&/i/KB0399724)
    
7. Ariba Support will have to now approve your access
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%207.png)
    
    - **NOTE**: This is what the email looks like once you have been approved API access
        
        ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%208.png)
        
8. Go back to “Actions” dropdown to generate an OAuth secret
    
    **(This is only visible to an administrator)**
    
    The following steps then need to be taken by a user with **Organization Admin** privileges:
    
    1. Click **Manage** in the left navigation menu.
    2. Click **Applications**.
    3. Search for the application.
    4. Click the **Approve** button.
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%209.png)
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%2010.png)
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%2011.png)
    
9. You’ll notice that you also have a **OAuth client ID** which will be used in conjunction with your **OAuth secret**
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%2012.png)
    
10. All steps have now been completed
    
    ![Untitled](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/Untitled%2013.png)
    


> 📝 Once the above section is complete, you will have the following **OAuth Client Credentials** with you:
>
> - **OAuth Server URL Prefix** (You can find this value for your region on the SAP Ariba developer portal on the discovery page for any API, in the `Environment details` table)
> - **API Public URL** (You can find this value for your region on the SAP Ariba developer portal on the discovery page for any API, in the `Environment details` table)
> - **Application Key**
> - **OAuth Client ID**
> - **OAuth Client Secret**
> - **Realm used by Application**


## Step 2: Test Access token generation **using Postman (or similar tools)**

1. Set up your request in Postman with the `OAuth Client Credentials` to generate the Access token
    
    ```bash
    curl --location --request POST '{{oauth_server_url_prefix}}/v2/oauth/token?grant_type=openapi_2lo' \
    --user '{{ariba_client_id}}:{{ariba_client_secret}}' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --header 'APIKey: {{ariba_application_key}}'
    ```
    
    ![image.png](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/image.png)
    
    Replace the values within `{{_}}` with the actual values you obtained from Step 1 and execute the API. You should get a successful response with the `access_token` 
    

Now, we will implement the connector in Tool Studio using the Client Credentials authentication method.

## Step 3: Integrate with Tool Studio

1. In Tool Studio, create a new connector with the following configuration (please name it accordingly to identify while creating use cases):
    - Base URL: Will be your **API Public URL** (For eg., `https://openapi.ariba.com/api` for US Data center)
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Client Credentials Grant`
    - Client ID: `{{ariba_client_id}}`
    - Client Secret: `{{ariba_client_secret}}`
    - Oauth2 Token Url: `{{oauth_server_url_prefix}}/v2/oauth/token` (For eg., `https://api.ariba.com/v2/oauth/token` for US Data center)
    - Oauth2 Client Authentication: `OAuth 2.0 with Basic Auth Header set to username and password`
    - Oauth2 Custom Oauth Request Options Additional Headers:
        - Key: `APIKey`
        - Value: Your **Application Key**
    
    Click on `Save` to submit the credentials and your connector will be ready.
    
2. Test your Connector by setting up a demo API action
    1. In Tool Studio, create a new API Action.
        1. Go to the Actions tab within Plugins workspace
        2. Click on CREATE to create a new API Action
    2. Set up your API Connection to configure the API endpoint based on the following:
        1. Click on Use Existing Connector > select the SAP Ariba connector that you just created > Click on Apply. This will populate the Authorization section of the API Editor
            
            ![image.png](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/image%201.png)
            
        2. Fill out the Endpoint URL: GET `/approval/v2/{{env}}/pendingApprovables`. The `env` here can be either `prod` or `sandbox`
        3. Add the following Headers:
            - Header 1:
                - Key: `APIKey`
                - Value: Your **Application Key** 
            - Header 2:
                - Key: `Accept`
                - Value: `application/json` 
            
        4. Add the following Params:
            - Key: `realm`
            - Value: **Realm used by Application** 
            
3. Click on Test to check if the Connector setup was successful and expect a successful response as shown below
    
    ![image.png](SAP%20Ariba%20a174fbebeb184d33a656ab9c3e79673b/image%202.png)
    

# Congratulations

You have successfully integrated SAP Ariba’s APIs with Tool Studio. This opens up a variety of automation and integration possibilities using your SAP Ariba instance.
