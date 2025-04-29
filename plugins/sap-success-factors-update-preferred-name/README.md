---
description: A plugin that allows for the user to submit a request to change their
  preferred name so others know what to refer to them as.
fidelity: GUIDE
name: Update Preferred Name
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7708%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22CHRISTINE%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+set+up+my+preferred+name+in+SuccessFactors.%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESure%2C+I+can+help+you+with+setting+up+your+preferred+name+in+SuccessFactors.+What+is+your+preferred+name%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EIt%27s+Christie.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EOkay%2C+you+want+to+set+your+preferred+name+to+%3Cb%3EChristie%3C%2Fb%3E.%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EPlease+confirm+your+preferred+name%3Cbr%3E%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3EPreferred+Name%3A+%3C%2Fb%3EChristie%3Cbr%3E%3C%2Fp%3E%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Update+in+SuccessFactors%22%7D%2C%7B%22text%22%3A%22Edit+Preferred+Name%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
- HR - Onboarding
systems:
- sap-success-factors

---
## Introduction

The **“Update Preferred Name”** plugin enables users to seamlessly update an employee’s preferred name in SAP SuccessFactors using the Moveworks AI Assistant. This ensures that employee identity preferences are respected and updated quickly across HR systems, supporting inclusive workplace practices and improving personalization.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- [SAP SuccessFactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP SuccessFactors Authentication guide to create your connector).

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+set+up+my+preferred+name+in+SuccessFactors.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+I+can+help+you+with+setting+up+your+preferred+name+in+SuccessFactors.+What+is+your+preferred+name%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EIt%27s+Christie.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+you+want+to+set+your+preferred+name+to+%3Cb%3EChristie%3C%2Fb%3E.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+preferred+name%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EPreferred+Name%3A+%3C%2Fb%3EChristie%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Update+in+SuccessFactors%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Preferred+Name%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our **SAP SuccessFactors Connector Guide** for detailed instructions. Once completed, refer to our plugin installation documentation to install the **Update Preferred Name** plugin in minutes.

For **Update Preferred Name**, you will also need to ensure the following permissions are in place:

**Required Scopes:**

- `User profile update privileges`
- `Admin privileges`

After configuring the connector, refer to our plugin installation documentation for more details on completing the setup.

## **Appendix**

### **API #1: FETCH_EMPLOYEE_DETAILS_BY_EMAIL**

```bash
curl --request GET \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User?$filter=email%20eq%20%27{{email}}%27&$select=userId,firstName,lastName,displayName,nickname,email,location,department,status,gender,timeZone,employeeClass,hireDate,impactOfLoss,riskOfLoss,jobCode,businessPhone,salary,compensationSalaryRateType,empId' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN'
```

**Query Parameters:**

- `$filter` (string) – Filters users based on the email address.
- `$select` (string) – Specifies which properties to return.

### API #2: UPDATE_EMPLOYEE_PREFERRED_NAME

```bash
curl --request PUT \
  --url 'https://<API_SERVER_DOMAIN>/odata/v2/User(userId='{{userId}}')' \
  --header 'Accept: application/json' \
  --header 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  --data '{
    "userId": "{{userId}}",
    "firstName": "{{firstName}}",
    "lastName": "{{lastName}}",
    "displayName": "{{displayName}}",
    "nickname": "{{nickname}}",
    "email": "{{email}}",
    "location": "{{location}}",
    "status": "{{status}}"
  }'
```

- **Path Parameter:**
    - `userId` (string) – The unique identifier of the user to be updated.
- **Request Body Fields:**
    - `userId`, `firstName`, `lastName`, `displayName`, `nickname`, `email`, `location`, `status`