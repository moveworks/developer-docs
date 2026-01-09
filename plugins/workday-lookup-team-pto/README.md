---
availability: INSTALLABLE
description: A plugin that allows a manager to view PTO balance for associated team
  members.
installation_asset_uuid: a5aa48a5-02df-4828-9439-cb7569f58ad2
name: Look up Direct Reports PTO Balance
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
---

## **Introduction**

The **“Look Up Direct Reports PTO Balance”** plugin allows managers to quickly view Paid Time Off balances of their team members directly through the Moveworks AI Assistant, powered by Workday. This gives managers instant visibility into team availability without navigating through Workday reports.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+share+my+team%27s+PTO+balance%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+PTO+Balance%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+PTO+Balance%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here%27s+your+team%27s+PTO+balance%3A%3Cbr%3E%3Cb%3EAlice+Smith%3A%3C%2Fb%3E+10+days%3Cbr%3E%3Cb%3EBob+Johnson%3A%3C%2Fb%3E+8+days%3Cbr%3E%3Cb%3ECathy+Lee%3A%3C%2Fb%3E+5+days%3Cbr%3EWould+you+like+to+request+PTO+on+behalf+of+your+team%2C+or+perform+another+action%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Select+an+action%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPTO+Actions%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Request+PTO%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22View+PTO+Policy%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No+action+needed%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, before installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

Note: To enable the Look Up Direct Reports PTO Balance functionality, ensure your Workday integration system user has the appropriate domain permissions.

Specifically, the following domain permissions must be granted with both **View** and **Get** access:

- **Absence Management** – to access time off and PTO data
- **Worker Data: Time Off** – to view PTO balances for direct reports

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

**Query Parameter:**

- `email`(string) -The primary home email address of the worker used to look up their Workday ID.

### **API #2: Retrieve Direct Reports by Worker ID**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/v1/<TENANT>/workers/<WORKER_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Path Parameter:**

- `WORKER_ID`(string) – Filter direct reports for a specific worker ID.

### **API #3: Retrieve PTO Balance by Worker ID**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/absenceManagement/v1/<TENANT>/balances?worker=<WORKER_ID>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Path Parameter:**

- `WORKER_ID`(string) – Filter PTO Balance for a specific worker ID.