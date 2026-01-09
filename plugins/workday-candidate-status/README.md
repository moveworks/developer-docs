---
availability: INSTALLABLE
description: A plugin that allows a hiring manager to look up the status of a candidate
  / job they've posted.
installation_asset_uuid: 7108b174-432c-44fc-bdb2-a9f32c907ec4
name: Lookup Candidate Status
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+I+get+an+update+candidate+job+applications%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+To+look+up+your+file%2C+could+you+please+provide+candidate%27s+email+address%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22jane.doe%40example.com%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Looking+up+candidate+profile+for+jane.doe%40example.com%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ESearching+for+applications+in+Workday%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Compiling+application+statuses%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+progress+on+your+job+applications%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ESenior+Product+Manager%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Interview%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDetails%3A%3C%2Fstrong%3E+Scheduled+for+August+15%2C+2024+with+the+hiring+manager.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EComments%3A%3C%2Fstrong%3E+Strong+candidate%2C+looking+forward+to+the+conversation.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cstrong%3ESoftware+Engineer%2C+Backend%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Submitted%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDetails%3A%3C%2Fstrong%3E+Application+is+under+review+by+the+hiring+team.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EComments%3A%3C%2Fstrong%3E+None+at+this+time.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cstrong%3EEngineering+Manager%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Not+Moving+Forward%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDetails%3A%3C%2Fstrong%3E+Application+reviewed+on+July+28%2C+2024.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EComments%3A%3C%2Fstrong%3E+While+your+experience+is+impressive%2C+we+have+decided+to+move+forward+with+other+candidates+whose+qualifications+more+closely+match+the+requirements+of+the+role.%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Jane+Doe%27s+Applications%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- workday
---

## Introduction

The **“Lookup Candidate Status”** plugin allows recruiters or hiring managers to quickly check a candidate’s hiring status in **Workday** using the Moveworks AI Assistant. This eliminates the need to manually search through Workday, streamlining the hiring process and improving efficiency.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+I+get+an+update+candidate+job+applications%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+To+look+up+your+file%2C+could+you+please+provide+candidate%27s+email+address%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22jane.doe%40example.com%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Looking+up+candidate+profile+for+jane.doe%40example.com%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ESearching+for+applications+in+Workday%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Compiling+application+statuses%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+progress+on+your+job+applications%3A%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3ESenior+Product+Manager%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Interview%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDetails%3A%3C%2Fstrong%3E+Scheduled+for+August+15%2C+2024+with+the+hiring+manager.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EComments%3A%3C%2Fstrong%3E+Strong+candidate%2C+looking+forward+to+the+conversation.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cstrong%3ESoftware+Engineer%2C+Backend%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Submitted%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDetails%3A%3C%2Fstrong%3E+Application+is+under+review+by+the+hiring+team.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EComments%3A%3C%2Fstrong%3E+None+at+this+time.%3C%2Fli%3E%5Cn%3C%2Ful%3E%5Cn%3Cp%3E%3Cstrong%3EEngineering+Manager%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Not+Moving+Forward%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDetails%3A%3C%2Fstrong%3E+Application+reviewed+on+July+28%2C+2024.%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EComments%3A%3C%2Fstrong%3E+While+your+experience+is+impressive%2C+we+have+decided+to+move+forward+with+other+candidates+whose+qualifications+more+closely+match+the+requirements+of+the+role.%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Jane+Doe%27s+Applications%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Candidate Data
- `View access` to Recruiting Information

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Retrieve Candidate Status**

```bash
curl --location --request POST 'https://<YOUR_DOMAIN>/service/<TENANT>/Recruiting/v42.1' \
--header 'Content-Type: application/xml' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '<env:Envelope xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:wsdl="urn:com.workday/bsvc"
    xmlns:env="http://schemas.xmlsoap.org/soap/envelope/">
    <env:Body>
        <wsdl:Get_Candidates_Request>
            <wsdl:Request_Criteria>
                <wsdl:Candidate_Email_Address>{{candidate_email_address}}</wsdl:Candidate_Email_Address>
            </wsdl:Request_Criteria>
        </wsdl:Get_Candidates_Request>
    </env:Body>
</env:Envelope>'
```

**Query Parameters:**

- `candidate_email_address` (string) – The primary email address of the candidate used to retrieve their status from Workday