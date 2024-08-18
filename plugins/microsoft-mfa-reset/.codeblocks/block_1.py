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
