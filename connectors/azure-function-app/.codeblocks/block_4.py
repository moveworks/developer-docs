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
