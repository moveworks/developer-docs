---
name: Workday
description: Connect Creator Studio to Workday
time_in_minutes: 30
difficulty_level: Intermediate
---

# Introduction

Workday is a cloud-based software vendor that specializes in human capital management (HCM), enterprise resource planning (ERP), and financial management applications.

This guide will walk you through creating a connector within Creator Studio to make API calls to Workday. We have separated this guide into three main sections:
- [Prerequisites](#prerequisites)
- [Set up Workday](#set-up-workday)
- [Create a Connector in Creator Studio](#create-a-connector-and-test-in-creator-studio)



# Prerequisites
- Workday account with admin privileges so we can create an API account
- [Install Postman](https://www.postman.com/downloads/) for testing the API connection

# Set up Workday
To connect to Workday from within Creator Studio, we are going to be using [OAuth2 with the Refresh Token](https://oauth.net/2/grant-types/refresh-token/). This requires a client_id, a client_secret and a refresh_token. The following will walk you through how to set up a user and create the necessary ids so we can set up the connector within Creator Studio.


1. Create an Integration Systems User (ISU)
2. Create Security Group
3. Add ISU to Security Group
4. Add Domain Security Policies to the Integration Systems Security Group
5. Create API Client for Integrations
6. Provision a Refresh Token for the ISU

## Step 1: Create Integration System User (ISU)

The first step is to create an Integration System User, this user can be used for all integration requests to the back-end API.

Use the universal search to find the **`Create Integration System User`** (ISU) Workday Task

![Screen to show workday search for Create Integration System User](images/Untitled%2016.png)

Use the **`Create Integration System User`** (ISU) Workday Task to create a user following these settings. Write down the username and password that you use.

![Create Integration System User setup page](images/Untitled%2017.png)

Validate that the ISU has these default permissions after creation.

![Validate integration user set up](images/Untitled%2018.png)

---

## Step 2: Create Security Group

Next we need to create a security group that we can put users into for integrations.

Access **`Create Security Group`** task (from Workday’s Universal Search) and create an **`Integration System Security Group (Unconstrained)`**.

![Create security group search dropdown](images/Untitled%2019.png)

![Untitled](images/Untitled%2020-1.png)

Call the Integration Systems Security Group name **`Moveworks ISSG`**

![choose the type of security group](images/Untitled%2021-1.png)

## Step 3: Add Integration Systems User to Security Group

We need to add our new user to the new security group we created.

Use the **`All Workday Accounts`** report to find the account again.

![search for all workday accounts](images/Untitled%2022.png)

Click on **`Security Profile`** > **`Assign Integration System Security Groups`**

![elipse drope down for workday acccount](images/Untitled%2023.png)

Assign the ISU to the ISSG

![assign integration system user to the issg page](images/Untitled%2024.png)

## Step 4: Add Domain Security Policies to the Integration Systems Security Group

We need to give the apporpriate permissions to this security group so that we can call the api and any reports therein. By default, we just add everything but you may want to limit your api calls to only certain aspects of Workday.

Navigate to the ISSG using the **`View Security Group`** Report

![view security group search](images/Untitled%2025.png)

Use the menu item to access **`Security Group`** > **`Maintain Domain Permissions for Security Group`**

![integration secuirty group properties page](images/Untitled%2026.png)

Add any permissions that are needed for your Moveworks bot which will be dependent on what you plan on needing access to, the permissions we typically look for are shown [here](https://help.moveworks.com/docs/workday-access-requirements#permissions). 

Click Ok.

![comparison between moveworks setup and domain permissions setup for security group](images/Untitled%2027.png)

Run the **`Activate Pending Security Policy Changes`** task to activate permissions

![Untitled](images/Untitled%2028.png)



## Step 5: Create API Client for Integrations

Universal search for **`Register API Client for Integrations`**

![search for register api client for integrations](https://developer.moveworks.com/static/3f4721c823875fbc16322fb8cc12f78c/410f3/Untitled_10.png)

Set the name to **Moveworks** and add the scopes required.

![registration page for settings scopes](https://developer.moveworks.com/static/4c87b5210013217701570e0558eec348/c6bbc/registration.png)

Note your **`Client ID`** & **`Client Secret`**

![generate client secret settings page](images/client_secret.png)

Navigate to **`View API Clients`**. Note the **`Token Endpoint`** and **`Workday REST API Endpoint`**

![search for "view api clients"](images/token_and_api.png)

## Step 6: Provision a Refresh Token for the ISU

From the **`View API Clients`** view, click on the **`API Clients for Integrations`** tab. Pick out the API Client you just created

![view api clients with red box around "api clients for integrations"](images/inspect_client.png)

From the related actions menu, select **`Manage Refresh Tokens for Integrations`**

![manage refresh tokens page](https://developer.moveworks.com/static/6a2406d2a729e02c9e1f214ee8a6ea35/c6bbc/Untitled_14.png)

Add the ISU Account you created earlier to the API Client

![showing adding the isu account created earlier](https://developer.moveworks.com/static/b1bab6dffdf67d31c35640c840c0f17b/c6bbc/isu_to_client.png)

Select **`Generate Refresh Token`**

![showing generate refresh token buttom](https://developer.moveworks.com/static/2a3fbc8565c2adb8678d2388338278d6/c6bbc/gen_refresh_token.png)

Note your  new refresh token.

![new refresh token page, copy this for your own notes](https://developer.moveworks.com/static/48972e313711f799a7f8172586f256ca/c6bbc/refresh_token.png)



## Test the Connection

To test the connection, we need to first use the client_id and client_secret against the token api to get a bearer token. We then use that bearer token to run a query against the api.

We will use Postman to run these queries.

### Get a Bearer Token in Postman

1. Set up your request to import into Postman with your `CLIENT_ID`, `CLIENT_SECRET` and `REFRESH_TOKEN`.
    
    ```bash
    curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "client_id=YOUR_CLIENT_ID&client_secret=YOUR_CLIENT_SECRET&grant_type=refresh_token&refresh_token=YOUR_REFRESH_TOKEN" https://wd2-impl-services1.workday.com/ccx/oauth2/YOUR_TENANT_NAME/token
    ```
    
2. Import this request into Postman by clicking `file` -> `import`.

    ![postman image showing import menu dropdown](images/image.png)

3. Notice that the url and properties are filled in automatically. Execute by clicking `send`

    ![postman showing imported curl](images/image-1.png)
    
4. If the execution is successful, yous hould see the an access_token in the response.

    ![postman showing body from successful run](images/image-2.png)
    
Copy the access_token string for the next step, note that some of the access_token is blurred out in the screenshot for security purposes!


### Test a Query
 This is a simple WQL query to get five employees (in no particular order) from Workday.

---
****NOTE:****

This query works because you gave our user access to Workday Query Language and Worker Data in [step 4](#step-4:-add-domain-security-policies-to-the-integration-systems-security-group)

---

1. Set up your request to import into Postman with your `TENANT_NAME` and `BEARER_TOKEN` in the below with the values from previous steps:

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

The above command should return the top five employees in your Workday database. If successful, you are done with the hardest part of connecting Creator Studio to Workday! 

![postman setup showing params to send to api endpoint](images/image-3.png)

Next, let's take the above and create a connector within Creator Studio so we can query directly from within Moveworks.

# Create a Connector and Test in Creator Studio

Now that we have created everything within Workday and we have tested with our curl command, we can create duplicate our test in Creator Studio.

## Create a Connector

Since we are going to be running a query to test, we can start the connector creation from there. 

1. Let's start by going into the Queries workspace and creating a new query. You can follow the steps for creating a new query [here](https://developer.moveworks.com/creator-studio/quickstart/queries/) only instead of choosing an existing connector, choose to create a new one.

![Create a new connector page in creator studio](images/2024-01-05_21-49-22.png)

2. In your API editor, create a new connector. You can read more about the supported auth types on [our connector reference](https://developer.moveworks.com/creator-studio/connector-configuration/). 
Fill in the following for the connection information while replacing YOUR_CLIENT_ID, YOUR_CLIENT_SECRET, YOUR_REFRESH_TOKEN and YOUR_TENANT_NAME with the values from the above steps where you set up the Workday connection.

    - Base Url: `https://wd2-impl-services1.workday.com`
    - Auth Config: `Oauth2`
    - Oauth2 Grant Type: `Refresh Token Grant`
    - Client ID: `YOUR_CLIENT_ID`
    - Client Secret: `YOUR_CLIENT_SECRET`
    - Refresh Token Grant Refresh Token: `YOUR_REFRESH_TOKEN`
    - Oauth2 Token Url: `https://wd2-impl-services1.workday.com/ccx/oauth2/YOUR_TENANT/token`
    - Oauth2 Client Authentication: `OAuth 2.0 with Basic Auth Header set to client id and client secret`




Click Save

## Test the Connection

1. You can continue following the guide [here](https://developer.moveworks.com/creator-studio/quickstart/queries/) to create your query with the newly created connector. To test the same command from curl, you can enter the following on the `API Connection` screen.

API endpoint path: `/ccx/api/wql/v1/YOUR_TENANT/data`
Method: `POST`
Request body: `{
    "query": "SELECT worker, fullName, employeeID  FROM allActiveEmployees"
}`
Headers: `Content-Type` : `application/json`
Query parameters: `limit` : `5`

![api connection page showing configuration](images/2024-01-06_06-52-59-1.png)

![continued configuration](images/2024-01-06_06-53-17.png)

![show final result from testing](images/2024-01-06_06-53-41.png)



2. Click test, if you get the same output from your curl command, you have sucessfully created a connector into Workday and tested it! 

# **Congratulations!**

You've successfully integrated Workday's API with Creator Studio. This opens up a variety of automation and integration possibilities to Workday.
 




