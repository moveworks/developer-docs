---
availability: VALIDATED
description: Connect your Moveworks Copilot to Databricks.
logo: https://upload.wikimedia.org/wikipedia/commons/6/63/Databricks_Logo.png
name: Databricks
solution_tags:
- General
---

# Introduction

Integrating Databricks with Agent Studio provides a seamless fusion of data analytics and workflow automation for enhanced productivity. By utilizing Databricks's powerful REST API and employing the appropriate authentication mechanisms, you can automate data processing and optimize your data-driven workflows. 

This guide offers a step-by-step process to connect your Databricks environment to Agent Studio and test the integration to ensure efficient data collaboration and insight generation.

Let’s get started!

# **Prerequisites**

You have to be one of the following: 

- **Account admin**
- **Workspace admin**

# **Connect with OAuth Machine-to-Machine (M2M)**

Also known as the 2-legged OAuth and OAuth Client Credentials Flow, this guide will focus on the Machine-to-Machine authentication flow between your Databricks instance and Agent Studio.

Learn more about it [here](https://docs.databricks.com/aws/en/dev-tools/auth/oauth-m2m).

## STEP 1: Create service principal and service principal secret

You need to create a Databrick service principal for your application M2M authentication. Here are
the steps:

1. Login to Databricks Account Console
    1. AWS: [https://accounts.cloud.databricks.com](https://accounts.cloud.databricks.com/)
    2. Azure: [https://accounts.azuredatabricks.net](https://accounts.azuredatabricks.net/)
    3. GCP: [https://accounts.gcp.databricks.com](https://accounts.gcp.databricks.com/)
2. Select **User Management** from the left navigation panel.
    
    ![CleanShot 2025-04-11 at 10.48.25.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.48.25.png)
    
3. From the **Service Principals** tab, click on **Add service principal.**
    
    ![CleanShot 2025-04-11 at 10.49.07.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.49.07.png)
    
4. (Azure only) Select “**Databricks managed**” under the “**Management**” section.
5. Enter a name for the service principal and click on **Add service principal**.
    
    ![CleanShot 2025-04-11 at 10.49.57.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.49.57.png)
    
6. Select the service principal you just created.
7. Click on **Generate Secret**.
    
    ![CleanShot 2025-04-11 at 10.50.14.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.50.14.png)
    
8. Copy the Client ID and Secret from the pop-up window and store them somewhere safe as you
won’t be able to see the “Secret” again. We will be using these to create the connector within Agent Studio.
    
    ![CleanShot 2025-04-11 at 10.50.44.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.50.44.png)
    
9. Assign the service principal to the workspace, follow the [instructions here](https://docs.databricks.com/en/admin/users-groups/service-principals.html#assign-a-service-principal-to-a-workspace-using-the-account-console) to set it up.
    1. Go to **Workspaces** from the left navigation bar.
        
        ![CleanShot 2025-04-11 at 10.51.23.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.51.23.png)
        
    2. Select the workspace you want.
    3. Go to the **Permissions** tab.
        
        ![CleanShot 2025-04-11 at 10.52.22.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.52.22.png)
        
    4. Select **Add permission.**
        
        ![CleanShot 2025-04-11 at 10.52.51.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.52.51.png)
        
    5. Add the service principal you just created and click on **Save**.
        
        ![CleanShot 2025-04-11 at 10.53.34.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/CleanShot_2025-04-11_at_10.53.34.png)
        
    

 

## STEP 2: Connect to Agent Studio

- In Agent Studio, create a new action with the following configuration:
    - Base URL : The hostname for the workspace or the URL of your
    Databricks workspace (e.g., `https://dbc-a1b2c3-d4e5.cloud.databricks.com`).
    - Auth config : **OAuth2**
    - OAuth2 Grant Type : **Client Credentials Grant**
        - Client ID : `Client Id` from the Service principal you just created.
        - Client Secret : `Secret` from the Service principal you just created.
        - Client Credentials Grant Scope : `sql all-apis`
        - Oauth2 Token Url : `https://{databricks-hostname}/oidc/v1/token`. Replace {databricks-hostname} with the actual hostname for your workspace (e.g., `https://dbc-a1b2c3-d4e5.cloud.databricks.com/oidc/v1/token`)
        - Oauth2 Client Authentication : Select `OAuth 2.0 with Request Body` from the dropdown.
        
        ![image.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/image.png)
        
- Fill out the endpoint details `/api/2.0/sql/warehouses`  and select GET method.
    - This API lists all SQL warehouses that the service principal has manager permissions on.
    - Click on **Test** to check if the Connector setup was successful and expect a successful response as shown below:
        
        ![Screenshot 2025-04-12 at 12.03.38 AM.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/Screenshot_2025-04-12_at_12.03.38_AM.png)
        
- Click on Save and name your Connector and API Actions appropriately.
    
    ![image.png](Databricks%2010e588d8909f8029a3aed9045f2ea423/image%201.png)
    

# Congratulations!

You've successfully integrated Databricks with Agent Studio. This opens up a variety of automation and integration possibilities within your Databricks environment.