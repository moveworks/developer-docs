---
availability: VALIDATED
difficulty_level: INTERMEDIATE
fidelity: GUIDE
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/sap-integration-logo-primary.svg
name: SAP Success Factors
time_in_minutes: 40
---

# Introduction:

SAP SuccessFactors is a cloud-based human resources (HR) management solution, empowering businesses with data-driven insights to optimize talent management, employee engagement, and overall workforce performance.

This guide will demonstrate how to connect SAP Success Factors to Agent Studio. In doing so, there are two ways you can proceed:
1. [Webhook Connection](https://marketplace.moveworks.com/connectors/sap-success-factors#Webhook-Connection) - This is best when building ambient agents that are trigged from a system event inside of SAP Success Factors. 
2. [OAuth 2.0 Client Credentials](https://marketplace.moveworks.com/connectors/sap-success-factors#Client-Credentials) - This is best when you want to build user trigged agents that connect to SAP Success Factors.


# Webhook Connection
## What you’re connecting

- **SAP SuccessFactors Intelligent Services (ISC)** can publish external event notifications to an **endpoint URL** you provide, using an **Event Connector** (inside the event’s flow) or **Event Subscription Management**. Payloads are sent as **SOAP over HTTP(S)**; you can choose **Auth will choose OAuth2 Client Credentials** on the SAP side.
    - In ISC: Event → Flows → **Event Connector** → set **Endpoint URL** and **Authentication**, save. Only **name + endpoint URL** are mandatory; data is sent to your URL as **SOAP**.
    - Alternatively, you can manage subscriptions globally in **Event Subscription Management** (same endpoint/auth choices), with audit/monitoring and auto-deactivation after prolonged failures.
    - If your tenant blocks unknown HTTPS targets, set trust in **Outbound Trust Manager**.
- **Moveworks Listener** is your HTTPS webhook endpoint. You’ll create a listener URL and secure it with OAuth 2.0 credentials.

[SuccessFactors (ISC) Webhook Documentation](https://help.sap.com/docs/successfactors-platform/implementing-and-managing-intelligent-services/configuring-connection-to-third-party-subscriber)

---

## Step 1: Create a Moveworks Listener (UI steps)

In **Agent Studio → Listeners**:

1. **Create Listener** → copy the **Webhook URL** (you’ll paste this into SAP’s **Endpoint URL**). 
2. **Verification (secure your listener)**
    - **Credential Verification** → Check **Enable Credential Verification** (purple checkbox in the screenshot).
        
        ![Create-Listener](SAPSF-Listener.png)
        
3. **Create the credential (OAuth 2.0)**
    - Click **Create a New Credential** (link on the right of the Verification section) or go to **Moveworks setup** → credentials
    - In the credential dialog:
        - **Type:** OAuth 2.0.
        - **Name:** something explicit, e.g. `SAP_SuccessFactors_Token`.
        - Submit
    
    ![Create-Credentials](SAPSF-Credential.png)
    
    - **Copy the client id and secret now.** It is only shown once. Store it in your secret manager if you need a backup.

---

## Step 2: Configure SuccessFactors (ISC) to call Moveworks

**Option A — Event Connector on a specific event (recommended for quick start)**
Admin Center → **Intelligent Services Center** → open your event → **Flows** tab → **Event Connector** → **Create / Select**:

- **Name/Description**: (anything)
- **Endpoint URL**: paste your Moveworks Listener URL
- **Authentication settings**: choose one
    - **OAuth2 Client Credentials** → set
        - **Token URL:** https://api.moveworks.ai/oauth/v1/token
        - **Client ID:** The client id you generated in step 2.
        - **Client Secret:** The secret you generated in step 2.
        - **Scope**: leave it blank
        - (SAP will fetch and include `Authorization: Bearer <token>` on every POST)
- Save. This connector now fires for all flows on that event.

**Option B — Event Subscription Management (global)**
Admin Center → **Event Subscription Management** → **Add** subscription → pick **Event**, set **Endpoint URL** + **Authentication** (same choices as above) → Save. Max six subscriptions per event; mirrored with ISC UI.

**If HTTPS trust blocks delivery**: Admin Center → **Outbound Trust Manager** → allow outbound request servers (all or the specific target).

---

## Step 3: What Moveworks will receive (and how to handle it)

- **HTTP POST** with **SOAP/XML** body to your listener URL (content-type usually `text/xml` or `application/soap+xml`). SAP may include only **business keys**; if you need full data, your plugin can call back to SAP via OData using those keys.
- In Moveworks, your plugin can inspect **`raw_body`** (XML) and headers, then parse accordingly with script actions or data mapper;

> Want JSON instead of SOAP? Use Integration Center with ISC to produce REST output from an event and send JSON to the listener. [Integration Center Documentation](https://help.sap.com/docs/integration-suite/sap-integration-suite/create-webhook-subscription)
>
## **Congratulations!**

You've successfully created a webhook connection between **SAP SuccessFactors API** and Agent Studio.

# Client Credentials
## **Prerequisites:**

- Ensure you have **admin privileges** in SAP SuccessFactors to create an OAuth application and manage permissions.
- Detailed instructions on generating an OAuth access token are available in the official SAP SuccessFactors documentation [here](https://help.sap.com/docs/successfactors-platform/sap-successfactors-api-reference-guide-odata-v2/restricting-access).
- Ensure you are using **Java 8 or later** for generating the SAML Assertion. If you encounter errors, update your JDK or install the Sap Machine JDK from [here](https://sap.github.io/SapMachine/#download).
- **Apache Maven** downloaded and extracted to your local drive (e.g., extracted to the C drive). You can download it from [here](https://maven.apache.org/download.cgi).

## **Set up SAP SuccessFactors**

To connect SAP SuccessFactors with Agent Studio, we’ll use OAuth2 with the Client Credentials Flow. You’ll need to register an application in SAP SuccessFactors and obtain the following credentials:

- **Company ID**
- **Client ID**
- **Assertion** (Base64-encoded SAML assertion, generated after registering the application)

The following steps will walk you through how to register an OAuth application in SAP SuccessFactors, generate the required assertion, and authenticate to get an access token. This token is essential to securely interact with the SAP SuccessFactors APIs and set up the connector within Agent Studio

## **Step 1: Register the Application in SAP SuccessFactors**

### 1. Access API Center

- Log into SAP SuccessFactors as an administrator, navigate to the Admin Center, and search for API Center

![image.png](image.png)

### 2. Register OAuth Client

- Select OAuth Configuration for OData and click on "Register Client Application.”

![image.png](40297799-1806-42e8-af52-19bc4f59dd58.png)

### **3. OAuth Client Application Setup:**

- **Company:** `moveworks-example-company` *(Prefilled based on the logged-in instance)*
- **Application Name:** `MoveworksIntegrationApp` *(Required - Unique name for your OAuth client)*
- **Description:** `Integration between Moveworks AI platform and HR system for automating support requests.` *(Optional - Brief description)*
- **Application URL:** `https://www.moveworks.com`
- **Bind to Users:** `Yes` *(Optionally restrict access to specific users)*
    - **User IDs:** `user1, user2, user3` *(Comma-separated user IDs if binding is enabled)*
    
    ![image.png](1c6132c8-33fd-4303-8397-a6dbcd4c3fe2.png)
    

### **4. X.509 Certificate Setup for OAuth Application:**

- **Navigate to:** Manage OAuth2 Client Applications in SAP SuccessFactors.
- **Click on:** Generate for a new X.509 Certificate.
- **Fill in Required Fields:**
    - **Common Name (CN):** Example: `moveworks-integration-cert` (Required field)
- **Optional Fields:**
    - **Enable validity check:** Check based on your preference.
- **Generate and Download:** Generate the certificate and use the Base64-encoded string for OAuth registration.

![image.png](1f981f0c-da5a-4061-9b24-fb6bbe2cc8cb.png)

- **Click the Register button** to complete the OAuth client application registration

### 5. After registering the OAuth client application:

- **Click on the View button**: This will display the API Key associated with your newly registered application.
- **Use the API Key as Client ID**: Copy the generated API Key, as it will serve as the Client ID for authenticating the client application during integration

![image.png](image%201.png)

## **Step 2: Generating a SAML Assertion for SAP SuccessFactors API:**

**IMPORTANT NOTES:**

- **Java Version:** Ensure Java 8 or higher. If you face errors, update your Java JDK or install Sap Machine JDK.
    - [Download Sap Machine JDK](https://sap.github.io/SapMachine/#download)
- **Security:** This KBA is for demonstration purposes only. SAP is not responsible for security when using the sample code in production environments.
- **SAML Expiry:** By default, the SAML assertion expires in 10 minutes. You can adjust the expiry as needed (in minutes).
- **User ID/Username:** You can use either `userId` or `userName`, but not both simultaneously.

### **Steps to Generate a SAML Assertion:**

1. **Download and Set Up Maven:**
    - Download Apache Maven from [here](https://maven.apache.org/download.cgi), extract it locally.
    - Set up environment variables for Java and Maven on your system.
2. **Validate Java and Maven Installation:**
    - Open **Command Prompt** and check Java with:
        
        `echo %JAVA_HOME%`
        
        ![image.png](image%202.png)
        
    - Check Maven with:
        
        `mvn -v`
        
        ![image.png](image%203.png)
        
3. **Download the SAML Assertion Tool:**
- Go to the **attachment section** of this KBA or use the following link to download the zip file containing the SAML Assertion tool:  [Download SAML Assertion Tool](https://me.sap.com/notes/3031657).
1. **Edit SAMLAssertion.properties:**
- Open the `SAMLAssertion.properties` file.

![image.png](ee3f5032-34b5-42c7-bd3e-3ef0fab43e87.png)

- Fill in the required fields:
    - `tokenUrl`:  The full URL to the token endpoint of your SAP SuccessFactors API server. This is constructed by appending `/oauth/token` to your instance-specific API server URL.
    
    **Example:**
    
    ```bash
    https://<your-api-server-url>/oauth/token
    ```
    
    - For a complete list of SAP SuccessFactors API servers by region and environment, refer to the [SAP API Server Directory](https://help.sap.com/docs/successfactors-platform/sap-successfactors-api-reference-guide-odata-v2/list-of-sap-successfactors-api-servers).
    
    ### Additional Guidance on API Servers
    
    - Use the correct server URL for your instance to avoid authentication and connectivity issues.
    - SAP does **not** support IP addresses in endpoint URLs as part of its reference architecture. Always use domain names.
    
    ### Common Endpoint Patterns
    
    ![image.png](image%20410.png)
    
    - **Tip:** To find your instance-specific information (such as API server region and version), log into your SAP SuccessFactors account, click your profile in the top header, and select **Show version information**.
    - `clientId`: The API Key from your SF OAuth registration.
    - `userId` or `userName`: Choose one based on your setup.
    - `privateKey`: X.509 private key.
    - `expireInMinutes`: Set the expiry time (default is 10 minutes).
    
    ![image.png](image%204.png)
    
1. **Generate the SAML Assertion:**
    - Open **Command Prompt** in the folder containing the files.
    - Run the command:
        
        `mvn compile exec:java -Dexec.args="SAMLAssertion.properties"`
        
    
    ![image.png](image%205.png)
    
2. **Save the Generated SAML Assertion:**
    - After running the command, the SAML assertion is generated. Copy and securely store it for OAuth integration
    
    ![image.png](image%206.png)
    

## **Step 3:** Requesting an Access Token

- Use a **POST** request to the URI: `https://<API-Server>/oauth/token`
- **Authentication**: No authentication required
- **Headers**:
    - `Content-Type: application/x-www-form-urlencoded`

**Request Body**:

- `company_id`: Your company ID (Required)
- `client_id`: API key from OAuth registration (Required)
- `grant_type`: Set to `urn:ietf:params:oauth:grant-type:saml2-bearer` (Required)
- `assertion`: Base64-encoded SAML assertion (Required)
- When authentication is successful, the API response will return an **access token**, **token type**, and **expiration time**. Use the access token for authorized API requests


```bash
curl --location 'https://<API_SERVER_DOMAIN>/oauth/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'company_id=<COMPANY_ID>' \
--data-urlencode 'client_id=<CLIENT_ID>' \
--data-urlencode 'grant_type=urn:ietf:params:oauth:grant-type:saml2-bearer' \
--data-urlencode 'assertion=<SAML_ASSERTION>'
```
- By importing the cURL request into Agent Studio during action creation, you can directly retrieve the access token as part of your workflow, making it easier to integrate and automate the process

## **Step 4: Integrate with Agent Studio**

In Agent Studio, create a new connector with the following configuration (please name it accordingly for easy identification while creating use cases):

1. **Auth Config:**
    - OAuth2
2. **OAuth2 Grant Type:**
    - Client Credentials Grant
3. **Client ID:**
    - Use the API key generated when you register the application in SAP SuccessFactors.
4. **OAuth2 Token URL:**
    - [https://<API_SERVER_DOMAIN>/oauth/token](https://apisalesdemo8.successfactors.com/oauth/token)
5. **OAuth2 Client Authentication:**
    - OAuth 2.0 with Request Body
6. **Custom Grant Type (optional):**
    - urn:ietf:params:oauth:grant-type:saml2-bearer
7. **OAuth2 Custom OAuth Request Options - Additional Request Data:**
    - company_id: {{your_company_id}}
    - assertion: {{generated_saml_assertion}}
8. Click on **Save** to submit the credentials, and your connector will be ready

```bash
curl --location 'https://<API_SERVER_DOMAIN>/rest/timemanagement/absence/v1/timeAccountBalances?%24at=2020-03-17' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'

```

## **Step 5: Integrate SAP SuccessFactors API in Agent Studio**

- Add your API details below to integrate with the SAP SuccessFactors API. You can read more about setting up API actions in the [API configuration reference](https://help.moveworks.com/docs/http-action-data-bank-legacy).

```bash
curl --location 'https://<API_SERVER_DOMAIN>/rest/timemanagement/absence/v1/timeAccountBalances?%24at=2020-03-17' \
--header 'Authorization: Bearer {{generated_access_token}}' \
--header 'Accept: application/json'
```

- **API Endpoint Path:**
    
    `/rest/timemanagement/absence/v1/timeAccountBalances`
    
- **Method:**
    
    `GET`
    
- **Query Parameters:**
    
    `?%24at=2020-03-17`
    

![image.png](f6f23e43-fc51-4cb5-b9d8-b4a1442486e2.png)

## **Congratulations!**

You've successfully integrated the **SAP SuccessFactors API** with Agent Studio. You can now start using it for your specific use cases
