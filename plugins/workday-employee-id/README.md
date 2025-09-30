---
availability: INSTALLABLE
description: A plugin that provides the employe's unique ID when prompted.
difficulty_level: BEGINNER
domain:
- HR - Other
- HR - Employee Records
- HR - Onboarding
fidelity: TEMPLATE
installation_asset_uuid: f4f5280a-ef0e-41ae-abb8-1d09b2f10a8d
name: Check Employee ID
num_implementations: 2
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+my+employee+ID%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETell+Me+Employee+ID%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Employee+ID%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Your+employee+ID+is+%3Cb%3E12345%3C%2Fb%3E.+Is+there+anything+else+you+need+help+with%3F%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- workday
time_in_minutes: 20
---

## **Introduction**

The **“Check Employee ID”** plugin allows employees to instantly access their unique employee ID directly through the Moveworks AI Assistant, powered by Workday. This streamlines access to essential personal information, reduces dependency on HR teams, and improves the overall employee self-service experience.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+my+employee+ID%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETell+Me+Employee+ID%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Employee+ID%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Certainly%21+Your+employee+ID+is+%3Cb%3E12345%3C%2Fb%3E.+Is+there+anything+else+you+need+help+with%3F%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, before installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

**Note**: To enable the Check Employee ID functionality, ensure your Workday integration system user has the necessary domain permissions.

Specifically, the following domain permissions must be granted with both **View** and **Get** access:

- **Worker Data: Self-Service** – to retrieve personal information accessible to the employee
- **Worker** – to fetch the unique employee ID and related worker metadata

**Tenant Configuration:**

All Workday API endpoints in this plugin use  **TENANT** as a placeholder. After installation, replace  **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Get Employee ID by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Query Parameter:**

- `email`(string) -Email address of the worker used to look up their Employee ID
