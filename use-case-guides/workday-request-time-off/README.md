---
design_pattern_id: 2
name: Request Time-Off in Workday
description: Plugin Template Guide for Requesting Time-Offs in Workday with your bot
systems: [workday]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%A4%B2+%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+Time+off+plan%3Cbr%3E2.+Start+time%3Cbr%3E%3Ci%3E3.+%28optional%29%3A+comments%2C+end+date%2C+start+time%2C+end+time%3C%2Fi%3E%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E2.+Request+time+off%3Cbr%3E%3Cbr%3E%F0%9F%93%9A+%3Cb%3EGuidelines%3C%2Fb%3E%3Cbr%3E%3Ci%3E1.+%28before+this+plugin%29%3C%2Fi%3E%3A+Employee+looks+up+eligible+time+off+plan%3Cbr%3E2.+Employee+specifies+which+time+off+plan+and+start+date+they+want%3Cbr%3E3.+Time+off+request+is+sent%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3Cbr%3E%3Cbr%3EYou+can+also+optionally+specify%3A%3Cbr%3E%3Ci%3E1.+End+date%3C%2Fi%3E%3Cbr%3E%3Ci%3E2.+Comments%3C%2Fi%3E%3Cbr%3E%3Ci%3E3.+Start+time%3C%2Fi%3E%3Cbr%3E%3Ci%3E4.+End+time%3C%2Fi%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4+and+5%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Position+and+Time+Off+Type%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 60
difficulty_level: Intermediate
---

### Presenting the easiest way for your employees to Take Time Off 🏝️

### **System Overview**

**Depends on**: [`Workday` connector (link)](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)

**Assumptions**:

1. You have synchronized your employees’ work email from your IDAM like `Okta` or `Microsoft Entra` to Moveworks using Moveworks Setup ([link](https://help.moveworks.com/docs/ingest-users))
2. Your workday instance uses the same work email as your IDAM.

**Ease of Building**

This is a `intermediate` difficulty use case

This will take `2 weeks` for your developer and the business system manager to build, test, and launch.

**Business Value**: 

1. Employees need to file time off requests promptly for accurate record keeping
2. However, it is painful for employees to signing into your single-sign on provider, signing into workday, navigating to your employee schedule calendar, and selecting the appropriate time off plans and dates
3. If managers don’t have accurate record of when employees are off, they can’t manage
4. If payroll team does not have accurate records, they will not pay employees properly for time off.
5. This plugin provides a convenient way for your employees to submit time off requests.

**Level of Access Requested**

1. Requires access to the `Worker Data` and `Time Off` Business Objects. Elaborated in [Domain Permissions](#domain-permissions-required) section

**SKU Eligibility**: `Core Copilot` SKU (all customers).

![[Conversation Design](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%A4%B2+%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+Time+off+plan%3Cbr%3E2.+Start+time%3Cbr%3E%3Ci%3E3.+%28optional%29%3A+comments%2C+end+date%2C+start+time%2C+end+time%3C%2Fi%3E%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E2.+Request+time+off%3Cbr%3E%3Cbr%3E%F0%9F%93%9A+%3Cb%3EGuidelines%3C%2Fb%3E%3Cbr%3E%3Ci%3E1.+%28before+this+plugin%29%3C%2Fi%3E%3A+Employee+looks+up+eligible+time+off+plan%3Cbr%3E2.+Employee+specifies+which+time+off+plan+and+start+date+they+want%3Cbr%3E3.+Time+off+request+is+sent%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3Cbr%3E%3Cbr%3EYou+can+also+optionally+specify%3A%3Cbr%3E%3Ci%3E1.+End+date%3C%2Fi%3E%3Cbr%3E%3Ci%3E2.+Comments%3C%2Fi%3E%3Cbr%3E%3Ci%3E3.+Start+time%3C%2Fi%3E%3Cbr%3E%3Ci%3E4.+End+time%3C%2Fi%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4+and+5%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Position+and+Time+Off+Type%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D)](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Purple_Chat_Builder_(20).png)

[Conversation Design](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6521%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+need+to+take+time+off%2C+could+you+help+me+with+that%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%A4%B2+%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+Time+off+plan%3Cbr%3E2.+Start+time%3Cbr%3E%3Ci%3E3.+%28optional%29%3A+comments%2C+end+date%2C+start+time%2C+end+time%3C%2Fi%3E%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E2.+Request+time+off%3Cbr%3E%3Cbr%3E%F0%9F%93%9A+%3Cb%3EGuidelines%3C%2Fb%3E%3Cbr%3E%3Ci%3E1.+%28before+this+plugin%29%3C%2Fi%3E%3A+Employee+looks+up+eligible+time+off+plan%3Cbr%3E2.+Employee+specifies+which+time+off+plan+and+start+date+they+want%3Cbr%3E3.+Time+off+request+is+sent%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+which+time+off+plan+would+you+like+to+select%3F%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3E1%3A+Employee+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E2%3A+Sick+Time+Off+%28USA%29%3C%2Fp%3E%22%7D%2C%7B%22title%22%3A%22%3Cp%3E3%3A+Wellness+Day+%28USA%29%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+the+first+time+off+plan%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESounds+good%2C+when+would+you+like+to+take+time+off%3F%3Cbr%3E%3Cbr%3EYou+can+also+optionally+specify%3A%3Cbr%3E%3Ci%3E1.+End+date%3C%2Fi%3E%3Cbr%3E%3Ci%3E2.+Comments%3C%2Fi%3E%3Cbr%3E%3Ci%3E3.+Start+time%3C%2Fi%3E%3Cbr%3E%3Ci%3E4.+End+time%3C%2Fi%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELets+take+time+off+on+July+4+and+5%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Position+and+Time+Off+Type%3C%2Fb%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C%2Fb%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+%F0%9F%8F%9D%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D)

# Project Plan (for Project Managers and Champions)

1. Skim through this page, and decide if you want to engage [Professional Services](https://developer.moveworks.com/creator-studio/troubleshooting/support/#4-sign-up-for-professional-services).
2. Share and align on the [Conversation Design](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22:%22My+Workspace%22,%22botSettings%22:%7B%7D,%22mocks%22:%5B%7B%22id%22:6521,%22title%22:%22Mock+1%22,%22transcript%22:%7B%22settings%22:%7B%22colorStyle%22:%22LIGHT%22,%22startTime%22:%2211:43+AM%22,%22defaultPerson%22:%22GWEN%22,%22editable%22:true%7D,%22messages%22:%5B%7B%22from%22:%22USER%22,%22text%22:%22%3Cp%3EI+need+to+take+time+off,+could+you+help+me+with+that?%3C/p%3E%22%7D,%7B%22from%22:%22ANNOTATION%22,%22text%22:%22%3Cp%3E%E2%9C%A8+%3Cb%3ETriggers%3C/b%3E%3Cbr%3E1.+Natural+Language%3Cbr%3E%3Cbr%3E%F0%9F%A4%B2+%3Cb%3ESlots%3C/b%3E%3Cbr%3E1.+Time+off+plan%3Cbr%3E2.+Start+time%3Cbr%3E%3Ci%3E3.+(optional):+comments,+end+date,+start+time,+end+time%3C/i%3E%3Cbr%3E%3Cbr%3E%F0%9F%8F%83%E2%80%8D%E2%99%82%EF%B8%8F+%3Cb%3EActions%3C/b%3E%3Cbr%3E1.+Query+time+off+details+for+employee%3Cbr%3E2.+Request+time+off%3Cbr%3E%3Cbr%3E%F0%9F%93%9A+%3Cb%3EGuidelines%3C/b%3E%3Cbr%3E%3Ci%3E1.+(before+this+plugin)%3C/i%3E:+Employee+looks+up+eligible+time+off+plan%3Cbr%3E2.+Employee+specifies+which+time+off+plan+and+start+date+they+want%3Cbr%3E3.+Time+off+request+is+sent%3C/p%3E%22%7D,%7B%22from%22:%22BOT%22,%22text%22:%22%3Cp%3ESounds+good,+which+time+off+plan+would+you+like+to+select?%3C/p%3E%22,%22cards%22:%5B%7B%22title%22:%22%3Cp%3E1:+Employee+Time+Off+(USA)%3C/p%3E%22%7D,%7B%22title%22:%22%3Cp%3E2:+Sick+Time+Off+(USA)%3C/p%3E%22%7D,%7B%22title%22:%22%3Cp%3E3:+Wellness+Day+(USA)%3C/p%3E%22%7D%5D%7D,%7B%22from%22:%22USER%22,%22text%22:%22%3Cp%3ELets+take+the+first+time+off+plan%3C/p%3E%22%7D,%7B%22from%22:%22BOT%22,%22text%22:%22%3Cp%3ESounds+good,+when+would+you+like+to+take+time+off?%3Cbr%3E%3Cbr%3EYou+can+also+optionally+specify:%3Cbr%3E%3Ci%3E1.+End+date%3C/i%3E%3Cbr%3E%3Ci%3E2.+Comments%3C/i%3E%3Cbr%3E%3Ci%3E3.+Start+time%3C/i%3E%3Cbr%3E%3Ci%3E4.+End+time%3C/i%3E%3C/p%3E%22%7D,%7B%22from%22:%22USER%22,%22text%22:%22%3Cp%3ELets+take+time+off+on+July+4+and+5%3C/p%3E%22%7D,%7B%22from%22:%22BOT%22,%22text%22:%22%3Cp%3E%E2%9C%85+Calling+plugin+%3Cb%3ERequest+Time+Off%3C/b%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3EGet+Position+and+Time+Off+Type%3C/b%3E%3Cbr%3E%E2%9C%85+Executing+action+%3Cb%3ERequest+Time+Off%3C/b%3E%3Cbr%3E%F0%9F%94%81+Summarizing+response%3C/p%3E%22%7D,%7B%22from%22:%22BOT%22,%22text%22:%22%3Cp%3EI+have+submitted+your+time+off+request+to+your+manager+Adam+Johnson+%F0%9F%8F%9D%3C/p%3E%22%7D%5D%7D%7D%5D%7D) experience with your Workday admin. Their alignment is important to build a useful plugin for your employees.
    1. Optional: Ask [these discovery questions](#discovery-questions-to-personalize-your-conversation--design-customization-options) to customize the conversation design to better fit your teams needs. 
3. *(optional)* Ask your Workday Engineer to share the [Access Needs](#overview) with your security team. Security may be required to approve the access needs to build this use case.
    1. This step is not required if your security team has authorized Moveworks to connect with Salesforce and similar business systems
4. *(optional)*: Ask your legal team to review Moveworks [Terms of Service](https://www.moveworks.com/us/en/legal/terms-conditions) and [Privacy Policy](https://www.moveworks.com/us/en/legal/privacy-policy). They may be required to approve these two documents to build a Salesforce Plugin.
    1. This step is not required if your legal team has authorized Moveworks to connect with Salesforce and similar business systems
5. Ask your Workday Administrator and Workday System Engineer to follow the [Access Needs](#overview) guide to share the required API credentials with you with required permissions and configuration.
    1. Note: your Workday System Engineer will provide staging and production credentials for development.
6. Capture these requirements in this [project plan template](https://docs.google.com/document/d/1CAGWrv6kvSQUSKPNA6F_k02WGzpclq7yn4V87WQa6rg/edit), so that all XFN stakeholders have a consistent experience they will be building
7. Finally, ask your Creator Studio developer to import and build the plugin with Creator Studio. They will develop and launch first in the sandbox environment, and then in the production environment.

## Discovery Questions to Personalize Your Conversation  Design *(Customization Options)*

1. Which time off plans do employees in a given country have?
2. Is approval required before you request time off?
3. Do you specify time off required in days or hours?
4. Would you like to notify employees once their time off requests are approved?

# For Workday Administrators

This document provides a comprehensive step-by-step guide designed for Workday Administrators and HR Systems Engineers, detailing the procedures for creating credentials, assigning roles, and configuring workday effectively. It serves as a practical manual to ensure accurate setup and management of technical resources.

## Configuration Instructions

### Overview

We will be accessing Workday through the read-only WQL API and the read + write AbsenceManagement REST API, through a Workday Connector in Moveworks. This requires you to:

1. Create a Connector in Creator Studio – [link](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)
    1. Grant the [domain permissions below](#domain-permissions-required) as part of your Integrations Security Systems Group (ISSG)
2. Test required APIs in Postman
3. Build use case in Creator Studio

### Domain Permissions Required

| Workday Web Service | Domain Permissions Required | Description |
| --- | --- | --- |
| Worker Data Query (WQL) | - Get_References
- Get_Workers
- Get_Eligible_Time_Off_Plans
- Get_Time_Off_Balance
- Get_Positions | Permissions needed to retrieve worker information, including contact details, position, and time off balances. |
| Time Off Request (ReST) | - Put_Time_Off_Request
- Get_Workers- Get_Positions | Permissions needed to submit time off requests and retrieve worker and position information. |

> ℹ️ Note: You will be creating two ISUs, one in a staging environment, and one in production.

### Step 1: Create a Connector in Creator Studio

[Follow the authentication guide to create a working Workday connector in Creator Studio](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)

### **Step 2: Test required APIs with Postman**

**Prerequisite: Install Custom Report in Workday**

Use the custom report definitions below to install the columns and prompt defaults for your custom report

[Worker Details Moveworks Columns.xlsx](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Worker_Details_Moveworks_Columns.xlsx)

[Worker Details Moveworks Prompt.xlsx](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Worker_Details_Moveworks_Prompt.xlsx)

**Input 1: User Slots**

Assume the following inputs for your subsequent API calls

1. User email: `test@workday.net`

**API 2: Authorization**

Copy-paste this authentication cURL into your Postman Collection for this Use case, substituting any red text with the relevant values from your Workday connector configuration. This helps ensure you are connecting to your workday via the generated access token from this API.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/oauth2/{{instance}}/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--user '{{client_id}}:{{client_secret}}' \
--data-urlencode 'grant_type=refresh_token' \
--data-urlencode 'refresh_token={{refresh_token}}'
```

![Screenshot 2024-07-04 at 8.00.56 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.00.56_PM.png)

**API 3: Get Time Off Details from Workday**

Copy-paste the API cURL below to get relevant time off details for a user in workday, substituting any red text with the relevant values from connector configuration and the email of a test user. This helps ensure you are fetching the workday id and the time off plan details for a user correctly.

```bash
curl --location 'https://{{domain}}.workday.com/ccx/api/wql/v1/{{instance}}/data?limit=10&offset=0' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}' \
--data-raw '
    {
        "query": "SELECT workdayAccount, workdayID, email_PrimaryWorkOrPrimaryHome, position, cf_TimeOffBalanceForPTOAndVacationPlans, eligibleAndVisibleTimeOffPlansForWorkerAsOfDate, allEligibleTimeOffsForWorker FROM indexedAllWorkers (dataSourceFilter = indexedAllWorkersFilter, includeSubordinateOrganizations = false, isActive = false) WHERE email_PrimaryWorkOrPrimaryHome = '{{user.email_addr}}'"
    }
'
```

![Screenshot 2024-07-04 at 8.07.14 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.07.14_PM.png)

**API 4: Request Time Off in Workday**

Copy-paste the API cURL below to submit the time off request for a user in workday, substituting any red text with the relevant values from connector configuration and the user information from the above API. This submits a time-off request for a user correctly. Please note you need to pass the following details from API 3 as part of the request:

1. The date(s) you are requesting time off for, as a JSON array, where each date follows the `YYYY-MM-DD` format.
2. The `timeOffType_id` from API 3 - the ID within the `allEligibleTimeOffsForWorker` field
3. The `position_id` from API 3
4. The `workdayId` from API 3

```bash
curl --location 'https://{{domain}}.workday.com/ccx/api/absenceManagement/v1/{{instance}}/workers/{{worker_id}}/requestTimeOff' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {{access_token}}' \
--data '{
  "days": [
    {
      "date": "{{selected_date_1}}",
      "dailyQuantity": 8,
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      },
      "position": {
            "id": "{{position_id}}"
        }
    },
    {
      "date": "{{selected_date_2}}",
      "dailyQuantity": 8,
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      },
      "position": {
            "id": "{{position_id}}"
        }
    },
    {
      "date": "{{selected_date_3}}",
      "dailyQuantity": 8,
      "comment": "User is taking time off through API",
      "timeOffType": {
        "id": "{{timeOffType_id}}"
      },
      "position": {
            "id": "{{position_id}}"
        }
    }
  ]
}'
```

![Screenshot 2024-07-04 at 8.19.38 PM.png](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Screenshot_2024-07-04_at_8.19.38_PM.png)


> ✅ Inform your Creator Studio developer that they can use your Workday connector to build their use case 🚀

### **Step 3: Build in Creator Studio**

We will be building this use case as a query triggered path along with an iPaaS to chain APIs 3 and 4 together in order to submit a time off request for a user. We will be following the P1: Sequential Action Chaining design pattern in your iPaaS to build this use case

### Design Pattern P1: Sequential Action Chaining

![Untitled](Plugin%20Template%20Request%20Time-Off%20in%20Workday%20081c4d522bf64bbead3697288dd46047/Untitled.png)

✨ **Triggers**

1. Natural language input to copilot requesting to take time off

**🗣️ Natural Language Slots**

1. Start Date: when time off starts
2. End Date *(optional)*: when time off ends. By default end date is the same as the start date.
3. Comments *(optional)*: Any relevant context / justification for taking time off
4. Start Time *(optional)*: if taking partial days off, starting time for time off can be specified.
5. End Time *(optional)*: if taking partial days off, ending time for time off can be specified.

🤲 **Inferred Slots**

1. Current Date: used in the "as of date" in the request PTO action. Could be static.
2. Email Address: inferred from user roster profile of the employee calling this plugin

**🗺️ Resolvers**

1. Time Off Plan: maps an employee’s time off plans to the corresponding time off types (which is required by the request time off API)

**🏃‍♂️ Actions**

1. Lookup time off type details: Calls the `/api/wql/v1/{{instance}}/data` API to query the requesting employee's workday ID, eligible time off plans, and relevant time off types through their work email address.
2. Request time off: Calls the `/api/absenceManagement/v1/{{workday_instance_id}}/workers/{{worker_id}}/requestTimeOff` API to request time off

**📚 Guidelines**

1. (before this plugin): Employee looks up available time off balance for a particular date, specifies which time off plan they want to use for time off. 
2. Employee specifies the start date for time off, and optionally the end date, comments, start / end times to their copilot
3. The time off request is submitted to the employee's manager for approval

**⚠️ Caveats**

1. Assuming an employees select a time off plan that has adequate time off balance. An error message is thrown for an invalid time off 
2. An employee could specify a time off plan that they are not eligible for

### Example iPaaS Code (with Python and FastAPI)

```python
from fastapi import FastAPI, HTTPException
import requests

CANONICAL_TIME_OFF_PLAN_MAP = {
  "Time off (USA)": "67839087362157384953",
  "Time off (XYZ)": "8w2394093284924538920",
  ...
}

app = FastAPI()

# Function to get access token
def get_access_token():
    url = "https://wd2-impl-services1.workday.com/ccx/oauth2/{workday_instance_id}/token"
    headers = {
        "Content-Type": "application/x-www-form-urlencoded"
    }
    # REFRESH_TOKEN should be securely fetched from an environment variable or a secrets manager
    data = {
        "grant_type": "refresh_token",
        "refresh_token": "<Your_Refresh_Token>",  # Redacted for security. Replace <Your_Refresh_Token> with actual value
    }

    # CLIENT_ID and CLIENT_SECRET should be securely fetched from an environment variable or a secrets manager
    auth = ("<Your_Client_ID>", "<Your_Client_Secret>") # Redacted for security. Replace <Your_Client_ID> and <Your_Client_Secret> with actual value
    
    response = requests.post(url, headers=headers, auth=auth, data=data)
    if response.status_code != 200:
        raise HTTPException(status_code=400, detail="Failed to authenticate.")
    return response.json().get("access_token")

# Endpoint to request time off
@app.post("/request-time-off/")
async def request_time_off(
	email: str, 
	totype: str,
	start_date: str, 
	end_date: str = None, 
	comments: str = "", 
	start_time: str = "", 
	end_time: str = ""
):
    try:
        access_token = get_access_token()
    except HTTPException as e:
        return {"error": e.detail}

    # These values need to be dynamically determined based on your actual use case
    workday_instance_id = "your_workday_instance_id"
    worker_id = "your_worker_id"  # This should be fetched dynamically

    url_request_off = f"https://wd2-impl-services1.workday.com/api/absenceManagement/v1/{workday_instance_id}/workers/{worker_id}/requestTimeOff"

    headers = {
        "Authorization": f"Bearer {access_token}",
        "Content-Type": "application/json"
    }
    
    to_type = CANONICAL_TIME_OFF_PLAN_MAP[totype]

    payload = {
        "start_date": start_date,
        "end_date": end_date or start_date,
        "type": to_type,
        "comments": comments,
        "start_time": start_time,
        "end_time": end_time,
        # You need to add any other field required by the API
    }

    response = requests.post(url_request_off, json=payload, headers=headers)

    if response.status_code == 200:
        return {"message": "Time off requested successfully."}
    else:
        return {"error": f"Request failed with status code {response.status_code}: {response.text}"}
```

# Congratulations!

You just gave your employees the ability to take time off through your Copilot 🏝️ Look at our other Workday use cases below to further improve their experience below, and get inspired on what to build next.
