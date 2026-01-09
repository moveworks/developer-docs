---
availability: INSTALLABLE
description: A plugin that lookups Change Request information.
installation_asset_uuid: 78ac87da-6c70-46d7-8b4d-6dcdc64939f4
name: Look Up Change Request
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+lookup+the+current+status+of+my+change+request+for+IT%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EChange+Request%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Change+Request%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Your+change+request+%3Cb%3ECR12345%3C%2Fb%3E+is+currently+%3Cb%3EIn+Review%3C%2Fb%3E.+It+is+being+closely+looked+into+by+our+IT+team.+You+should+receive+an+update+soon.+Is+there+anything+else+I+can+help+you+with+regarding+this+request%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22No%2C+that%27s+all+for+now.+Thank+you%21%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## **Introduction:**

The **Look Up Change Request** plugin  enables users to instantly retrieve details of their change requests in ServiceNow directly through the Moveworks AI Assistant.It provides real-time updates on change requests without manual effort. Users receive status details directly in their messaging platform.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+lookup+the+current+status+of+my+change+request+for+IT%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EChange+Request%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Change+Request%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Your+change+request+%3Cb%3ECR12345%3C%2Fb%3E+is+currently+%3Cb%3EIn+Review%3C%2Fb%3E.+It+is+being+closely+looked+into+by+our+IT+team.+You+should+receive+an+update+soon.+Is+there+anything+else+I+can+help+you+with+regarding+this+request%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22No%2C+that%27s+all+for+now.+Thank+you%21%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) [**Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following permissions:

- **Read** access to the Change Request table
- **Read** access to the User table

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get Change request Details by User email**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/change_request?sysparm_query=requested_by.email%3D<USER_EMAIL>&sysparm_fields=number%2Cstate&sysparm_display_value=true' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `USER_EMAIL` (string) – Email address used to filter change requests

