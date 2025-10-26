---
availability: VALIDATED
difficulty_level: BEGINNER
fidelity: GUIDE
logo: https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Stack_Overflow_icon.svg/1200px-Stack_Overflow_icon.svg.png
name: Stack Overflow
time_in_minutes: 30
---

# **Introduction**

Integrating Stack Overflow with Agent Studio enables seamless access to valuable programming knowledge and collaboration insights, enhancing your development workflows. By leveraging Stack Overflow's robust API and utilizing appropriate authentication mechanisms, you can automate the retrieval of questions, answers, and discussions to improve your team's problem-solving capabilities. This guide provides a step-by-step process to connect your Stack Overflow instance to Agent Studio and test the integration, ensuring efficient access to expert solutions and streamlined collaboration within your coding projects.

# **Prerequisites**

- A **Service account with Admin privileges** is necessary.
- Stack Overflow Enterprise Plan.

## FOR READ ONLY USECASES (eg. Search questions, answers and comments)

### STEP 1:  Navigate to your user's  page → Admin’s Settings → Integrations → API

![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image.png)

![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%201.png)

### STEP 2: Click on **Create new service key**

![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%202.png)

### STEP 3: Name your application and give a suitable Domain.

![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%203.png)

### STEP 4: Create the application and note down all the fields.

![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%204.png)

### STEP 5: Remember to enable write access if you need the write cases.

![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%205.png)

## FOR WRITE CASES (eg. write a question, post a comment, post an answer, etc):

### The explicit OAuth 2.0 flow consists of the following steps:

1. Send a user to `https://{{your organisation}}.stackenterprise.co/oauth`, with these query string parameters
    - **client_id** - The client ID of the Api application you just created.
    - **scope** ([details](https://moveworks.stackenterprise.co/api/docs/authentication#scope)) : Select write_access, no_expiry because we need perpetual access.
    - **redirect_uri** - must be under an apps registered domain (eg. localhost.com)
    - **state** - optional
    
    ```bash
    https://{{your organization}}.stackenterprise.co/oauth?client_id=4&scope=write_access,no_expiry&redirect_uri=https://localhost.com
    ```
    
2. The user approves your app
    
    ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%206.png)
    
3. The user is redirected to **redirect_uri**, with these query string parameters
    - **code**
    - **state** - optional, only returned if provided in the first step
    
    ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%207.png)
    
4. POST (application/x-www-form-urlencoded) the following parameters to `https://{{your organization}}.stackenterprise.co/oauth/access_token`
    - **client_id** - The client ID of the Api application you just created.
    - **client_secret** - The client Secret of the Api application you just created.
    - **code** - from the previous step
    - **redirect_uri** - must be the same as the provided in the first step

This request is responded to with either an error (HTTP status code 400) or an access token of the form `access_token=...&expires=1234`. `expires` will only be set if scope does not include `no_expiry`, the use of which is strongly advised against unless your app *truly* needs perpetual access.

# Connect to Agent Studio:

## For Read Cases:

- In Agent Studio, create a new action with the following configuration:
- Click on **create new connector.**
    - Base Url : Your organization specific base url.
    - Name the connector appropriately.
    - Give a suitable description.
    - Choose **Api Key Auth**.
        - **Api Key Auth Type :** Param Auth
        - **Param Auth Parameter Name :** X-API-key
        - **API Key** : Pass the key you saved while creating the api application.
            
            ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%208.png)
            
            ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%209.png)
            
    - Fill the endpoint as /search.
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2010.png)
        
    - Create a query param as “inititle” and configure the input arg.
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2011.png)
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2012.png)
        
    - Give an example value for the input arg (eg .the question you want to search).
    - Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below:
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2013.png)
        
    - Click on Publish to save the connector.

## For Write Cases:

- In Agent Studio, create a new action with the following configuration:
- Click on **create new connector.**
    - Base Url : Your organization specific base url.
    - Name the connector appropriately.
    - Give a suitable description.
    - Choose **Api Key Auth**.
        - **Api Key Auth Type :** Header Auth
        - **Header Auth Key :** access_token
        - **API Key** : Pass the access_token you saved earlier.
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2014.png)
        
    - Configure a query parameter:
        - key : Pass the key you saved while creating the api application.
            
            ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2015.png)
            
    - Fill the endpoint as /search.
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2010.png)
        
    - Create a query param as “inititle” and configure the input arg.
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2011.png)
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2012.png)
        
    - Give an example value for the input arg (eg .the question you want to search).
    - Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below:
        
        ![image.png](Stack%20Overflow%201d4588d8909f80cd9a5bf1ba2f5a264c/image%2016.png)
        
    - Click on Publish and save the connector.

# Congratulations!

You've successfully integrated Stack Overflow with Agent Studio. This opens up a variety of automation and integration possibilities within your Stack Overflow environment.