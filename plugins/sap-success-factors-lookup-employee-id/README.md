---
description: A plugin that provides an employe's unique ID when prompted.
fidelity: GUIDE
name: Lookup Employee ID
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+help+me+find+my+Employee+ID%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi+%5BUser+Name%5D%21+I%27d+be+happy+to+help+you+with+that.+Let+me+retrieve+your+Employee+ID.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+your+Employee+ID...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+is+your+Employee+ID%3A+%3Cb%3E12345%3C%2Fb%3E.%22%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
systems:
- sap-success-factors

---
## Introduction

The **“Lookup Employee ID”** plugin allows users to quickly retrieve an employee’s unique ID from SAP SuccessFactors through the Moveworks AI Assistant. This ensures that users can easily reference the correct employee record for various HR processes and tasks.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- [SAP SuccessFactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP SuccessFactors Authentication guide to create your connector).

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+help+me+find+my+Employee+ID%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hi+%5BUser+Name%5D%21+I%27d+be+happy+to+help+you+with+that.+Let+me+retrieve+your+Employee+ID.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+your+Employee+ID...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+is+your+Employee+ID%3A+%3Cb%3E12345%3C%2Fb%3E.%22%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **SAP SuccessFactors Connector Guide** for instructions. Once completed, refer to our plugin installation documentation to install the **Lookup Employee ID** plugin in minutes.

For **Lookup Employee ID**, you will also need to add the following permissions:

**Required Scopes:**

- `Admin privileges`

After configuring the connector, refer to our plugin installation documentation for more details on completing the setup.

## **Appendix**

### **API #1: RETRIEVE_EMPLOYEE_ID_BY_EMAIL**

```bash
curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=empId' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

**Query Parameters:**

- `$filter` (string) – Filters users based on the email address. Example: `email eq '{{email}}'`
- `$select` (string) – Specifies which properties to return. Example: `empId`