---
description: A plugin that provides the employe's unique ID when prompted.
fidelity: GUIDE
name: Check Employee ID
difficulty_level: BEGINNER
time_in_minutes: 20
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+my+employee+ID%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETell+Me+Employee+ID%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Employee+ID%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Your+employee+ID+is+%3Cb%3E12345%3C%2Fb%3E.+Is+there+anything+else+you+need+help+with%3F%22%7D%5D%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
- HR - Onboarding
systems:
- servicenow
video: https://www.loom.com/share/798cecea1d4f400dbbbef9a484df9d7d?sid=22ec6eaa-80f0-4946-8783-a23a002ca824

---
## **Introduction :**

**The Check Employee ID plugin** integrates ServiceNow with the Moveworks AI Assistant. It allows users to quickly retrieve their employee ID without navigating ServiceNow manually. The AI assistant provides the employee ID directly within the user's messaging platform.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+my+employee+ID%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETell+Me+Employee+ID%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Employee+ID%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Your+employee+ID+is+%3Cb%3E12345%3C%2Fb%3E.+Is+there+anything+else+you+need+help+with%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) [**Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following minimum permissions:

- **Read** access to the **User (sys_user)** table
- **Read** access to the **Employee Number (employee_number)** field

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get Employee ID by User email**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_user?sysparm_query=email%3D<USER_EMAIL>&sysparm_fields=name%2Cemail%2Cemployee_number' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' 
```

**Query Parameters:**

- `USER_EMAIL` (string) – Email address is used to retrieve the employee number.