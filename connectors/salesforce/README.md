---
accreditations:
- indrapaul24
- DEFAULT
availability: VALIDATED
difficulty_level: INTERMEDIATE
fidelity: GUIDE
logo: https://www.moveworks.com/content/dam/moveworksprogram/v2/logos/integration-logos/salesforce-integration-logo-primary.svg
name: Salesforce
time_in_minutes: 60
---

# **Introduction**

**Salesforce** is a leader in cloud-based services, specializing in comprehensive customer relationship management (CRM) solutions, empowering businesses with data-driven decision-making.

This guide will step you through creating a connector within Agent Studio to make API calls to Salesforce's SOQL and sObjects APIs. This guide has been organized into three main sections:

1. Set up OAuth Password Grant Flow
2. Test with Postman
3. Create a Connector in Agent Studio

# **Prerequisites**

- Salesforce account with Admin privileges so we can create a new Connected App and manage User and Permissions
- [Install Postman](https://www.postman.com/downloads/) for testing the API connection

# **Set up Salesforce**

To connect to Salesforce from within Agent Studio, we are going to be using [OAuth2 with Username/Password](https://oauth.net/2/grant-types/password/). This requires the following:

- Consumer Key
- Consumer Secret
- Service Account Email
- Service Account Password
- Service Account Security Token

The following will walk you through how to set up a Connected App with a Service Account and necessary Permission Sets so we can set up the connector within Agent Studio.

## **Step 1:** Set up OAuth Password Grant Flow

1. **Create Connected App** in Salesforce

    ![https://files.readme.io/3170a09-small-Screen_Shot_2023-01-24_at_3.20.14_PM.png](https://files.readme.io/3170a09-small-Screen_Shot_2023-01-24_at_3.20.14_PM.png)

    1. Under **Setup > App Manager** and click `New Connected App`
    2. Fill basic info: {Connected App Name: `Moveworks_Server`, API Name: `Moveworks_Server`, Contact Email: [support@moveworks.ai](mailto:support@moveworks.ai)}
    3. Select *enable oAuth settings* under API (Enable oAuth Settings) & add {Callback URL: [https://login.salesforce.com/](https://login.salesforce.com/)}
    4. Add oAuth scopes to:
        1. api
        2. refresh_token, offline_access

            ![Untitled](Authentication%20Guide%20Salesforce%20d7869a374e2940dea9ad3ba1af20ab92/Untitled.png)

    5. Check the following:
        1. **Enable Authorization Code and Credentials Flow**
        2. **Require user credentials in the POST body for Authorization Code and Credentials Flow**

            ![Untitled](Authentication%20Guide%20Salesforce%20d7869a374e2940dea9ad3ba1af20ab92/Untitled%201.png)

    6. Click *`Save` > `Manage Consumer Details`(Under **API (Enable OAuth Settings)**)*
        1. Note down the `Consumer Key` and the `Consumer Secret`
    7. After saving, click *`Manage` > `Edit Policies`*
        1. In the *OAuth policies* section, change to *Permitted Users* to *Admin approved users are pre-authorized*
        2. In the Session policies section, change *Timeout Value* to *24 hours*
        3. Click *Save*
2. **Create a Permission Set** to interact with the Connected App

    ![https://files.readme.io/e110dc6-small-Screen_Shot_2023-01-24_at_3.28.08_PM.png](https://files.readme.io/e110dc6-small-Screen_Shot_2023-01-24_at_3.28.08_PM.png)

    1. Navigate to **Users > Permission Sets** and click on `New`
    2. Add `moveworks_connected_app` as the Label & Api Names & click Save
    3. Now click on the `moveworks_connected_app` Permission Set and click Assigned Connected Apps
    4. Click Edit and add `Moveworks_Server` to list of Enabled Connected Apps & click Save
3. Create **New Service Account** (if it doesn’t exist)

    ![https://files.readme.io/cf02e32-small-Screen_Shot_2023-01-24_at_3.29.33_PM_1.png](https://files.readme.io/cf02e32-small-Screen_Shot_2023-01-24_at_3.29.33_PM_1.png)

    1. Navigate to **Users > Users** and click on `New User`
    2. Enter the following information & click *Save*:
        1. Last Name: `Moveworks`
        2. Alias: `moveworks`
        3. Email, Username & Nickname: `moveworks@{{customer-domain}}.com`. Please also create and enable the Email on your Mailing system because you will receive emails for the 5th step mentioned below.
        4. Setup role as `Admin` (or any custom role that you have which allows access to view or modify certain objects)
        5. Setup profile as `Salesforce Admin` (or any custom profile that you have which allows access to view or modify certain objects)
4. **Assign our service user the connected app**
    1. Navigate to **Users > Users** & click on our service user account that was just created.
    2. Click on **Permission Set Assignment** and then **Edit Assignments**
    3. Now add `moveworks_connected_app` to list of **Enabled Permission Sets** & click **Save**
5. **Get the Username, Password and the Security Token for the Service User**
    1. Navigate to **Users > Users** & click on *Login* for service user account that was just created.
    2. After logging in as the service user account, click on *`View Profile` > `Settings`*
        1. Go to ***Change My Password*** and set up a new password for the account. Note down the password after saving it.
        2. Go to ***Reset My Security Token*** and click on `Reset Security Token` button. You will receive an email with the new security token. Note down the security token too.
        
            >Note: If you are unable to see the Reset Security Token option, follow [these steps](https://help.salesforce.com/s/articleView?id=000386179&type=1).

## **Step 2: Test with Postman**

Once you have all the required credentials from the above process, please move on to test the OAuth API and try to fetch the token.

1. [Salesforce OAuth Authentication API](https://help.salesforce.com/s/articleView?id=sf.remoteaccess_oauth_endpoints.htm&type=5): An API for Salesforce Connected Apps to request an OAuth token required to authenticate API calls

    ```bash
    curl --location 'https://login.salesforce.com/services/oauth2/token' \
     --header 'Accept: application/json' \
     --header 'Content-Type: application/x-www-form-urlencoded' \
     --data-urlencode 'grant_type=password' \
     --data-urlencode 'client_id={{salesforce_consumer_key}}’ \
     --data-urlencode 'client_secret={{salesforce_consumer_secret}}' \
     --data-urlencode 'username={{salesforce_username}}' \
     --data-urlencode 'password={{salesforce_password}}{{salesforce_security_token}}' \
     --data-urlencode 'redirect_uri=https://login.salesforce.com/'
    ```

    > The API URL used here is `https://login.salesforce.com` which signifies a Production instance of Salesforce. If you are using a Sandbox instance, please modify the `URL` to the following:
    `https://test.salesforce.com`
    >
2. Import this request into Postman, replace the credentials and execute it. You should get a successful response and a token.

    ![Untitled](Authentication%20Guide%20Salesforce%20d7869a374e2940dea9ad3ba1af20ab92/Untitled%202.png)

## **Step 3: Integrate with Agent Studio**

1. In Agent Studio, create a new connector with the following configuration (please name it accordingly to identify while creating use cases):
    - Description: `Connect to Salesforce SOQL APIs`
    - Base URL: `https://{your-salesforce-domain}.my.salesforce.com`
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Password Grant`
    - Client ID: `{{salesforce_consumer_key}}`
    - Client Secret: `{{salesforce_consumer_secret}}`
    - Password Grant Username: `{{salesforce_username}}`
    - Password Grant Password: `{{salesforce_password}}{{salesforce_security_token}}`
    - Oauth2 Token Url: `https://login.salesforce.com/services/oauth2/token` (Or, `https://test.salesforce.com/services/oauth2/token` if you’re configuring for a Sandbox instance)

    Click on `Save` to submit the credentials and your connector will be ready.

2. Add your API details. You can read more about setting up API actions from our [API configuration reference](https://developer.moveworks.com/creator-studio/integrations/outbound/api-configuration/).

    ```bash
    curl --location 'https://{{your-salesforce-instance}}.my.salesforce.com/services/data/v58.0/query?q=SELECT%20Name%20FROM%20Contact%20LIMIT%2010' \
    --header 'Authorization: Bearer {{generated_bearer_token}}'
    ```

    - API endpoint Path: `/services/data/v58.0/query`
    - Method: `GET`
    - Query Parameters

        | Key | Value |
        | --- | --- |
        | q | SELECT Name FROM Contact LIMIT 10 |
3. Test your setup in Agent Studio and look for a successful execution.

    ![Untitled](Authentication%20Guide%20Salesforce%20d7869a374e2940dea9ad3ba1af20ab92/Untitled%203.png)

# **Congratulations!**

You've successfully integrated Salesforce’s API with Agent Studio. This opens up a variety of automation and integration possibilities within your Salesforce instance.
