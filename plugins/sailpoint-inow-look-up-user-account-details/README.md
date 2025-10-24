---
availability: INSTALLABLE
description: A plugin that allows IT/Security admins to instantly retrieve detailed
  user identity information from SailPoint iNow through the Moveworks AI Assistant,
  including roles, entitlements, lifecycle stage (status) and source systems.
difficulty_level: INTERMEDIATE
domain:
- IT
- Access Management
fidelity: TEMPLATE
installation_asset_uuid: aa0c6a7f-11ad-4417-b0ec-c67d1e666d23
name: Look Up User Account Details
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+account+details+for+a+user%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+specify+a+name+or+an+email%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESailpoint+iNow%3C%2Fb%3E+for+users+matching+%5C%22John%5C%22...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+users+matching+%27John%27.+Which+one+are+you+looking+for%3F%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E1.+John+Doe%3C%2Fstrong%3E+%28john.doe%40example.com%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E2.+John+Smith%3C%2Fstrong%3E+%28john.smith%40example.com%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E3.+John+Johnson%3C%2Fstrong%3E+%28john.johnson%40example.com%29%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%2C%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Smith%22%7D%2C%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Johnson%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+detailed+account+information+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJohn+Doe%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESailpoint+iNow%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERoles%3A%3C%2Fstrong%3E+Employee%2C+Software+Engineer%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEntitlements%3A%3C%2Fstrong%3E+Jira+Write+Access%2C+Confluence+Write+Access%2C+Salesforce+Read-Only+Access%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ELifecycle+State%3A%3C%2Fstrong%3E+Active%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESource+Systems%3A%3C%2Fstrong%3E+Active+Directory%2C+Workday%2C+Jira%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Access Management
- IT
systems:
- sailpoint-inow
time_in_minutes: 15
---

## Introduction

The **“Look Up User Account Details”** plugin enables to instantly retrieve comprehensive user identity information from SailPoint iNow. By accessing real-time data such as roles, entitlements, lifecycle state, and source systems, the plugin allows the Assistant to respond to identity-related queries, support access management actions, and ensure compliance with organizational policies.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+view+account+details+for+a+user%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+specify+a+name+or+an+email%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESailpoint+iNow%3C%2Fb%3E+for+users+matching+%5C%22John%5C%22...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+a+few+users+matching+%27John%27.+Which+one+are+you+looking+for%3F%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E1.+John+Doe%3C%2Fstrong%3E+%28john.doe%40example.com%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E2.+John+Smith%3C%2Fstrong%3E+%28john.smith%40example.com%29%3C%2Fp%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cstrong%3E3.+John+Johnson%3C%2Fstrong%3E+%28john.johnson%40example.com%29%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%2C%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Smith%22%7D%2C%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Johnson%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Retrieving+detailed+account+information+for+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EJohn+Doe%3C%2Fb%3E+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESailpoint+iNow%3C%2Fb%3E...%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+details+for+%3Cstrong%3EJohn+Doe%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cp%3E%3Cstrong%3ERoles%3A%3C%2Fstrong%3E+Employee%2C+Software+Engineer%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3EEntitlements%3A%3C%2Fstrong%3E+Jira+Write+Access%2C+Confluence+Write+Access%2C+Salesforce+Read-Only+Access%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ELifecycle+State%3A%3C%2Fstrong%3E+Active%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3E%3Cstrong%3ESource+Systems%3A%3C%2Fstrong%3E+Active+Directory%2C+Workday%2C+Jira%3C%2Fp%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22sailpoint-inow%22%2C%22citationTitle%22%3A%22John+Doe%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**SailPoint iNow Connector Guide**](https://marketplace.moveworks.com/connectors/sailpoint-inow#how-to-implement) for detailed instructions. Once completed, refer to our plugin installation documentation to install the **Look Up User Account Details** plugin in minutes.

As an admin, ensure that the following scopes are enabled for your user to successfully install and use this plugin.

**Required Scopes:**

- `idn:identity:read`
- `idn:identity-account:read`
- `idn:accounts:read`
- `sp:search:read`
- `idn:access-profile:read`
- `idn:role-checked:read`
- `idn:entitlement:read`

**Note:** These scopes allow the plugin to read user activity and application details, so ensure the connector has only these scopes to minimize security risks.

**Your Instance Configuration:**

All Sailpoint iNow API endpoints in this plugin use `'YOUR_INSTANCE'` as a placeholder. After installation, replace `'YOUR_INSTANCE'` in the action definitions with your actual Sailpoint iNow instance name.

To find your instance name:

- Log in to your Sailpoint iNow account.
- Check the URL in your browser — the instance name appears before `.identitynow.com`

e.g.: `https://your_instance.identitynow.com/...`

Make sure to update this across all actions that reference the Sailpoint iNow API.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Retrieve Users by Display Name or Email:**

```bash
curl --location 'https://<YOUR_INSTANCE>/v3/search' \
--header 'Authorization: Bearer <YOUR_ACCESS_TOKEN>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "indices": ["identities"],
  "query": {
    "query": "{{filter_query}}"
  },
  "queryResultFilter": {
    "includes": ["field1","field2"...]
  }
}'
```

**Query Parameters:**

- **`filter_query` : (string)** – Used to dynamically filter **user identities** in SailPoint iNow by specific property values.
    - You can filter by **user email or displayname**.
    - Example filters:
        - `email:"john.doe@sailpointdemo.com"` → Returns the user with that specific email address.
        - `John` → This returns the list of all users with name containing John.
- `queryResultFilter` **: (object)** – Used to select specific fields to be returned in the API response.
- **`"indices": ["identities"]`** : Used to specify that the search should be performed within the **Identities** index in SailPoint, which stores all user identity records. This allows the query to retrieve information such as user attributes, roles, and account details from the identity data set.