---
availability: VALIDATED
description: Integrate with Azure Function Apps using function keys.
logo: https://marketplace.moveworks.com/api/marketplace/github-proxy?path=/moveworks/developer-docs/main/connectors/azure-function-app/logo.png
name: Azure Function Apps
solution_tags:
- General
---

# Introduction

Azure Functions is a serverless computing service provided by Microsoft Azure, offering an event-driven approach to building and deploying applications. 

In this guide, we will demonstrate how to authenticate with an Azure Function App from Agent Studio. We will walk through creating a function app, implementing code, deploying it to Azure, testing it in Postman, and connecting it to Agent Studio

We are going to use the [Star Wars API](https://swapi.dev/) to build an API that returns a list of starships & vehicles based on the name of a Star Wars character.

# Prerequisites

- [Create an Azure Account](https://learn.microsoft.com/en-us/office/developer-program/microsoft-365-developer-program-get-started)
- [Install VS Code](https://code.visualstudio.com/) or your code editor of choice
- [Install the Azure Functions Extension for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions) (make sure you link your Azure account)
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled.png)
    
- [Install Postman](https://www.postman.com/downloads/) or your API tester of choice
- [Install Python](https://www.python.org/downloads/)

# Steps

## Step 1: Create Function

1. In the `Azure` tab, under `Workspace`, click the Azure Function App icon, then click `Create Function`
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%201.png)
    
2. For the prompts, use the following settings:
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%202.png)
    
    - Folder: Any
    - Language: `Python`
    - Programming Model: `V2`
    - Interpreter: Choose the version of Python you installed. I’m using 3.9.6 for this one.
3. Setup an `HTTP Trigger`
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%203.png)
    
    - Function name: `creator_studio_hello_world`
    - Authorization Level: `Function`
4. Your Function App should automatically populate in VS Code!
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%204.png)
    

## Step 2: Add some code

### Pseudocode

Our function will do roughly the following

1. Retrieve the name of the star wars character based on a search parameter. We’ll just take the first result to simplify things.
    
    ```jsx
    https://swapi.dev/api/people?search={{name}}
    
    // Example where "name" = "Luke"
    
    {
    	"count": 1,
    	"next": null,
    	"previous": null,
    	"results": [
    		{
    			"name": "Luke Skywalker",
    			"height": "172",
    			"mass": "77",
    			"hair_color": "blond",
    			"skin_color": "fair",
    			"eye_color": "blue",
    			"birth_year": "19BBY",
    			"gender": "male",
    			"homeworld": "https://swapi.dev/api/planets/1/",
    			"films": [
    				"https://swapi.dev/api/films/1/",
    				"https://swapi.dev/api/films/2/",
    				"https://swapi.dev/api/films/3/",
    				"https://swapi.dev/api/films/6/"
    			],
    			"species": [],
    			"vehicles": [
    				"https://swapi.dev/api/vehicles/14/",
    				"https://swapi.dev/api/vehicles/30/"
    			],
    			"starships": [
    				"https://swapi.dev/api/starships/12/",
    				"https://swapi.dev/api/starships/22/"
    			],
    			"created": "2014-12-09T13:50:51.644000Z",
    			"edited": "2014-12-20T21:17:56.891000Z",
    			"url": "https://swapi.dev/api/people/1/"
    		}
    	]
    }
    ```
    
2. Retrieve all vehicles belonging to the character
    
    ```jsx
    "https://swapi.dev/api/vehicles/14/"
    "https://swapi.dev/api/vehicles/30/"
    ```
    
3. Retrieve all starships belonging to the character
    
    ```jsx
    "https://swapi.dev/api/starships/12/"
    "https://swapi.dev/api/starships/22/"
    ```
    
4. Merge the results into 1 response.
    
    ```jsx
    {
    	"results": [
    		{
    			"type": "Vehicle",
    			"id": "14",
    			"name": "Speeder",
    			...
    		},
    		...
    	]
    }
    ```
    

### Install Dependencies

Since we are going to make API calls, we’ll need the `requests` library. Add it to your `requirements.txt` file.

![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%205.png)

### Implement the code

You can modify the default code to the following to implement our pseudocode.

```python
import azure.functions as func
import logging
import json
import requests

app = func.FunctionApp(http_auth_level=func.AuthLevel.FUNCTION)

@app.route(route="creator_studio_hello_world")
def creator_studio_hello_world(req: func.HttpRequest) -> func.HttpResponse:
    logging.info("Python HTTP trigger function processed a request.")

    # Attempt to parse the "name" from the query parameter
    name = req.params.get("name")

    # Parse the "name" from the JSON body if it's not in the query
    if not name:
        try:
            req_body = req.get_json()
        except ValueError:
            pass
        else:
            name = req_body.get("name")

    if name:
        # Find a matching character
        response = requests.get(f"https://swapi.dev/api/people?search={name}")
        result = response.json()

        try:
            character = result["results"][0]
        except IndexError:
            return func.HttpResponse(
                json.dumps({"error": f"No results found for {name}"}),
                mimetype="application/json",
                status_code=404,
            )

        # Initialize an array to store all vehicles & starships in
        all_transportation = []

        # Get details for all vehicles this character has
        for vehicle_url in character["vehicles"]:
            # Parse the vehicle ID from the URL (e.g. https://swapi.dev/api/vehicles/14/)
            vehicle_id = vehicle_url.split("/")[-2]
            response = requests.get(vehicle_url)
            result = response.json()

            all_transportation.append(
                {
                    "type": "Vehicle",
                    "full-id": f"Vehicle-{vehicle_id}",
                    "name": result["name"],
                    "model": result["model"],
                    "cost": result["cost_in_credits"],
                }
            )

        # Get details for all starships this character has
        for starship_url in character["starships"]:
            # Parse the vehicle ID from the URL (e.g. https://swapi.dev/api/starships/12/)
            starship_id = starship_url.split("/")[-2]
            response = requests.get(starship_url)
            result = response.json()

            all_transportation.append(
                {
                    "type": "Starship",
                    "full-id": f"Starship-{starship_id}",
                    "name": result["name"],
                    "model": result["model"],
                    "cost": result["cost_in_credits"],
                }
            )

        return func.HttpResponse(
            json.dumps({"results": all_transportation}),
            mimetype="application/json",
            status_code=200,
        )
    else:
        return func.HttpResponse(
            body=json.dumps({"error": "Please provide a name"}),
            mimetype="application/json",
            status_code=400,
        )
```

## Step 3: Test Locally

1. In the `Run & Debug` tab click the `Run` icon (the green triangle).
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%206.png)
    
    You should get a function URL in your terminal output. Ours is `http://localhost:7071/api/creator_studio_hello_world`
    
2. Open Postman and place your function URL in the URL bar
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%207.png)
    
3. Try out a few variations. Make sure you’re handling errors appropriately.
    1. GET request with no parameters
        
        ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%208.png)
        
    2. GET request with a query parameter
        
        ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%209.png)
        
    3. POST request with a search body
        
        ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2010.png)
        

## Step 4: Deploy & Test

1. Go back to the Azure tab. Click the Azure Function Icon again, and this time select `Create Function App in Azure`
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2011.png)
    
2. Name your app. I’m naming mine `creator-studio-tutorials-ajay`
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2012.png)
    
3. You will probably want to select the same python version you’re using locally.
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2013.png)
    
4. Use the recommended region. You want to provision the app where you have a subscription.
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2014.png)
    
5. Click the Azure Function Icon again, and this time select `Deploy to Function App`
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2015.png)
    
6. Select the function app you created
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2016.png)
    
7. Check your output for a successful deployment
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2017.png)
    
    Make sure you jot down your API URL `creator-studio-tutorials-ajay.azurewebsites.net`
    
8. Final step, let’s get the “Function Key” used to authenticate this API
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2018.png)
    
9. Now we can test in Postman. 
    - Swap the localhost out for your API URL
    - Add a new URL parameter `code` and set that to your Function Key.
    
    ![Untitled](Authentication%20Guide%20Azure%20Function%20Apps%207503f66bf6994df5b7bb481e05e82e9f/Untitled%2019.png)
    

Nice! We have a working API endpoint to connect to Agent Studio.

## Step 5: Connect to Agent Studio

1. In your API editor, create a new connector. You can read more about the supported auth types on [our connector reference](https://developer.moveworks.com/creator-studio/connector-configuration/).
    - Base Url: `https://creator-studio-tutorials-ajay.azurewebsites.net`
    - Auth Config: `Api Key Auth`
    - Api Key Auth Auth Type: `Param Auth`
    - Param Auth Param Name: `code`
    - API Key: `{{function_key}}`
2. Add your API details. You can read more about setting up API actions from our [API configuration reference](https://developer.moveworks.com/creator-studio/api-configuration/).
    
    ```python
    curl --location '{{base_url}}/api/creator_studio_hello_world?name=Han&code=*****' \
    --data ''
    ```
    
    - Path: `/api/creator_studio_hello_world`
    - Method: `GET`
    - Query parameters:
        
        
        | Key | Value |
        | --- | --- |
        | name | {{query}} |
    - Example Value: `Han` (as in Han Solo)
3. Hit test & celebrate!
    
    ```bash
    {
        "results": [
            {
                "type": "Starship",
                "full-id": "Starship-10",
                "name": "Millennium Falcon",
                "model": "YT-1300 light freighter",
                "cost": "100000"
            },
            {
                "type": "Starship",
                "full-id": "Starship-22",
                "name": "Imperial shuttle",
                "model": "Lambda-class T-4a shuttle",
                "cost": "240000"
            }
        ]
    }
    ```
    

# Congratulations!

You just connected your first Azure Function App to Agent Studio. [Check out this guide]() to configure Azure Multi-Factor Authentication (MFA) Reset in Agent Studio.