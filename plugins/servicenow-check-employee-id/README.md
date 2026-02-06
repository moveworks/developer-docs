---
availability: INSTALLABLE
description: A plugin that provides the employe's unique ID when prompted.
installation_asset_uuid: 838476f0-de96-4a46-b816-68d8aee65657
name: Check Employee ID
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+my+employee+ID%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETell+Me+Employee+ID%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Employee+ID%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Your+employee+ID+is+%3Cb%3E12345%3C%2Fb%3E.+Is+there+anything+else+you+need+help+with%3F%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- servicenow
---

## **Introduction :**

**The Check Employee ID** plugin enables users to quickly retrieve their unique employee identification number directly within ServiceNow. This eliminates the need to manually search through employee records, making it more convenient for users to access their ID, verify their identity, and streamline HR or IT processes.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+my+employee+ID%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETell+Me+Employee+ID%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Employee+ID%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Your+employee+ID+is+%3Cb%3E12345%3C%2Fb%3E.+Is+there+anything+else+you+need+help+with%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) [**Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following required permissions:

- **Read** access to the **User (sys_user)** table
- **Read** access to the **Employee Number (employee_number)** field

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!.

## **Appendix**

### **API #1: Get Employee ID by User email**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_user?sysparm_query=email%3D<USER_EMAIL>&sysparm_fields=name%2Cemail%2Cemployee_number' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' 
```

**Query Parameters:**

- `USER_EMAIL` (string) – Email address is used to retrieve the employee number.