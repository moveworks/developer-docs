---
accreditations:
- indrapaul24
- DEFAULT
availability: VALIDATED
difficulty_level: BEGINNER
drop_accreditations:
- ajaymerchia
fidelity: GUIDE
name: Coupa
time_in_minutes: 15
---

## **Introduction**

Coupa is a cloud-based platform that streamlines business spend management. It provides comprehensive tools for procurement, invoicing, and expense management. This guide will walk you through how to connect Coupa to Agent Studio. There are two ways you can proceed:

- [**OAuth 2.0 with Client Credentials Grant Setup**](#oauth-20-with-client-credentials-grant-setup) – Best suited for organization-wide integrations where authentication and data access are centrally managed by an admin.
- [**OAuth 2.0 with Authorization Code (User Consent Auth) Setup**](#oauth-20-with-authorization-code-user-consent-auth-setup) – Ideal for user-specific integrations where each user authenticates individually to access their Coupa data securely.

## **Prerequisites**

- Access to the Setup module in a Coupa instance
- [**Install Postman**](https://www.postman.com/downloads/)

## **OAuth 2.0 with Client Credentials Grant Setup:**

## **Walk Through**

### **Step 1: OAuth Client creation and scope assignment**

1. Navigate to **Setup > Oauth2/OpenID Connect Clients** (/oauth2/clients).
    
    ![untitled.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled.png)
    
2. Click **Create** and select **Client Credentials** in the **Grant type** dropdown.
3. Complete the fields and select the scopes (access permissions) the Client needs.
    - **Name:** Moveworks Client
    - **Login Details** → The details of the account you are using to create the client
    - **Scopes** → Select the scopes based on the requirement of your use case. For example, if you want to build a use case that requires fetching expense reports, scroll down and select the **`core.expense.read`** scope.
    
    ![https://compass.coupa.com/Import/Integrate/Technical_Documentation/API/OAuth_Transition/01_Transition_Guide/create_client.jpg](https://compass.coupa.com/Import/Integrate/Technical_Documentation/API/OAuth_Transition/01_Transition_Guide/create_client.jpg)
    
4. Once you save the Client, you will get the Client credentials: **Identifier**, **Secret**, **Oidc Scopes**.
    
    Copy all three of them and store in a secure place. We will need these later to generate the OAuth Token.
    
    ![image1.jpeg](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image1.jpeg)
    

### **Step 2: Test with Postman**

1. Set up your request in Postman with your **`Client Credentials`**.
    
    ```bash
    curl --location 'https://{{INSTANCE_DOMAIN}}/oauth2/token' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode 'grant_type=client_credentials' \
    --data-urlencode 'client_id={{Identifier}}' \
    --data-urlencode 'client_secret={{Secret}}' \
    --data-urlencode 'scope={{SPACE_SEPARATED_LIST_OF_SCOPES}}'
    ```
    
2. Import this request into Postman and execute it. You should get a successful response of your user information.
    
    ![https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/coupa/Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled%201.png](https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/coupa/Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled%201.png)
    

### **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - Connection Name: Coupa Connector
    - Base URL: **`https://{{INSTANCE_DOMAIN}}`** (For example: **`https://moveworks-usa-coupalink-demo.coupacloud.com`**)
    - Auth Config: **`Oauth2`**
    - Oauth2 Grant Type: **`Client Credentials Grant`**
    - Client ID: **`{{Identifier}}`**
    - Client Secret: **`{{Secret}}`**
    - Client Credentials Grant Scope: **`{{SPACE_SEPARATED_LIST_OF_SCOPES}}`**
    - Oauth2 Token Url: `https://{{INSTANCE_DOMAIN}}/oauth2/token`. Click on `Save` to submit the credentials and your connector will be ready.
2. Add your API details. You can read more about setting up API actions from our [**API configuration reference**](https://marketplace.moveworks.com/creator-studio/integrations/outbound/api-configuration/).
    
    ```bash
    curl --location 'https://{{INSTANCE_DOMAIN}}/api/expense_reports' \
    --header 'Accept: application/json' \
    --header 'Authorization: Bearer {{generated_bearer_token}}'
    ```
    
    - API endpoint Path: **`/api/expense_reports`**
    - Method: **`GET`**
    - Headers:
        
        Add parameters as key–value pairs:
        
        - Content-Type : application/json
3. Test your setup in Agent Studio and look for a successful execution.
    
    ![https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/coupa/Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled%202.png](https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/coupa/Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled%202.png)
    

## **Congratulations!**

You’ve successfully integrated **Coupa’s API with Agent Studio** using **OAuth 2.0 with Client Credentials Grant**. This enables secure system-level authentication, allowing seamless automation and integration within your Coupa instance.

## **OAuth 2.0 with Authorization Code (User Consent Auth) Setup**

## **Walk Through**

### **Step 1: OAuth Client creation and scope assignment**

1. Navigate to **Setup > Oauth2/OpenID Connect Clients** (/oauth2/clients).
    
    ![Untitled.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/Untitled.png)
    
2. Click **Create** and select **Authorization code** in the **Grant type** dropdown.
3. Complete the fields and select the scopes (access permissions) the User needs.
    - **Name:** Moveworks Client
    - Provide the correct re-direct URI
        - e.g., https://{{org-domain}}.moveworks.com/auth/oauthCallback
        - To find your `org-domain`
            - Log in to agent studio
            - Check the URL in your browser — The `org-domain` appears after `https://`  For example, In this case, `https://{{org-domain}}/agent-studio` is your Moveworks `org-domain`.
    - **Scopes →** Select the scopes based on your use case. For example, to fetch approvals, choose the `core.approval.read` scope, **scroll down, and save it**. To allow users to access their own data, include the following scopes: `core.user.read` to view their own profile, `core.requisition.read` to view their requisitions, `core.approval.read` to view their pending approvals, `core.invoice.read` to view their invoices, and `core.expense_report.read` to view their expense reports. The Coupa user account used for testing must have basic access permissions — such as the ability to log in and view their own profile, requisitions, approvals, invoices, and expenses. The user should belong to roles like **Employee** or **Approver**, as the UCA token only allows access to what the user can see in Coupa.
    
    **Note:** Coupa roles and scopes may vary across instances. The above are baseline permissions; assign additional scopes (e.g., **core.supplier.read**, **core.invoice.write**) as required for other object types

    ![image2.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image2.png)

1. Once you save the Client, you will get the Client credentials: **Identifier**, **Secret**, **OIDC Scopes**. Copy all three of them and store in a secure place. We will need these later to configure the connector.

    ![image3.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image3.png)

### **Step 2: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration:
    - **Connection Name:** `Coupa Consent Auth Connector`
    - **Display Name:** `Coupa Consent Auth`
    - **Description:** This connector facilitates secure, user-authorized access to the Coupa API using User Consent Authentication.
    - **Base URL:** `https://{{INSTANCE_DOMAIN}}`
        
        *(Example: `https://moveworks-usa-coupalink-demo.coupacloud.com`)*
        
    - **Auth Config:** `OAuth2`
    - **OAuth2 Grant Type:** `Authorization Code Grant`
    - **Authorization URL:** `https://{{INSTANCE_DOMAIN}}/oauth2/authorizations/new`
    - **Client ID:** `{{Identifier}}`
    - **Client Secret:** `{{Secret}}`
    - **Authorization Code Grant Scope:** `{{SPACE_SEPARATED_LIST_OF_SCOPES}}`
    - **OAuth2 Token URL:** `https://{{INSTANCE_DOMAIN}}/oauth2/token`
    - **OAuth2 Client Authentication:** `OAuth 2.0 with Request Body`
    - **OAuth2 Custom OAuth Response Type:** Enable as `JSON`
    - Click **Save** to submit the credentials and finalize the connector setup.
2. Set up your API. You can read more about setting up API actions from our [**API configuration reference**](https://marketplace.moveworks.com/creator-studio/integrations/outbound/api-configuration/).
    - Use the following API to verify that the User Consent Authorization (UCA) is functioning correctly. This call helps confirm that the authentication is working as expected and that approvals are being fetched at the **user level only** (based on the logged-in user’s access permissions)
    
    ```bash
    curl --location 'https://{{INSTANCE_DOMAIN}}/api/approvals' \
    --header 'Accept: application/json' \
    --header 'Authorization: Bearer {{generated_bearer_token}}'
    ```
    - API endpoint Path: `/api/approvals`
    - Method: **`GET`**
    - Headers:
        
        Add parameters as key–value pairs:
        
        - Content-Type : application/json
3. Test your setup by creating and running an Action in Agent Studio.
    1. Import your cURL, add the **User Consent Auth Connector**, and click **Test → Generate New Access Token**. Make sure you are acting on behalf of the intended user before generating the token; only then will it return the approvals assigned to that user.
        
        ![image4.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image4.png)
        
    2. Establish a connection between your UCA connector and Agent Studio
        
        ![image5.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image5.png)
        
    3. Next, you will be redirected to the Coupa login page. If you log in as an admin, you will have access to all data. If you log in as a regular user, you will only be able to access data assigned to you. After logging in successfully, click **Allow** to generate the authorization code.
        
        ![image6.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image6.png)
        
    4. Once you click the **Allow** button, you will receive a notification from the Moveworks bot that it has got the access to perform actions on your behalf. 
        
        ![image7.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image7.png)
        
    5.  Click **“Test”** to verify that UCA is working correctly. The action (e.g., *Fetch My Pending Approvals*) should use the logged-in user’s token to return only their pending approvals, confirming that user-specific consent and permissions are set up properly.
        
        ![image8.png](Authentication%20Guide%20Coupa%208c3fd8aaf16e483d91739f56b817cad0/image8.png)
        

## **Congratulations!**

You’ve successfully integrated **Coupa’s API with Agent Studio** using **OAuth 2.0 with Authorization Code (User Consent Auth)**. This enables secure user-level authentication and allows access to Coupa data based on user consent within your Coupa instance.