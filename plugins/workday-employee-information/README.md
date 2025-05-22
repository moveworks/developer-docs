---
description: A plugin that lookups employee workday information.
fidelity: GUIDE
name: Look up Personal Employee Information
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9079%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+you+provide+me+with+my+employee+information+from+Workday%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EProvide+Employee+Information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Employee+Information%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EHere%27s+your+employee+information%3A%3Cbr%3E%3Cb%3EName%3A%3C%2Fb%3E+Gwen%3Cbr%3E%3Cb%3EPosition%3A%3C%2Fb%3E+Software+Engineer%3Cbr%3E%3Cb%3EDepartment%3A%3C%2Fb%3E+Product+Development%3Cbr%3E%3Cb%3EHire+Date%3A%3C%2Fb%3E+2018-07-02%3Cbr%3EIs+there+any+other+Workday+information+you+need%3F%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
- HR - Onboarding
systems:
- workday

---
## Introduction

The **“Look up Personal Employee Information”** plugin allows employees to access their personal information directly from **Workday**, all through the Moveworks AI Assistant. This provides users with quick and easy visibility into their own data without needing to navigate Workday manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+provide+me+with+my+employee+information+from+Workday%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EProvide+Employee+Information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Employee+Information%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere%27s+your+employee+information%3A%3Cbr%3E%3Cb%3EName%3A%3C%2Fb%3E+Gwen%3Cbr%3E%3Cb%3EPosition%3A%3C%2Fb%3E+Software+Engineer%3Cbr%3E%3Cb%3EDepartment%3A%3C%2Fb%3E+Product+Development%3Cbr%3E%3Cb%3EHire+Date%3A%3C%2Fb%3E+2018-07-02%3Cbr%3EIs+there+any+other+Workday+information+you+need%3F%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, refer to our plugin installation documentation to install the **Lookup Personal Work Information** plugin in minutes.

For **Lookup Personal Work Information**, you will also need to ensure the following permissions are in place:

**Required Scopes:**

- `User Profile Access`
- `Employee Data Access`

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

## **Appendix**

### **API #1: Get Worker Details by Name**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers?search=<WORKER_NAME>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `search` (string) – Search for workers by name

### **API #2: Get Worker History By ID**

```bash
curl --location --request GET 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers/{{worker_id}}/history' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{}'
```

**Query Parameters:**

- `WORKER_ID` (string) – retrieve the employment history for a specific worker