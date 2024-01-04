---
design_pattern_id: 21  # The ID of the associated design pattern
name: Microsoft MFA Reset  # Name of the use case
description: Add a use case to your copilot that can reset Microsoft MFA  # Brief description of the use case
systems: [ Azure Function Apps, Microsoft Graph API ]  # List of systems involved in the use case
purple_chat_link: https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7525%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Hi%2C+Can+you+please+help+me+reset+my+Azure+MFA.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure%2C+do+you+want+to+proceed+with+resetting+the+MFA+as+this+cannot+be+reverted+%3F%22%2C%22cards%22%3A%5B%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Yes%22%7D%2C%7B%22text%22%3A%22No%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Inbound+Request+to+Middleware+%5C%22Azure+Functions%5C%22+%5Cn%5Cn%7B%5Cn+%5C%22email%5C%22+%3A+%3Cuser_email%3E%5Cn%7D%5Cn+%5CnProcess%3A%5Cn1.+Generate+Bearer+Token+for+Authentication%5Cn2.+LIST+the+existing+MFA+for+the+user%5Cn3.+Delete+the+MFA+for+the+user%5Cn%5CnOutbound+Response%3A%5Cn%7B%5Cn+++%5C%22Status%5C%22%3A+%5C%22OK+%28200%29%5C%22%5Cn%7D%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I%27ve+successfully+reset+the+MFA+on+Azure%22%7D%5D%7D%7D%5D%7D  # URL of the linked chat
time_in_minutes: 60  # Time in minutes to complete the use case
difficulty_level: Advanced  # Difficulty level: "Beginner", "Intermediate", or "Advanced"
---

### **Introduction**

Multi-Factor Authentication (MFA) is a security protocol that demands more than one method of authentication from independent categories of credentials to verify the user's identity for a login or other transaction. It creates a layered defense, making it more challenging for unauthorized users to access a target.

However, there are cases where an MFA reset would be required for users due to the following reasons:

- **Forgotten MFA Credentials**
- **Lost or New Device**
- **Suspicious Activity**
- **App Malfunctions**

In this tutorial, we will explore how to integrate Creator Studio with Microsoft Azure MFA for MFA Reset.

Let's get started!

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7525%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Hi%2C+Can+you+please+help+me+reset+my+Azure+MFA.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure%2C+do+you+want+to+proceed+with+resetting+the+MFA+as+this+cannot+be+reverted+%3F%22%2C%22cards%22%3A%5B%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Yes%22%7D%2C%7B%22text%22%3A%22No%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Inbound+Request+to+Middleware+%5C%22Azure+Functions%5C%22+%5Cn%5Cn%7B%5Cn+%5C%22email%5C%22+%3A+%3Cuser_email%3E%5Cn%7D%5Cn+%5CnProcess%3A%5Cn1.+Generate+Bearer+Token+for+Authentication%5Cn2.+LIST+the+existing+MFA+for+the+user%5Cn3.+Delete+the+MFA+for+the+user%5Cn%5CnOutbound+Response%3A%5Cn%7B%5Cn+++%5C%22Status%5C%22%3A+%5C%22OK+%28200%29%5C%22%5Cn%7D%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22I%27ve+successfully+reset+the+MFA+on+Azure%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

**This use case is made up of:**

✨ **Triggers:** Natural Language

🤲 **Slots**: User-supplied confirmation to reset all devices

🏃‍♂️ **Actions:** Reset all MFA devices for a user

📚 **Guidelines:** None

Based on the needs of this use case, we should build a ****User-Based Action Path****

## API Design

There’s only 1 API needed to build this use case

### API #1: Reset all devices

Since we want to integrate with Azure MFA, we should look into their Graph APIs. For this use case, we will need two API calls:

![Untitled](Use%20Case%20Guide%20Microsoft%20MFA%20Reset%20ce908c78ba7e462db7a30c342050723d/Untitled.png)

1. **[List Authentication Methods API](https://learn.microsoft.com/en-us/graph/api/authentication-list-phonemethods?view=graph-rest-1.0&tabs=http):** An API to list MFA devices for the user
2. **[Delete Authentication Method API](https://learn.microsoft.com/en-us/graph/api/phoneauthenticationmethod-delete?view=graph-rest-1.0&tabs=http):** An API to delete an MFA device

Both these APIs are hosted on the Microsoft Graph API and should be authenticated with a bearer token. You can follow our [Microsoft Graph Guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=microsoft-graph-api) to create an API key with the right privileges.

- Access to the Microsoft Graph APIs (follow [our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=microsoft-graph-api))
- An Azure Function App Deployment (follow [our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=azure-function-app))
- [Install Postman](https://www.postman.com/downloads/)

# **Prerequisites**

- A Working Azure Function (follow [our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=azure-function-app))
- Postman

# **Walkthrough**

## **Step 1: Build the “Reset MFA” API**

### Implement the Azure Function Code

1. Open your Azure Function App code. If you don’t have it handy, [follow our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=azure-function-app).
2. Update your code with the API flowchart we outlined above:
    
    ```python
    def main(req: func.HttpRequest) -> func.HttpResponse:
        logging.info('Python HTTP trigger function processed a request.')
    
        # Part 1: Parse the current user email from the request
    
        # Part 2: Retrieve all MFA Auth Methods setup by the user
    
        # Part 3: Delete the MFA Auth Methods for the user
    
        # Part 4: Return success to the user
    ```
    
3. Implement code using the API calls researched above.
    
    ```python
    import logging
    import requests
    import azure.functions as func
    import json
    
    def main(req: func.HttpRequest) -> func.HttpResponse:
        logging.info('Python HTTP trigger function processed a request.')
    
        # Part 1: Parse the current user email from the request
        try:
            req_body = req.get_json()
            name = req_body.get('mail')
        except ValueError:
            pass
    
        if mail:
            token_url = 'https://login.microsoft.com/<tenant_ID>/oauth2/token'  # Replace with the token URL
            headers = {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
            data = {
                'grant_type': 'client_credentials',
                'client_id': '[Redacted]',
                'client_secret': '[Redacted]',
                'resource': 'https://graph.microsoft.com'
            }
    
            try:
                token_response = requests.post(token_url, headers=headers, data=data)
                token_response.raise_for_status()  # Raise an exception if the request was unsuccessful
                access_token = token_response.json().get('access_token')
            except Exception as e:
                logging.error(f'Error occurred during token retrieval: {str(e)}')
                return func.HttpResponse('Internal Server Error', status_code=500)
    
            # Use the access_token in subsequent API calls
            list_response = list_items(access_token, mail)
            delete_response = delete_item(access_token, list_response, mail)
            
            # Part 4: Return success to the user
            if delete_response == 204:
                return func.HttpResponse(status_code=200)
                # return func.HttpResponse(f"MFA has been deleted for the user {name} List Response: {list_response}\nDelete Response: {delete_response} \nEvent Response: {event_response}", status_code=200)
            else:
                return func.HttpResponse(f"Delete call failed for mail {mail} List Response: {list_response}\nDelete Response: {delete_response}", status_code=500)
        else:
            return func.HttpResponse(f"The 'mail' variable is not provided in the request body.")
    
    # Part 2: Retrieve all MFA Auth Methods setup by the user
    def list_items(access_token, mail):
    
        api_url = f'https://graph.microsoft.com/v1.0/users/{mail}/authentication/microsoftAuthenticatorMethods'  # Replace with the API endpoint for listing items
        headers = {
            'Authorization': f'Bearer {access_token}',
            'Content-Type': 'application/json'
        }
        
        try:
            response = requests.get(api_url, headers=headers)
            response.raise_for_status()  # Raise an exception if the request was unsuccessful
            json_data = response.json()  # Parse the response JSON
            value = json_data['value']  # Access the 'value' list
            if value:  # Check if the list is not empty
                first_item = value[0]  # Get the first item in the list
                item_id = first_item['id']  # Access the value of the 'id' attribute
                return item_id
            else:
                return 'No items found'
        except Exception as e:
            logging.error(f'Error occurred during list call: {str(e)}')
            return 'List Error'
    
    # Part 3: Delete the MFA Auth Methods for the user
    def delete_item(access_token, list_response, mail):
        api_url = f'https://graph.microsoft.com/v1.0/users/{mail}/authentication/microsoftAuthenticatorMethods/{list_response}'  # Replace with the API endpoint for deleting an item
        headers = {
            'Authorization': f'Bearer {access_token}',
            'Content-Type': 'application/json'
        }
    
        try:
            response = requests.delete(api_url, headers=headers)
            response.raise_for_status()  # Raise an exception if the request was unsuccessful
            status_code = response.status_code
            return status_code  # Return the response text
        except Exception as e:
            logging.error(f'Error occurred during delete call: {str(e)}')
            return 'Delete Error'
    ```
    

### ****Validating & Deploying the API****

You can follow our system guide on Azure Functions to [test & deploy](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=azure-function-app) your function. 

You may want to create some fictitious MFA devices for testing. The following API call will create an MFA device for the specified user.

```python
curl --location '[https://graph.microsoft.com/v1.0/users/{{your_email}](https://graph.microsoft.com/v1.0/users/%7B%7Byour_email%7D)}/authentication/phoneMethods' \
--header 'Content-Type: application/json' \
--data '{
"phoneNumber": "+1 2065555555",
"phoneType": "office"
}'
```

## ****Step 2: Build in Creator Studio****

![Screenshot 2023-07-09 at 10.23.24 AM.png](Use%20Case%20Guide%20Microsoft%20MFA%20Reset%20ce908c78ba7e462db7a30c342050723d/Screenshot_2023-07-09_at_10.23.24_AM.png)

### ****Setup use case****

1. Start in the Paths Workspace
2. Title your use case: `Microsoft MFA Reset`

### ****Build the conversation design****

1. Start with the Conversation flow here where we request confirmation using “Yes” and “No” as a multiple choice option.
    
    ![Untitled](Use%20Case%20Guide%20Microsoft%20MFA%20Reset%20ce908c78ba7e462db7a30c342050723d/Untitled%201.png)
    
2. Add an API Action to execute your Azure Function App.
    - Connector: Follow our [Microsoft Graph API guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=microsoft-graph-api).
    - Path: `/api/trigger_azure_zee`
    - Method: `POST`
    - Headers:
        
        
        | Key | Value |
        | --- | --- |
        | Content-Type | application/json |
    - Request Body:
        
        ```python
        {
            "name": "{{user_email_addr}}"
        }
        ```
        
    - Action Description: `API call to delete the Azure Auth Method`

### Build your generative intent & launch the use case

Build a [Generative Intent](https://developer.moveworks.com/creator-studio/paths/generative-intents/) and then use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot. 

## Step 3: See it in action!

Trigger the use case by asking for it from your Copilot. [Here’s a quick demo](https://www.youtube.com/watch?v=OtjnspEnfAc).

# Congratulations!

You just added Microsoft MFA Reset to your Copilot! Say good-bye to those IT tickets. Check out our other guides for inspiration on what to build next.