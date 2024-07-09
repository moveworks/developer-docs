---
design_pattern_id: 28
name: Workday PTO Lookups
description: Lookup your PTO balances from Workday within your bot
systems: [salesforce]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+how+much+balance+do+I+have%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ELookup+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Time+Off+Type+and+Quantity%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EYou+currently+have+the+following+time+off+balances%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3A+196+Hours%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3A+12+Days%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3A+0+Hours%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EThanks+for+the+information%21%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 15
difficulty_level: Beginner
---

### Presenting the easiest way for your employees to check their Time Off balances 🏝️

Navigating the nuances of PTO balances from Workday can be a task riddled with inefficiency and inconvenience. To streamline this process, the Moveworks Bot, integrated with Workday, provides a seamless way for employees to check their PTO balances effortlessly.

This guide aims to facilitate Workday Administrators and HR Systems Engineers in setting up a straightforward method for employees to inquire about their PTO balances directly through the Moveworks Bot, leveraging the capabilities of Workday's comprehensive APIs.

Let's dive in!

### **System Overview**

**Depends on**: `Workday connector` [(link)](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)

**Assumptions**:

1. You have synchronized your employees’ work email from your IDAM like `Okta` or `Microsoft Entra` to Moveworks using Moveworks Setup ([link](https://help.moveworks.com/docs/ingest-users))
2. Your workday instance uses the same work email as your IDAM.

**Ease of Building**

This is a `beginner` difficulty use case

This will take `1 week` for your developer and the business system manager to build, test, and launch.

**Business Value**:

1. Encourages transparency and self-service in managing PTO.
2. Saves time and reduces HR inquiries.
3. Improves planning and satisfaction among employees.

**Level of Access Requested**

1. Requires access to the `Worker Data` and `Time Off` Business Objects. Elaborated in [Domain Permissions](#domain-permissions-required) section

**SKU Eligibility**: `Core Copilot` SKU (all customers).

## **Conversation Design**

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+how+much+balance+do+I+have%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E%3Cbr%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ELookup+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Time+Off+Type+and+Quantity%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EYou+currently+have+the+following+time+off+balances%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3A+196+Hours%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3A+12+Days%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3A+0+Hours%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EThanks+for+the+information%21%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# Project Plan (for Project Managers and Champions)

1. Skim through this page, and decide if you want to engage [Professional Services](https://developer.moveworks.com/creator-studio/troubleshooting/support/#4-sign-up-for-professional-services).
2. Share and align on the [Conversation Design](#conversation-design) experience with your Workday admin. Their alignment is important to build a useful plugin for your employees.
   * *(optional)*: Ask [these discovery questions](#discovery-questions-to-personalize-your-conversation--design-customization-options) to customize the conversation design to better fit your teams needs. 
3. *(optional)* Ask your Workday Engineer to share the [Access Needs](#overview) with your security team. Security may be required to approve the access needs to build this use case.
   * This step is not required if your security team has authorized Moveworks to connect with Workday and similar business systems
4. *(optional)*: Ask your legal team to review Moveworks [Terms of Service](https://www.moveworks.com/us/en/legal/terms-conditions) and [Privacy Policy](https://www.moveworks.com/us/en/legal/privacy-policy). They may be required to approve these two documents to build a Workday Plugin.
   * This step is not required if your legal team has authorized Moveworks to connect with Workday and similar business systems
5. Ask your Workday Administrator and Workday System Engineer to follow the [Access Needs](#overview) guide to share the required API credentials with you with required permissions and configuration.
   * Note: your Workday System Engineer will provide staging and production credentials for development.
6. Capture these requirements in a [project plan template like this](https://docs.google.com/document/d/1CAGWrv6kvSQUSKPNA6F_k02WGzpclq7yn4V87WQa6rg/edit), so that all XFN stakeholders have a consistent experience they will be building
7. Finally, ask your Creator Studio developer to import and build the plugin with Creator Studio. They will develop and launch first in the sandbox environment, and then in the production environment.

## Discovery Questions to Personalize Your Conversation  Design *(Customization Options)*

1. Which time off plans do employees in a given country have?
2. How many types of PTO (e.g., vacation, sick leave, personal days) are available, and do employees have the ability to view balances for each category?
3. After checking their PTO balances, should employees be provided options for further actions, such as submitting a time-off request or viewing their time-off history?

# For Workday Administrators

This document provides a comprehensive step-by-step guide designed for Workday Administrators and HR Systems Engineers, detailing the procedures for creating credentials, assigning roles, and configuring workday effectively. It serves as a practical manual to ensure accurate setup and management of technical resources.

## Configuration Instructions

### Overview

We will be accessing Workday through the read-only AbsenceManagement REST API, through a Workday Connector in Moveworks. This requires you to:

1. Configure User Ingestion in Moveworks for your Workday instance using [Moveworks Setup](https://help.moveworks.com/docs/ingest-users-workday). This will help us identify the correct Workday ID of the users using the Moveworks Bot to query data.
2. Create a Connector in Creator Studio – [link](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)
    1. Grant the [domain permissions below](#domain-permissions-required) as part of your Integrations Security Systems Group (ISSG)
3. Test required APIs in Postman
4. Build use case in Creator Studio

### Domain Permissions Required

| Workday Web Service | Domain Permissions Required | Description |
| --- | --- | --- |
| Time Off Request (ReST) | Get_Workers, Get_Positions | Permissions needed to retrieve worker and their time off balances information. |

> ℹ️ **You will be creating two ISUs, one in a staging environment, and one in production.**

### Step 1: Create a Connector in Creator Studio

[Follow the authentication guide to create a working Workday connector in Creator Studio](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)

### **Step 2: Test required APIs with Postman**

**API 1: Authorization**

Copy-paste this authentication cURL into your Postman Collection for this Use case, substituting any red text with the relevant values from your Workday connector configuration. This helps ensure you are connecting to your workday via the generated access token from this API.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/oauth2/{{instance}}/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{client_id}}:{{client_secret}}' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{refresh_token}}'
```

![Screenshot 2024-07-04 at 8.00.56 PM.png](Plugin%20Guide%20Lookup%20PTO%20balance%20in%20Workday%20720c52c6df5641efbdbb08ed3360f105/Screenshot_2024-07-04_at_8.00.56_PM.png)

**API 2: Get Time Off Details from Workday**

Copy-paste the API cURL below to get relevant time off details for a user in workday, substituting any red text with the relevant values from connector configuration and the email of a test user. This helps ensure you are fetching the workday id and the time off plan details for a user correctly.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/api/absenceManagement/v1/{{instance}}/balances?worker=<workday_id_of_user>' \' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}'
```

![Untitled](Plugin%20Guide%20Lookup%20PTO%20balance%20in%20Workday%20720c52c6df5641efbdbb08ed3360f105/Untitled%201.png)

> ✅ **Inform your Creator Studio developer that they can use your Workday connector to build their use case** 🚀

### **Step 3: Build in Creator Studio**

We will be building this use case as a queries use case in order to lookup the time off balances for a user. We will be following the P1: Sequential Action Chaining design pattern to build this use case

### Design Pattern P1: Sequential Action Chaining

![Untitled](Plugin%20Guide%20Lookup%20PTO%20balance%20in%20Workday%20720c52c6df5641efbdbb08ed3360f105/Untitled%202.png)

✨ **Triggers**

1. Natural language input to copilot requesting time off details/balances for the user

**🗣️ Natural Language Slots**

1. None

🤲 **Inferred Slots**

1. User Workday ID: inferred from user roster profile of the employee calling this plugin

**🗺️ Resolvers**

1. None

**🏃‍♂️ Actions**

1. Lookup time off type details: Calls the `/api/absenceManagement/v1/{instance}/balances?worker=<workday_id_of_user>` API to query the requesting employee's eligible time off plans, and relevant time off types through their User workday ID.

**📚 Guidelines**

1. None

**⚠️ Caveats**

1. 

# Congratulations!

You just gave your employees the ability to view time off details/balances through your Copilot 🏝️ Look at our other Workday use cases below to further improve their experience below, and get inspired on what to build next!
