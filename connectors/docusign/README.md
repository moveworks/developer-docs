---
availability: VALIDATED
description: A jwt based connector for Docusign.
difficulty_level: BEGINNER
fidelity: GUIDE
name: Docusign
time_in_minutes: 30
---

# **Introduction**

Integrating DocuSign with Agent Studio allows for seamless incorporation of electronic signature capabilities and document management into your workflows. By leveraging DocuSign's robust REST API and utilizing appropriate authentication mechanisms, you can automate signature processes and enhance your document management workflows. This guide provides a step-by-step process to connect your DocuSign instance to Agent Studio and test the integration for efficient document execution and collaboration.

# **Prerequisites**

- You have a DocuSign Production account (not sandbox).
- You need to be the admin. The **Admin tab appears in nav bar** for users with admin rights.
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image.png)
    
- Your users belong to the same verified **email domain(eg. name@’moveworks.ai’)** registered under your DocuSign Organization (for domain-wide consent).
- Your account plan must support Organizations (some advanced features require specific plans).

# **Step 1: Setup your organization**

1. Access the Organization Management
    - Log in to your DocuSign production account.
    - Navigate to the Admin section from the navigation bar.
    - In the Admin console, look for the Organization tab or section.
    (If you do not see this, your account may not have Organization features enabled—contact DocuSign support or your account manager.)
2. **Create the Organization**
    - From the **Organization** view, select **Organization Accounts**.
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%201.png)
        
    - Click on **Get Started.**
    - Enter the details for the new organization such as:
        - Name
        - Description
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%202.png)
        
    - Confirm and create the organization.
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%203.png)
        
    
    This process links multiple DocuSign accounts under a single organization, allowing centralized management such as:
    
    - Domain verification for Single Sign-On (SSO)
    - User and permission management across accounts
    - Policy enforcement and auditing
3. **Verify Your Domain**
    - Go to **Access Management → Domains** OR **Manage Domains**
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%204.png)
        
    - Click on **Add Domain**
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%205.png)
        
    - Add you domain name (eg. moveworks.ai).
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%206.png)
        
    - To enable domain-wide features like Single Sign-On and consent management, verify your email domain.
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%207.png)
        
    - This is done in the **Organization** settings by adding and verifying your company’s domain.
    - Domain verification allows you to grant admin consent for OAuth scopes across all users in your domain.
4. **Manage Users and Accounts**
    - Once the organization is created, you can add or link existing accounts under it.
    - Manage users centrally, assign roles, and configure security settings.

Additional Resources

- [DocuSign Support: Create an Organization](https://support.docusign.com/s/document-item?bundleId=rrf1583359212854&topicId=nkj1583359134234.html)
- [DocuSign Admin API: Create Accounts](https://developers.docusign.com/docs/admin-api/admin101/create-accounts/)
- [Video: How to Create an Organization](https://dsucustomers.docusign.com/video-playlist-docusign-access-management-and-single-sign-on/resume)

# **Step 2: Create a New Integration App**

1.  **Navigate to Apps and Keys**
    - In the DocuSign web console, click on your profile icon (top right).
    - Select **Admin** to open the Admin console.
    - In the left sidebar, scroll down to the **Integrations** section.
    - Click **Apps and Keys** (sometimes labeled **API and Keys**).
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%208.png)
    
2. **Create a New Integration Key**
    - Click the button **Add App & Integration Key** (or **Add Integration Key**).
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%209.png)
        
    - Enter a name for your new app (Integration Key).
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2010.png)
        
    - Click **Create App** to generate the Integration Key. **Save the Integration key.**
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2011.png)
        
3. Configure **RSA Key Pair**
    - Click on **Generate RSA**
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2012.png)
        
    - Copy and securely save the **Public Key** and **Private Key** values — you will need these for JWT generation.
        
        ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2013.png)
        
4. **Set Redirect URIs**
    - Add one or more **Redirect URIs** for your application.
    - These URIs are where DocuSign will redirect users after authentication.
    - Examples:
        - https://localhost.com
    - Save the changes.
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2014.png)
    
5. Select HTTP Methods and Save.
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2015.png)
    
6. **Consent and Go-Live**
    - For production use, your integration must be **reviewed and approved by DocuSign** (Go-Live process).
    - After creating the integration key in the developer sandbox, you submit it for **Go-Live** approval to use it in production.
    - If you created the key directly in production, ensure you have the necessary consent and permissions.
    - You or your admin must grant consent for the app to access user data (via OAuth consent screens).

# **Step 3: Setting up JWT**

1. **Grant Consent**
    1. **Domain-wide Consent (Recommended for Organizations)**
        - Your DocuSign admin must grant **admin consent** for the Integration Key for the entire email domain.
        - This allows your app to impersonate any user within the domain without each user granting consent individually.
        - Admin consent is done via DocuSign Organization Admin console and requires domain verification, which we did earlier.
    - Steps:
        - In the Admin console, go to **Settings** → **Apps and Keys**.
        - Find your Integration Key and locate the **Consent** or **OAuth Consent** section.
        - Use the **Grant Consent** button or link to provide consent for the entire domain.
        - This action authorizes your integration to impersonate any user within the verified domain without requiring individual user consent.
    
    References
    
    - DocuSign JWT Best Practices: [https://developers.docusign.com/platform/auth/jwt/jwt-best-practice/](https://developers.docusign.com/platform/auth/jwt/jwt-best-practice/)
    - DocuSign JWT Grant Authentication: [https://developers.docusign.com/platform/auth/jwt/](https://developers.docusign.com/platform/auth/jwt/)
    - DocuSign Developer FAQ on JWT Consent: [https://support.docusign.com/s/articles/DocuSign-Developer-FAQs-General-Administration-and-Authentication?language=en_US](https://support.docusign.com/s/articles/DocuSign-Developer-FAQs-General-Administration-and-Authentication?language=en_US)

# **Step 3: Agent** Studio

1. Go to **Agent Studio → Actions → HTTP actions** 
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2016.png)
    
2. Click on **Create**
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2017.png)
    
3. Fill up the information:
    1. Base URL
    2. Name
    3. Description 
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2018.png)
    
4. Create a file containing RSA **PRIVATE KEY,** which we saved earlier**.**
    1. should start with: **-----BEGIN RSA PRIVATE KEY-----**
    2. end with: **-----END RSA PRIVATE KEY-----**
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2019.png)
    
5. Fill these values after selecting `Jwt Auth` under **Auth Config**
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2020.png)
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2021.png)
    
    | Field Name | What to Fill In | Description  |
    | --- | --- | --- |
    | JWT Auth Algorithm | JWT_ALGORITHM_RS256 | Use RS256 (RSA SHA-256) as the signing algorithm. This is required by DocuSign for JWT tokens. |
    | Jwt Auth Claims Expiry Seconds | 3600 (or less, e.g., 3600) | Token expiration time in seconds from issuance (iat). Max is 1 hour (3600 seconds). |
    | Jwt Auth Claims Issuer | Your Integration Key (Client ID) | The Integration Key (a GUID) assigned to your app in DocuSign Admin, which we saved earlier. |
    | Jwt Auth Claims Audience | account.docusign.com  | The OAuth token endpoint host you are requesting the token from (audience). |
    | Jwt Auth Claims Subject | The User ID (GUID) of the admin | The DocuSign userId (not email) of the admin. |
    | Jwt Auth Additional Claims | Key : scope, value : signature impersonation organization_read user_read user_write group_read permission_read domain_read identity_provider_read | Scopes required for accessing Api endpoints. Space delimited. |

    
6. Go to **input args** and put the **accountId** value from **Apps and keys** as **example value**. Check **Required** and **Save.**
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2022.png)
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2023.png)
    
7. Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below:
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2024.png)
    
    ![image.png](Docusign%203b527999d6dd4d2182b6f39cbcdfc115/image%2025.png)
