---
availability: INSTALLABLE
description: A plugin that allows an employee to update their address in Workday.
installation_asset_uuid: 9d622744-cddf-466a-95e5-188ca925f465
name: Update Employee Address
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+moved+to+a+new+house+and+need+to+update+my+home+address+in+Workday.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+you+update+your+home+address+in+Workday.+Could+you+provide+me+with+your+new+address%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+it%27s+123+Elm+St%2C+Springfield%2C+IL%2C+62704.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EIs+this+a+permanent+move%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Yes%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it.+Let%27s+confirm+the+details%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+new+address%3A%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ENew+Address%3A%3C%2Fb%3E+123+Elm+St%2C+Springfield%2C+IL%2C+62704%3Cbr%3E%3Cb%3EPermanent+Move%3A%3C%2Fb%3E+Yes%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Update+Address+in+Workday%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- workday
---

# Workday

## Introduction

The “**Update Employee Address”** plugin enables employees to update their home contact address via the **Moveworks AI Assistant**, eliminating the need to navigate Workday manually. This helps maintain accurate and current personal contact details with minimal user effort.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## Prerequisites

- Access to **Agent Studio**

## What Are We Building?

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+moved+to+a+new+house+and+need+to+update+my+home+address+in+Workday.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+you+update+your+home+address+in+Workday.+Could+you+provide+me+with+your+new+address%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+it%27s+123+Elm+St%2C+Springfield%2C+IL%2C+62704.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EIs+this+a+permanent+move%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Yes%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it.+Let%27s+confirm+the+details%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+new+address%3A%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3ENew+Address%3A%3C%2Fb%3E+123+Elm+St%2C+Springfield%2C+IL%2C+62704%3Cbr%3E%3Cb%3EPermanent+Move%3A%3C%2Fb%3E+Yes%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Update+Address+in+Workday%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build

## Installation Steps

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) guide to set up the connector.

### Required Permission:

- **Modify**, **Get**, **Put** access to `Person Data: Home Contact Information`
- **Get**, **Put** access to `Person Data: Home Address`

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## Appendix

### API #1: Get Worker Details by Email

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Query Parameters:**

- `email` (string) – The primary home email address of the worker used to look up their Workday ID

### API #2: Initialize Home Contact Change Event

```bash
curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/staffing/v4/<TENANT>/workers/{WORKER_ID}/homeContactInformationChanges' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{}'
```

**Path Parameters:**

- `WORKER_ID` *(string)* – ID of the worker whose contact is being updated

### API #3: Get Worker Subresource ID

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{{CHANGE_ID}}/addresses' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Path Parameters:**

- `CHANGE_ID` *(string)* – The ID of the initiated change event

### API #4: Update Home Address Information

```bash
curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/addresses/{SUBRESOURCE_ID}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
            "Address_ID": "{{Address_ID}}",
            "postalCode": "{{postalcode}}",
            "addressLine1": "{{addressline}}",
            "usage": {
                "primary": true,
                "usageType": {
                    "id": "{{usageType_id}}"
                }
            },
            "country": {
                "id": "{{country_id}}"
            },
            "city": "{{city}}",
            "countryRegion": {
                "id": "{{countryRegion_id}}"
            }
        }'
```

**Path Parameters:**

- `CHANGE_ID` *(string)* – ID of the home contact change event
- `SUBRESOURCE_ID` *(string)* – ID of the Address subresource
- `postalCode`(string)- New Postal Code of the Employee
- `addressline`(string)- New Address line of the Employee

### API #5: Submit Home Contact Change

```bash
curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/person/v4/<TENANT>/homeContactInformationChanges/{CHANGE_ID}/submit' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{}'
```

**Path Parameters:**

- `CHANGE_ID` *(string)* – ID of the home contact change event