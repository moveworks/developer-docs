---
accreditations:
- wdavis-moveworks
- indrapaul24
- sarthaksrinivas
- DEFAULT
availability: VALIDATED
difficulty_level: INTERMEDIATE
fidelity: GUIDE
name: Workday
num_implementations: 2
time_in_minutes: 30
---

# Introduction

Workday is a cloud-based software vendor that specializes in human capital management (HCM), enterprise resource planning (ERP), and financial management applications.

Workday supports various kinds of web service technologies including the ReST API, SOAP API and the RaaS API.

- **SOAP Web Services API**: Workday Web Services (WWS) provide a programmatic public API for Workday's business management services. The SOAP-based interface is targeted for import and export of large volumes of data needed for integration with enterprise business systems external to Workday. Learn more about it [here](https://community-content.workday.com/en-us/reference/products/platform-and-product-extensions/integrations/soap-web-services-api.html).

- **ReST API**: The Workday REST API is an addition to the SOAP APIs supported by Workday. It is targeted for applications that do small, typically self-service, transactions initiated by users and provides a subset of Workday functionality crafted for that specific enterprise audience. Learn more about it [here](https://community-content.workday.com/en-us/reference/products/platform-and-product-extensions/integrations/rest-api.html).

- **Reports as a Service (RaaS) API**: The RaaS API enables us to access advanced and search reports as web services. These reports can be built in the Workday Portal and further consumed via the RaaS API for fetching data. Learn more about it [here](https://doc.workday.com/admin-guide/en-us/reporting-and-analytics/custom-reports-and-analytics/reports-as-a-service-raas-/dan1370796320263.html).

- **Workday Query Language**: Workday Query Language (WQL) enables you to use SQL-like syntax to access Workday data using data sources and fields instead of reports. WQL enables you to query Workday for data and explore data sources, data source filters, and fields. Learn more about it [here](https://doc.workday.com/admin-guide/en-us/reporting-and-analytics/custom-reports-and-analytics/workday-query-language-wql-/aht1611188422513.html?toc=1.20.0).


This guide will walk you through creating a connector within Agent Studio to make API calls to Workday where you can leverage any of the above types of web service and connect it to Moveworks. We have separated this guide into three main sections:
- [Prerequisites](#prerequisites)
- [Set up Workday](#set-up-workday)
- [Create a Connector in Agent Studio](#create-a-connector-and-test-in-agent-studio)



# Prerequisites
- Workday account with admin privileges so we can create an API account
- [Install Postman](https://www.postman.com/downloads/) for testing the API connection

# Set up Workday
To connect to Workday from within Agent Studio, we are going to be using [OAuth2 with the Refresh Token](https://oauth.net/2/grant-types/refresh-token/). This requires a client_id, a client_secret and a refresh_token. The following will walk you through how to set up a user and create the necessary ids so we can set up the connector within Agent Studio.


1. Create an Integration Systems User (ISU)
2. Create Security Group
3. Add ISU to Security Group
4. Add Domain Security Policies to the Integration Systems Security Group
5. Create API Client for Integrations
6. Provision a Refresh Token for the ISU

## Step 1: Create Integration System User (ISU)

The first step is to create an Integration System User, this user can be used for all integration requests to the back-end API.

Use the universal search to find the **`Create Integration System User`** (ISU) Workday Task

![Untitled](images/Untitled%2016.png)

Use the **`Create Integration System User`** (ISU) Workday Task to create a user following these settings. Write down the username and password that you use.

![Untitled](images/Untitled%2017.png)

Validate that the ISU has these default permissions after creation.

![Untitled](images/Untitled%2018.png)

---

## Step 2: Create Security Group

Next we need to create a security group that we can put users into for integrations.

Access **`Create Security Group`** task (from Workday’s Universal Search) and create an **`Integration System Security Group (Unconstrained)`**.

![Untitled](images/Untitled%2019.png)

![Untitled](images/Untitled%2020-1.png)

Call the Integration Systems Security Group name **`Moveworks ISSG`**

![Untitled](images/Untitled%2021-1.png)

## Step 3: Add Integration Systems User to Security Group

We need to add our new user to the new security group we created.

Use the **`All Workday Accounts`** report to find the account again.

![Untitled](images/Untitled%2022.png)

Click on **`Security Profile`** > **`Assign Integration System Security Groups`**

![Untitled](images/Untitled%2023.png)

Assign the ISU to the ISSG

![Untitled](images/Untitled%2024.png)

## Step 4: Add Domain Security Policies to the Integration Systems Security Group

We need to give the appropriate permissions to this security group so that we can call the api and any reports therein. By default, we just add everything but you may want to limit your api calls to only certain aspects of Workday.

Navigate to the ISSG using the **`View Security Group`** Report

![Untitled](images/Untitled%2025.png)

Use the menu item to access **`Security Group`** > **`Maintain Domain Permissions for Security Group`**

![Untitled](images/Untitled%2026.png)

Add the permissions that are needed for your Workday integration / use case. Permissions will vary per plugin guide. For example, permissions for time off and leave of absence are specified [here](https://help.moveworks.com/docs/workday-access-requirements#permissions). 

Click Ok.

![Untitled](images/Untitled%2027.png)

> Note: These Domain Permissions are dependent on the Workday Use Case that you are interested in building and can heavily differ based on that. For example, if the Workday Use Case you are working on requires the use of Workday Query Language for fetching/updating any data, then you would need to assign both the **View** and **Get** permissions or **Modify** and **Put** for the `Workday Query Language` Domain security policy. Similarly, if the Use Case requires access to certain objects like Accounts or Worker Time-Off details, then you would also have to assign those security policies accordingly.

Run the **`Activate Pending Security Policy Changes`** task to activate permissions

![Untitled](images/Untitled%2028.png)



## Step 5: Create API Client for Integrations

Universal search for **`Register API Client for Integrations`**

![search box to find api client for integrations](images/Untitled_10.png)

Set the name to **Moveworks** and add the scopes required.

![Register API Client](images/register_api_client.png)

Note your **`Client ID`** & **`Client Secret`**

![https://developer.moveworks.com/static/5011d27344ce82ae7d3b2ddc283b1e65/c6bbc/client_secret.png](images/client_secret.png)

Navigate to **`View API Clients`**. Note the **`Token Endpoint`** and **`Workday REST API Endpoint`**

![https://developer.moveworks.com/static/f83407419897649f501e24707114ec46/c6bbc/token_and_api.png](images/token_and_api.png)

## Step 6: Provision a Refresh Token for the ISU

From the **`View API Clients`** view, click on the **`API Clients for Integrations`** tab. Pick out the API Client you just created

![https://developer.moveworks.com/static/703d5272d024109eb4b30d808292e8a6/c6bbc/inspect_client.png](images/inspect_client.png)

From the related actions menu, select **`Manage Refresh Tokens for Integrations`**

![Manage refresh tokens page](images/Untitled_14.png)

Add the ISU Account you created earlier to the API Client

![manage refresh tokens for integrations page](images/isu_to_client.png)

Select **`Generate Refresh Token`**

![Generate a refresh token page](images/gen_refresh_token.png)

Note your  new refresh token.

![successfully regenerated refresh token page](images/refresh_token.png)



## Test the Connection

To test the connection, we need to first use the client_id and client_secret against the token api to get a bearer token. We then use that bearer token to run a query against the api.

We will use Postman to run these queries.

### Get a Bearer Token in Postman

1. Set up your request to import into Postman with your `CLIENT_ID`, `CLIENT_SECRET` and `REFRESH_TOKEN`.Feel free to replace the base URL with your instance's base URL.
    
    ```bash
    curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "client_id=YOUR_CLIENT_ID&client_secret=YOUR_CLIENT_SECRET&grant_type=refresh_token&refresh_token=YOUR_REFRESH_TOKEN" https://wd2-impl-services1.workday.com/ccx/oauth2/YOUR_TENANT_NAME/token
    ```
    
2. Import this request into Postman by clicking `file` -> `import`.

    ![Alt text](images/image.png)

3. Notice that the url and properties are filled in automatically. Execute by clicking `send`

    ![Alt text](images/image-1.png)
    
4. If the execution is successful, you should see an access_token in the response.

![Alt text](images/image-2.png)
    
Copy the access_token string for the next step, note that some of the access_token is blurred out in the screenshot for security purposes!


### Test a Query
 This is a simple WQL query to get five employees (in no particular order) from Workday.

---
****NOTE:****

This query works because you gave our user access to Workday Query Language and Worker Data in [step 4](#step-4:-add-domain-security-policies-to-the-integration-systems-security-group)

---

1. Set up your request to import into Postman with your `TENANT_NAME` and `BEARER_TOKEN` in the below with the values from previous steps. Feel free to replace the base URL with your instance's base URL:

```bash
curl --location 'https://wd2-impl-services1.workday.com/ccx/api/wql/v1/YOUR_TENANT_NAME/data?limit=5&offset=0' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer YOUR_BEARER_TOKEN' \
--data '{
    "query": "SELECT worker, fullName, employeeID  FROM allActiveEmployees"
}'
```

2. Import into Postman as you did in the previous section by going to `file` -> `import` and pasting your curl command

3. Confirm the values have been filled in properly by the import, if they have, you can run the command by hitting `send`

The above command should return the top five employees in your Workday database. If successful, you are done with the hardest part of connecting Agent Studio to Workday! 

![Alt text](images/image-3.png)

Next, let's take the above and create a connector within Agent Studio so we can query directly from within Moveworks.

# Create a Connector and Test in Agent Studio

Now that we have created everything within Workday and Postman, we can configure the connector on Agent Studio.

## Create a Connector (Oauth 2.0)

1. Go to HTTP Connectors and click on Create.

2. Create a new connector 'Workday' with the following configurations:

    - Base Url: `YOUR_BASE_URL` (Example: https://wd2-impl-services1.workday.com`)
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Refresh Token Grant`
    - Client ID: `YOUR_CLIENT_ID`
    - Client Secret: `YOUR_CLIENT_SECRET`
    - Refresh Token Grant Refresh Token: `YOUR_REFRESH_TOKEN`
    - Oauth2 Token Url: `YOUR_TOKEN_URL` (Example : https://wd2-impl-services1.workday.com/ccx/oauth2/YOUR_TENANT/token)

    ![Agent Studio Image](images/agent_studi.png)
    
    Fill in the above for the connection information while replacing YOUR_BASE_URL, YOUR_CLIENT_ID, YOUR_CLIENT_SECRET, YOUR_REFRESH_TOKEN, YOUR_TOKEN_URL and YOUR_TENANT_NAME with the values from the above steps where you set up the Workday connection.

3. Click Save

## Test the Connection

1. To test the connector, let's create a HTTP Action in Agent Studio. Navigate to HTTP Actions and click on Create. You can find more details on HTTP Actions [here](https://help.moveworks.com/docs/http-actions).

2. To test the same command from the eariler section, you can import the curl command in the HTTP Action. Replace <YOUR_TENANT_NAME> with your tenant in the action.

```bash
curl --location 'https://wd2-impl-services1.workday.com/ccx/api/wql/v1/YOUR_TENANT_NAME/data?limit=5&offset=0' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer YOUR_BEARER_TOKEN' \
--data '{
    "query": "SELECT worker, fullName, employeeID  FROM allActiveEmployees"
}'
```
![Import Curl](images/import_curl.png)

3. Under connector, click on 'Inherit from Existing Connector' and choose the newly created Workday connector.

![HTTP Action](images/http_action.png)

4. Click test. If you get the same output from your curl command, you have successfully created a connector into Workday and tested it! 

# **Congratulations!**

You've successfully integrated Workday's API with Agent Studio. This opens up a variety of automation and integration possibilities to Workday.
