---
name: ServiceNow
description: Connect Creator Studio to ServiceNow using Basic Authentication
time_in_minutes: 15
difficulty_level: Beginner
---

# **Introduction**

ServiceNow's API provides a powerful way to automate tasks in within the ServiceNow environment, as well as query any of the miriad of tables, both offered by ServiceNow OOTB or custom. This guide will show how to create a ServiceNow service account and authenticate with ServiceNow's APIs.

# **Prerequisites**

- Admin access to a ServiceNow instance
- [Install Postman](https://www.postman.com/downloads/)

# **Walkthrough**

## **Step 1: Create a new ServiceNow service account**

1. Navigate to [Create a user](https://docs.servicenow.com/bundle/washingtondc-platform-administration/page/administer/users-and-groups/task/t_CreateAUser.html) on the ServiceNow documentation portal and follow the instructions to create a new service account user.
    
## **Step 2: Obtain API Credentials**

### Identify Permissions

1. Navigate to [REST API reference](https://docs.servicenow.com/bundle/vancouver-api-reference/page/build/applications/concept/api-rest.html) on the ServiceNow documentation portal and find the APIs required for the use case. Each API endpoint specifies exactly what roles will be required.

### **Add Roles**

1. Navigate to [Assign a role to a user](https://docs.servicenow.com/bundle/washingtondc-platform-administration/page/administer/users-and-groups/task/t_AssignARoleToAUser.html) on the ServiceNow documentation portal and follow the instructions to add the roles specified in step 2 above.

## **Step 3: Test with Postman**

1. Set up your request in Postman with your newly created service account's username and password. For example:
    
    ```bash
    curl -X GET 'https://{{your_organization_name}}.service-now.com/api/now/table/incident?sysparm_limit=10' \
    --header 'Authorization: Basic {{Base64 encoded username:password}}'
    ```
    
2. Check for a successful response. In the above example, this would be a list of 10 incidents randomly selected from the incident table.
    

## **Step 4: Integrate with Creator Studio**

1. In Creator Studio, create a new connector with the following configuration:
    - Base URL: `https://{{your_organization_name}}.service-now.com`
    - Auth Config: `Basic Auth`
    - Api Key Auth Auth Type: `Header Auth`
    - Username: `{{Username of service account}}`
    - Password: `{{Password of service account}}`
        ```
    

# **Congratulations!**

You've successfully integrated ServiceNow's API with Creator Studio. This opens up a variety of automation and integration possibilities within your ServiceNow environment.
