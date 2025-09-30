---
availability: INSTALLABLE
description: A plugin that allows a manager to get a list of their team members who
  are on PTO on a given date.
difficulty_level: INTERMEDIATE
domain:
- HR - Other
- HR - Time & Absence
fidelity: TEMPLATE
installation_asset_uuid: 5379f24f-9b6e-4127-8b2a-cb78f9ba7221
name: Look up Direct Reports on PTO on a specific date
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+which+of+our+team+members+are+on+PTO+today%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+Members+PTO+Today%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+On+PTO%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Today%2C+the+following+team+members+are+on+PTO%3A+%3Cbr%3E1.+Emily+Clark+%3Cbr%3E2.+Jordan+Smith+%3Cbr%3E3.+Alex+Lee%3Cbr%3ELet+me+know+if+there%27s+anything+else+I+can+help+with%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- workday
time_in_minutes: 20
video: https://www.loom.com/share/7e4828966a0b43248be4505b04943440?sid=68a78b24-1676-4775-8074-606be520de5a
---

## **Introduction**

The **“Look Up Direct Reports on PTO on a Specific Date”** plugin allows managers to instantly see which of their team members are on Paid Time Off (PTO) for a specific date directly through the Moveworks AI Assistant, powered by Workday. This helps managers plan and make informed staffing decisions without manually checking calendars or reports in Workday.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+which+of+our+team+members+are+on+PTO+today%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETeam+Members+PTO+Today%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Team+On+PTO%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Today%2C+the+following+team+members+are+on+PTO%3A+%3Cbr%3E1.+Emily+Clark+%3Cbr%3E2.+Jordan+Smith+%3Cbr%3E3.+Alex+Lee%3Cbr%3ELet+me+know+if+there%27s+anything+else+I+can+help+with%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Workday%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, before installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

Note: To enable the Look Up Direct Reports on PTO on a Specific Date functionality, ensure your Workday integration system user has the necessary domain permissions.

Specifically, the following domain permissions must be granted with both **View** and **Get** access:

- **Absence Management** – to access time off and leave data
- **Worker Time Off** – to retrieve PTO records for employees on a given date

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

- `email`(string) -The primary home email address of the worker used to look up their Workday ID

### **API #2: Retrieve Direct Reports by Worker ID**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/v1/<TENANT>/workers/<WORKER_ID>/directReports' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Path Parameter:**

- `WORKER_ID`(string) – Filter direct reports for a specific worker ID

### **API #3: Retrieve PTO Details for Direct Reports**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/v1/<TENANT>/workers/<WORKER_ID>/timeOffDetails?fromDate=<FROM_DATE>&toDate=<TO_DATE>' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Path Parameters:**

- `WORKER_ID`(string) – Filter PTO Balance for a specific worker ID
- `FROM_DATE`**,** `TO_DATE` (string) – The start and end date of the range for which PTO details are to be retrieved.