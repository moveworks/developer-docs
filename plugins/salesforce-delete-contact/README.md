---
availability: INSTALLABLE
description: A plugin that allows you to easily remove outdated or incorrect contacts
  from Salesforce accounts to keep your CRM clean and up-to-date.
installation_asset_uuid: 421f9eae-c548-4683-bdb9-774628c9c696
name: Delete a Contact
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Delete+John+Doe+from+Acme+account.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+you+delete+a+contact+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.+First%2C+I+need+to+find+contacts+associated+with+%27Acme+account%27.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+contacts+in+%27Acme+account%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+the+following+contacts+in+%3Cstrong%3EAcme+account%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EJohn+Doe+%28john.doe%40acme.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EJane+Smith+%28jane.smith%40acme.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EJohn+Doe+%28john.doe.marketing%40acme.com%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp%3EPlease+choose+the+contact+you%27d+like+to+delete.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E3%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22You+have+selected+to+delete+%27John+Doe+%28john.doe.marketing%40acme.com%29%27.+Is+this+correct%3F+Please+confirm+to+proceed+with+the+deletion.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Deleting+contact+%27John+Doe+%28john.doe.marketing%40acme.com%29%27+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Contact+%27John+Doe+%28john.doe.marketing%40acme.com%29%27+has+been+successfully+deleted+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.%22%7D%5D%7D%5D%7D
solution_tags:
- Productivity
- Sales
systems:
- salesforce
---

## Introduction

The “Delete a Contact” plugin allows users to easily remove outdated or incorrect contacts from Salesforce accounts directly through the Moveworks AI Assistant. By eliminating the need to manually locate and delete records within Salesforce, this plugin helps maintain a clean and accurate CRM—ensuring teams work with reliable data, reduce clutter, and improve overall customer relationship management efficiency.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Delete+John+Doe+from+Acme+account.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+help+you+delete+a+contact+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.+First%2C+I+need+to+find+contacts+associated+with+%27Acme+account%27.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searching+for+contacts+in+%27Acme+account%27+in+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+the+following+contacts+in+%3Cstrong%3EAcme+account%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Col%3E%3Cli%3E%3Cp%3EJohn+Doe+%28john.doe%40acme.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EJane+Smith+%28jane.smith%40acme.com%29%3C%2Fp%3E%3C%2Fli%3E%3Cli%3E%3Cp%3EJohn+Doe+%28john.doe.marketing%40acme.com%29%3C%2Fp%3E%3C%2Fli%3E%3C%2Fol%3E%3Cp%3EPlease+choose+the+contact+you%27d+like+to+delete.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E3%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22You+have+selected+to+delete+%27John+Doe+%28john.doe.marketing%40acme.com%29%27.+Is+this+correct%3F+Please+confirm+to+proceed+with+the+deletion.%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Confirm.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Deleting+contact+%27John+Doe+%28john.doe.marketing%40acme.com%29%27+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.%22%7D%5D%7D%2C%7B%22richText%22%3A%22Contact+%27John+Doe+%28john.doe.marketing%40acme.com%29%27+has+been+successfully+deleted+from+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3ESalesforce%3C%2Fb%3E.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce?hist=home%2Cplgn.salesforce-create-campaign-inside-account%2Cbrws#how-to-implement) guide to set up the connector.

Ensure the following permissions are granted:

- **`Delete` access** on the **Contact** object – required to remove contacts from Salesforce.
- **`Read` access** on the **Account** object – ensures associated account information can be verified before deleting a contact.
- **`API Enabled` permission** – required to execute REST API calls for deleting contact records.

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

## **Appendix:-**

### **API #1 : Get Contact by Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CTitle%2CAccount.Name%2CPhone%2CEmail%2CCreatedDate%2CLastActivityDate+FROM+Contact+WHERE+Name+LIKE+%27%25{{name}}%25%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- **`name`** (string) – A partial or full name of the contact to search for.
- **`LIMIT`** (integer) – The maximum number of records to return in the query results.

### **API #2 : Get Contacts Assigned To User**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CTitle%2CAccount.Name%2CEmail%2CPhone%2CCreatedDate%2CLastActivityDate+FROM+Contact+WHERE+Owner.Email%3D%27{{email}}%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- **`email`** (string) – The Salesforce user’s email address that owns the contact records.
- **`LIMIT`** (integer) – The maximum number of records to return in the query results.

### **API #3 : Get Contact By Account Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/services/data/v56.0/query/?q=SELECT+Id%2CName%2CAccount.Name%2CTitle%2CEmail%2CCreatedDate%2CLastActivityDate+FROM+Contact+WHERE+Account.Name+LIKE+%27%25{{account_name}}%25%27+ORDER+BY+LastModifiedDate+DESC+LIMIT+100' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- **`account_name`** (string) – A partial or full account name used to search for associated contacts.
- **`LIMIT`** (integer) – The maximum number of records to return in the query results.

### **API #4 : Delete Contact Inside Account**

```bash
curl --location --request DELETE 'https://<YOUR_INSTANCE>/services/data/v56.0/sobjects/Contact/{{contact_id}}' \
--header 'Authorization: Bearer {{access_token}}' \
--header 'Content-Type: application/json'
```

**Path Parameters:**

- **`contact_id`** (string) – The Salesforce Contact record ID to be deleted.