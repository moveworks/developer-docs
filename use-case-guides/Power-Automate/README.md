---
design_pattern_id: 29 
name: Power Automate Data Flattening 
description: Flattening the data using Power Automate and then triggering an API endpoint from Creator Studio and return data back to Creator Studio.
systems: [Power Automate]
time_in_minutes: 60
difficulty_level: Intermediate
---
# PowerAutomate Data Flattening Guide

# **Introduction**

Power Automate is a low-code, no-code tool that allows you to build “flows” as custom APIs.

In this guide, we will demonstrate how to flatten data using Power Automate and then trigger an API endpoint from Creator Studio and return data back to Creator Studio. We will walk through creating & publishing a recipe, testing it in Postman, and connecting it to Creator Studio.

We are going to build a simple “InvoiceData” API that returns the value sent to the API.

# **Prerequisites**

- Power Automate Account with access to create custom flows

# **Walkthrough**

## **Step 1: Create a new Flow**

1. Go to your [Power Automate portal](https://make.powerautomate.com/).
2. Click on My Flows > New Flow > Instant Cloud Flow.

![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled.png)

## **Step 2: Setup Trigger**

1. Choose “When an HTTP request is received” as the trigger
2. Name the new flow, for example 'Get Invoice Data', and click 'Create'.
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%201.png)
    
3. Select your trigger block and click on “**Use sample payload to generate schema**” and paste the below schema:

```json
{
        "chunk_index": 0,
        "row_offset": 0,
        "row_count": 2,
        "data_array": [
            [
                "10645862",
                "15211132",
                "179.57",
                "APPROVED",
                "Y",
                "3238292",
                "PARAGON DEVELOPMENT SYSTEMS",
                "2024-01-30"
            ],
            [
                "10645862",
                "15211132",
                "179.57",
                "APPROVED",
                "Y",
                "3238292",
                "PARAGON DEVELOPMENT SYSTEMS",
                "2024-01-30"
            ]
        ]
    }
```

![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%202.png)

## **Step 3: Implement “HTTP” flow Action**

1. Add a new action 'HTTP', this will hold your Rest API.
2. Name the variable, for example 'Get Users API', and add the API URL into the URL field and select method as GET
3. Add the required header values based on the API you are using, since we are using a public API that doesn’t require authorization, we do not need to add specific headers. Examples of what headers you can add are below, such as Content-type, Authorization, etc.:
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%203.png)
    

## ⚠️ **Note - Step 3: Implement “Parse JSON” flow Action (If API data not available)**

1. Add a new action 'Parse JSON', this will hold your temporary invoice Data [If you have similar data coming from an API, see Notes section]
2. Add your sample data in the content section and also click on “**Use sample payload to generate schema**” and paste the schema from Step 2.
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%204.png)
    

## **Step 4: Implement “Initialize Variable” flow Action**

1. Add a new action 'Initialize Variable', give the variable a name and choose the type as “Array”.
2. This action will initialize the variable and pass the data back in next steps\
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%205.png)
    

## **Step 5a: Implement “Apply To Each” flow Action**

1. Add a new action 'Apply to Each', select an output from previous step, in this example the output would be “Body data_array”
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%206.png)
    

![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%207.png)

## **Step 5b: Implement “Compose” flow Action inside “Apply to Each” flow action**

1. Add a new action 'Compose', this creates an object based on the inputs provided. For the current example, add the following JSON inside the inputs section.
    
    ```json
    {
    "invoice_id": @{items('Apply_to_each')[0]},
    "invoice_num": @{items('Apply_to_each')[1]},
    "invoice_amt": @{items('Apply_to_each')[2]},
    "approval_status": @{items('Apply_to_each')[3]},
    "payment_status_flag": @{items('Apply_to_each')[4]},
    "supplier_no": @{items('Apply_to_each')[5]},
    "supplier_nm": @{items('Apply_to_each')[6]} ,
    "invoice_date": @{items('Apply_to_each')[7]}
    }
    ```
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%208.png)
    

## **Step 5c: Implement “Append to array variable” flow Action inside “Apply to Each” flow action**

1. Add a new action 'Append to array variable', this will append the data from previous steps provided. Choose the name “DataArray” that was set in step 4.
2. For value, select “outputs” under compose option.

![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%209.png)

## **Step 6: Implement “Compose” flow Action again**

1. Add a new action “Compose”, this will hold the output from the previous step inside the “items” key in the JSON object.
2. Under Inputs, type in {”items” : } and then for the value select DataArray variable as shown below

![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%2010.png)

## **Step 7: Implement the “Response”  flow Action**

1. Add another action called 'Response'. This will be returned to Moveworks when the flow is triggered.
2. Select the 'outputs' variable for the body from the previous compose step.
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%2011.png)
    

## **Step 8: Save and Test the Flow**

1. Save the flow and copy the HTTP POST URL generated in the HTTP request trigger.
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%2012.png)
    
2. Test the flow by sending a POST request to the copied URL using a REST client (like Postman) or Curl command:
    1. If set up correctly, the request will return data as below:
    
    ![Untitled](PowerAutomate%20Data%20Flattening%20Guide%206543b4f679554294a85ade688cb9e253/Untitled%2013.png)
    

## **Step 9: Connect to Moveworks**

1. Create a [new creator studio connector](https://developer.moveworks.com/creator-studio/integrations/outbound/connector-configuration/). For more information about the supported auth types, check out our connector reference.
2. Fill in the following details:
    - Connection Name
    - Base Url: The Power Automate HTTP POST URL
    - Auth Config: Api Key Auth
    - Api Key Auth Auth Type: Header Auth
    - Header Auth Key: x-api-key
    - API Key: {{api_key}}
    
    **Note**: For testing, we can choose no auth
    

## **Step 10: Setup Queries Action**

1. Add your API details. For more information about how to setup API actions, check out our API configuration reference.
    - Path: Leave blank, because the URL of Power Automate flow is self-contained.
    - Method: POST
    - Body:

```json
jsonCopy code
{
    "items": [
        {
            "invoice_id": "10645862",
            "invoice_num": "15211132",
            "invoice_amt": "179.57",
            "approval_status": "APPROVED",
            "payment_status_flag": "Y",
            "supplier_no": "3238292",
            "supplier_nm": "PARAGON DEVELOPMENT SYSTEMS",
            "invoice_date": "2024-01-30"
        },
        {
            "invoice_id": "10645862",
            "invoice_num": "15211132",
            "invoice_amt": "179.57",
            "approval_status": "APPROVED",
            "payment_status_flag": "Y",
            "supplier_no": "3238292",
            "supplier_nm": "PARAGON DEVELOPMENT SYSTEMS",
            "invoice_date": "2024-01-30"
        }
    ]
}
```

1. Test, and then celebrate!

```json
jsonCopy code
{
    "items": [
        {
            "invoice_id": "10645862",
            "invoice_num": "15211132",
            "invoice_amt": "179.57",
            "approval_status": "APPROVED",
            "payment_status_flag": "Y",
            "supplier_no": "3238292",
            "supplier_nm": "PARAGON DEVELOPMENT SYSTEMS",
            "invoice_date": "2024-01-30"
        },
        {
            "invoice_id": "10645862",
            "invoice_num": "15211132",
            "invoice_amt": "179.57",
            "approval_status": "APPROVED",
            "payment_status_flag": "Y",
            "supplier_no": "3238292",
            "supplier_nm": "PARAGON DEVELOPMENT SYSTEMS",
            "invoice_date": "2024-01-30"
        }
    ]
}
```

Congratulations! You have successfully connected your first Power Automate flow to Moveworks.