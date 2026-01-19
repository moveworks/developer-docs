---
availability: INSTALLABLE
description: A plugin that allows an employee to get a snapshot of their outstanding
  tasks on Workday.
installation_asset_uuid: e3f86550-b5bc-4a04-a145-075c8fe5c86f
name: View Assigned Tasks
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+tasks+do+I+have+to+complete+on+Workday%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETasks+To+Complete+On+Workday%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Assigned+Workday+Tasks%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+the+following+open+tasks+to+complete+on+Workday%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EOpen+Workday+Tasks%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+Acknowledge+Employee+Handbook%3C%2Fb%3E+-+This+task+requires+you+to+read+and+acknowledge+the+latest+version+of+the+employee+handbook.+%3Cbr%3E%3Cb%3E2.+Annual+Benefits+Enrollment%3C%2Fb%3E+-+It%E2%80%99s+time+to+review+and+update+your+benefits+enrollment+for+the+upcoming+year.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Go+to+Workday%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Learning & Development
- HR - Onboarding
- HR - Other
systems:
- workday
---

## **Introduction**

The **“View Assigned Tasks”** plugin allows employees to instantly view a snapshot of their outstanding tasks in Workday—right from the Moveworks AI Assistant. This eliminates the need to log in to Workday manually, offering quick, secure, and self-serve access to pending actions and task details anytime.

This guide will walk you through installing and configuring the plugin in **Agent Studio**, enabling your workforce to stay on top of their Workday tasks with ease. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- **Workday connector with OAuth 2.0 Authorization Code authentication** - This plugin requires user-level authentication to retrieve tasks for individual employees. The standard OAuth 2.0 Client Credentials authentication only returns tasks for the integration service account. Configure your Workday connector using the [OAuth 2.0 with Authorization Code (User Consent Auth) Setup](https://marketplace.moveworks.com/connectors/workday#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup) method.

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+tasks+do+I+have+to+complete+on+Workday%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETasks+To+Complete+On+Workday%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Assigned+Workday+Tasks%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22You+have+the+following+open+tasks+to+complete+on+Workday%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EOpen+Workday+Tasks%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+Acknowledge+Employee+Handbook%3C%2Fb%3E+-+This+task+requires+you+to+read+and+acknowledge+the+latest+version+of+the+employee+handbook.+%3Cbr%3E%3Cb%3E2.+Annual+Benefits+Enrollment%3C%2Fb%3E+-+It%E2%80%99s+time+to+review+and+update+your+benefits+enrollment+for+the+upcoming+year.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Go+to+Workday%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

**Important:** This plugin requires the **OAuth 2.0 Authorization Code (User Consent Auth)** connector configuration. The Workday API endpoint `/workers/{id}/inboxTasks` used by this plugin returns tasks **for the authenticated user only**. If you configure the connector using OAuth 2.0 Client Credentials (standard integration service account), the endpoint will only return tasks for that service account, not for individual employees. See the [OAuth 2.0 with Authorization Code (User Consent Auth) Setup](https://marketplace.moveworks.com/connectors/workday#OAuth-2.0-with-Authorization-Code-(User-Consent-Auth)-Setup) section of the Workday connector guide for proper configuration.

Note: For the View Assigned Tasks functionality to work correctly, ensure your Workday integration system user has the necessary domain permissions.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- Worker Data
- Worker Inbox Task

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Get Worker Details by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Parameters:**

- `email`(string) -The primary home email address of the worker used to look up their Workday ID.

### **API #2: Get Assigned Task of the Employee**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers/{{worker_id}}/inboxTasks' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Parameters:**

- `worker_id`(string) - The specific employee's Workday ID.