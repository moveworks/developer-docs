---
description: A plugin that allows a hiring manager to look up the status of a candidate
  / job they've posted.
difficulty_level: INTERMEDIATE
fidelity: TEMPLATE
installation_asset_uuid: 9212c8c4-980e-4981-b241-ab94267a45ad
name: Lookup Candidate Status
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+view+the+status+of+candidates+for+a+role+I+posted%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+your+access+to+recruitment+tools%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Locating+candidates+for+your+role%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Gathering+the+latest+updates+on+candidate+statuses%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ECandidate+Statuses%3C%2Fb%3E%3Cbr%3EStay+informed+about+the+progress+of+candidates+through+the+recruitment+process+for+the+role+you%27ve+posted.%22%7D%2C%7B%22richText%22%3A%22Here+are+the+latest+updates%3A%3Cbr%3E%3Cb%3EJane+Doe%3A%3C%2Fb%3E+Interview+scheduled+for+06%2F15+-+%3Ci%3EEngineering+Manager%3C%2Fi%3E%3Cbr%3E%3Cb%3EJohn+Smith%3A%3C%2Fb%3E+Offer+extended+-+%3Ci%3EProduct+Designer%3C%2Fi%3E%3Cbr%3E%3Cb%3EAlice+Johnson%3A%3C%2Fb%3E+Awaiting+reference+check+-+%3Ci%3EMarketing+Specialist%3C%2Fi%3E%3Cbr%3E%3Cb%3EBob+Williams%3A%3C%2Fb%3E+Application+under+review+-+%3Ci%3ESoftware+Developer%3C%2Fi%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22More+Details+on+Candidates%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Post+Another+Role%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Recruiting & Talent
systems:
- workday
time_in_minutes: 20
---
## Introduction

The **“Lookup Candidate Status”** plugin allows recruiters or hiring managers to quickly check a candidate’s hiring status in **Workday** using the Moveworks AI Assistant. This eliminates the need to manually search through Workday, streamlining the hiring process and improving efficiency.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+view+the+status+of+candidates+for+a+role+I+posted%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+your+access+to+recruitment+tools%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Locating+candidates+for+your+role%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Gathering+the+latest+updates+on+candidate+statuses%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ECandidate+Statuses%3C%2Fb%3E%3Cbr%3EStay+informed+about+the+progress+of+candidates+through+the+recruitment+process+for+the+role+you%27ve+posted.%22%7D%2C%7B%22richText%22%3A%22Here+are+the+latest+updates%3A%3Cbr%3E%3Cb%3EJane+Doe%3A%3C%2Fb%3E+Interview+scheduled+for+06%2F15+-+%3Ci%3EEngineering+Manager%3C%2Fi%3E%3Cbr%3E%3Cb%3EJohn+Smith%3A%3C%2Fb%3E+Offer+extended+-+%3Ci%3EProduct+Designer%3C%2Fi%3E%3Cbr%3E%3Cb%3EAlice+Johnson%3A%3C%2Fb%3E+Awaiting+reference+check+-+%3Ci%3EMarketing+Specialist%3C%2Fi%3E%3Cbr%3E%3Cb%3EBob+Williams%3A%3C%2Fb%3E+Application+under+review+-+%3Ci%3ESoftware+Developer%3C%2Fi%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22More+Details+on+Candidates%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Post+Another+Role%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Candidate Data
- `View access` to Recruiting Information

**Tenant Configuration:**

All Workday API endpoints in this plugin use `<TENANT>` as a placeholder. After installation, replace `<TENANT>` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.:
    
    `https://impl.workday.com/**your_tenant**/...`
    

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