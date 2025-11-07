---
availability: VALIDATED
difficulty_level: INTERMEDIATE
fidelity: GUIDE
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/okta/logo.png
name: Okta
num_implementations: 0
time_in_minutes: 15
---

# Introduction:

Okta is an identity and access management platform that helps organizations securely manage user authentication, authorization, and lifecycle management across applications and services.

This guide will walk you through the process of creating a connector within Agent Studio to make API calls to Okta, using an API Token for secure authentication. The guide is organized into two main sections:

1. **Set up Okta JWT Authentication**
2. **Create a Connector in Agent Studio**
3. **Integrate Okta API in Agent Studio**

# **Prerequisites:**

- Ensure you have administrator access to your **Okta** organization.
- Detailed instructions on generating an Okta JWT Authentication are available in the official **Okta** documentation [here](https://developer.okta.com/docs/guides/implement-oauth-for-okta-serviceapp/main/).

# **Set up Okta JWT Authentication**

To connect Okta with Agent Studio, we’ll use JWT (JSON Web Token) authentication via an API Service App in Okta.

The following steps will guide you through creating an API Service app in Okta, generating a private key, and configuring Agent Studio to authenticate securely with Okta.

## **Step 1: Generate an JWT in Okta**

### 1. Access the Okta Admin Console

- Log in to your **Okta Admin Console** using an administrator account.
- In the left-hand navigation pane, go to **Applications** > **Applications** .
- Click on the **Create App Integration** button.

![okta_1.png](okta_1.png)

### 2. Select the integration type

- Choose **API Services** as the sign-in method.
- Click **Next**.

![okta_2.png](okta_2.png)

### 3.  Configure your API Service app

- Enter a descriptive **App integration name** (e.g., `Agent Studio API Integration`).
- Click **Save.**

![okta_3.png](okta_3.png)

### 4.  Generate a new key pair (private/public key)

- Once the App is created, it will open the Application page.
- Within the **Client Credentials** section, click on the **Edit** button
- In the **Client authentication** section, select **Public key / Private key** as your preferred method of authentication.
- Once selected, the PUBLIC KEYS section would appear. Here, make sure that the **Save keys** in Okta is selected for **Configuration**.
- Click on **Add key** to add a new public key for your application.

![okta_4.png](okta_4.png)

- In the **Add a public key** page that opens up, click on **Generate new key**.
    
    ![okta_5.png](okta_5.png)
    
- Once your public-private key pair is generated, click on the PEM button to view the certificate and then copy and **save it in a safe storage as a .PEM file extension**. This will be required later on to create the Connector in **Agent Studio** Setup.

![okta_6.png](okta_6.png)

- Click on **Done** once you have saved the Private key and then click on the **Save** button to save all of your configurations.
- A pop-up will show which asks for confirmation if you want to change your authentication method. Click on **Save** again here to make all of the changes.
- Head over to the **General Settings** section and click on the **Edit** button.
- Deselect the **Require Demonstrating Proof of Possession (DPoP) header in token requests** checkbox and click on the **Save** button to save your configurations.
    
    ![okta_7.png](okta_7.png)
    

### 5.  **Grant allowed Scopes to the App**

Now that you've created the service app and registered the public key with that service app, you need to [**define the allowed scopes**](https://developer.okta.com/docs/guides/implement-oauth-for-okta/main/#scopes-and-supported-endpoints). When a request is sent to the authorization server's `/token` endpoint, it validates all requested scopes in the request against the service app's grants collection. If the scope exists in the grants collection, the scope is granted.

- From the service app page, select the **Okta API Scopes** tab.
- Click **Grant** for each of the scopes that you want to add to the app's grant collection.
- Ensure the required scopes for your API calls are available (e.g., `okta.users.read`, `okta.groups.read`).
- The changes should reflect immediately upon granting consent.
    
    ![okta_8.png](okta_8.png)
    

### 6.  **Assign Admin roles to the App**

Assign the correct [roles/permissions to the App based on your requirement](https://help.moveworks.com/docs/okta-access-requirements#required-permissions).

- Ensure that you're signed in as a Super Admin.
- In the Admin Console, go to **Applications → Applications**.
- Select the Service App that you just created.
- Within the App page, go to **Admin roles** tab , you can see **Admin assignments granted to this app**.
- Add/ Remove assignments using the **Edit assignments** button.
- To add assignments, select the appropriate roles, if present, select the Groups and save it.
- After adding all the necessary roles, click on **Save Changes** to finalize the changes.
    
    ![okta_9.png](okta_9.png)
    

### 7.  **Gather the credentials**

Now that your service app configuration is completed, make sure you have collected the following credentials:

- **Client ID** of the App
- **KID** of the generated Public Key configuration
- **Private Key** in PEM format (that you generated along with the Public Keys)

You can get the **Client ID** and **KID** of your App by:

- Visit your Application under the **Application -> Application** page.
- Copy and store the Client ID and the KID from this page.

![okta_10.png](okta_10.png)

## **Step 2: Integrate with Agent Studio**

In Agent Studio, create a new connector with the following configuration (please name it accordingly for easy identification while creating use cases):

Please refer to the **table** below and fill out the connector configuration accordingly in Agent Studio:

| **Field name** | **Field value** |
| --- | --- |
| Connection Name | Type out the name of the connection |
| Description | Type out the description |
| Base URL | Base URL of your instance (e.g., `https://{YOUR_INSTANCE}.okta.com`) |
| Auth Config(select field) | `JWT Auth` |
| Private Key | Upload your .**PEM Private Key file** in the Private Key field and click on **Save** to save the Connector configuration. |
| Client ID | Enter the Client ID collected previously |
| KID | Enter the KID collected previously |
| Jwt Auth Algorithm(select field) | `JWT_ALGORITHM_RS256` |
| Jwt Auth Claims Expiry Seconds | 3600 |
| Jwt Auth Claims Issuer | Enter your Client ID |
| Jwt Auth Claims Subject | Enter your Client ID |
| Jwt Auth Claims Audience | `https://{YOUR_INSTANCE}.okta.com/oauth2/v1/token` |
| Jwt Auth Oauth2 Access Token Request URL | `https://{YOUR_INSTANCE}.okta.com/oauth2/v1/token` |
| Assertion Key (optional) | client_assertion |
| Accept | application/json |
| Content-Type | application/x-www-form-urlencoded |
| client_assertion_type | urn:ietf:params:oauth:client-assertion-type:jwt-bearer |
| scope | okta.users.read |
| grant_type | client_credentials |

Click on **Save** to submit the credentials, and your connector will be ready

![connector_1.png](connector_1.png)

![connector_3.png](connector_3.png)

![connector_2.png](connector_2.png)

Your Okta Connector with OAuth authentication is now ready to be configured for the relevant skills using Moveworks Setup.

## **Step 3: Integrate Okta API in Agent Studio**

- Add your API details below to integrate with the Okta API. You can read more about setting up API actions in the [API configuration reference](https://help.moveworks.com/docs/http-actions).

```bash
curl -i -X GET \
  https://{YOUR_INSTANCE}.okta.com/api/v1/users \
  -H "Authorization: Bearer YOUR_ACCESS_TOKEN_HERE"
```

- **API Endpoint Path:**
    
    `/api/v1/users`
    
- **Method:**
    
    `GET`
    

![okta 3.png](okta_3%201.png)

# **Congratulations!**

You've successfully integrated the **Okta API** with Agent Studio. You can now start using it for your specific use cases