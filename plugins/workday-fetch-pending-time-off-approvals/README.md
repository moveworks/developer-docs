---
availability: INSTALLABLE
description: A plugin that allows managers to quickly view and manage pending time
  off approvals, ensuring efficient decision-making and maintaining workforce availability
  within the organization.
installation_asset_uuid: 3aab1625-2942-4a8c-967d-80016b30ef8e
name: Fetch Pending Time Off Approvals
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+pending+time+off+requests%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+pending+time+off+requests+from+your+direct+reports%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+1%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Alex+Johnson%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Vacation%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+10+-+May+14%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Family+trip%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+2%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Emily+White%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Sick+Leave%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+15%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Flu%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EWhich+time+off+requests+would+you+like+to+approve+or+reject%3F+Please+list+the+employee+names+separated+by+commas.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Approvals
- HR - Other
- HR - Time & Absence
systems:
- workday
---

## **Introduction**

The **“Fetch Pending Time Off Approvals”** plugin enables managers to view and take action on employee time off requests directly through the Moveworks AI Assistant, powered by Workday. This ensures that managers can take timely action to maintain compliance and team readiness without manually digging through reports in Workday.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+pending+time+off+requests%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+pending+time+off+requests+from+your+direct+reports%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+1%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Alex+Johnson%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Vacation%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+10+-+May+14%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Family+trip%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+2%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Emily+White%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Sick+Leave%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+15%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Flu%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EWhich+time+off+requests+would+you+like+to+approve+or+reject%3F+Please+list+the+employee+names+separated+by+commas.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

Note: For the Fetch Pending Time Off Approvals functionality, make sure your Workday integration system user has the necessary domain permissions.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- **Absence Management** — to access absence-related data.
- **Time Off Requests** — to view and retrieve time off or leave requests.

**Tenant Configuration:**
 
All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.
 
To find your tenant name:
 
- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
   
 
Make sure to update this across all actions that reference the Workday API.

Once the connector is configured, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

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

### **API #2: Get Direct Reports of the Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers/{{WORKER_ID}}/directReports' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

```

**Parameters:**

- **`WORKER_ID`**(string) – Filter direct reports for a specific worker ID.

### **API #3: Retrieve Pending Time Off Approvals for a Specific Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/absenceManagement/v2/<TENANT>/workers/{{WORKER_ID}}/leavesOfAbsence?status={{STATUS_ID}}' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

```

**Parameters:**

- **`WORKER_ID`**(string) – Filter Time Off Approvals for a specific worker ID.
- **`STATUS_ID`**(string) – Filter this completion status ID (e.g: In Progress).