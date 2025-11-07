---
availability: VALIDATED
description: A plugin that allows users to approve or reject change requests.
difficulty_level: BEGINNER
domain:
- IT
fidelity: VALIDATED
installation_asset_uuid: d56d1c7b-9d81-4d1c-a7bd-f86b237ce813
name: Approve or Reject a Change Request
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+change+requests+pending+my+approval+in+ServiceNow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+change+requests+assigned+to+you+for+approval.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+1+pending+requests.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+a+couple+of+pending+change+requests+for+you+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3EHere+are+the+details+for+%3Cb%3ECHG003001%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ERequested+by%3C%2Fb%3E%3A+Beth+Anglin%3C%2Fli%3E%3Cli%3E%3Cb%3EService%3C%2Fb%3E%3A+Cloud+Infrastructure%3C%2Fli%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Increase+memory+for+production+web+servers+from+32GB+to+64GB+to+handle+increased+traffic.%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk+Level%3C%2Fb%3E%3A+Moderate%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%3A+Increase+server+memory%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Next+Request%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Approving+change+request+CHG003001+in+ServiceNow.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+approved.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+approved+the+change+request+%3Cb%3ECHG003001%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%3A+Increase+server+memory%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
time_in_minutes: 10
---

## Introduction

The “Approve / Reject Change Requests” plugin allows approvers to review and take action on change requests directly through the Moveworks AI Assistant, without logging into the ServiceNow system. This simplifies the approval workflow, accelerates decision-making, and ensures timely progress while maintaining process governance.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started

## Prerequisites

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+change+requests+pending+my+approval+in+ServiceNow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+change+requests+assigned+to+you+for+approval.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+1+pending+requests.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+a+couple+of+pending+change+requests+for+you+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3EHere+are+the+details+for+%3Cb%3ECHG003001%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ERequested+by%3C%2Fb%3E%3A+Beth+Anglin%3C%2Fli%3E%3Cli%3E%3Cb%3EService%3C%2Fb%3E%3A+Cloud+Infrastructure%3C%2Fli%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Increase+memory+for+production+web+servers+from+32GB+to+64GB+to+handle+increased+traffic.%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk+Level%3C%2Fb%3E%3A+Moderate%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%3A+Increase+server+memory%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Next+Request%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Approving+change+request+CHG003001+in+ServiceNow.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+approved.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+approved+the+change+request+%3Cb%3ECHG003001%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%3A+Increase+server+memory%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow?hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

- **Read access** to the `sysapproval_approver` table
    
    *(Used to query pending approvals assigned to a user)*
    
- **Read access** to the `sys_user` table
    
    *(Used to resolve approver user information, like email)*
    
- **Read access** to the `change_request` table
    
    *(To fetch the associated change request details via `sysapproval` reference)*
    
- **Write access** to the `sysapproval_approver` table
    
    *(To update the approval state: Approved / Rejected)*
    

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### API #1 : Get Pending Approval Tasks For A Change Request

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver?sysparm_query=state=requested^approver.email=<USER_EMAIL>^sysapproval.table=change_request&sysparm_fields=sys_id,approver,sysapproval,state' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `USER_EMAIL` (string) – Email address of the approver to retrieve pending change request approvals from the `sysapproval_approver` table.

### API #2 : Get Change Request Via Approver Task

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver/<SYS_ID>' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
```

**Path Parameters:**

- `SYS_ID` (string) – Unique ID of the approval record to retrieve.

### **API #3: Approve Or Reject Change Request Via Approver Task**

```bash
curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver/<SYS_ID>' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "state": "{{state}}"
}'
```

**Path Parameters:**

- `SYS_ID` (string) – The unique ID of the approval record in the `sysapproval_approver` table used to update the approval status (Approve or Reject).

**Request Body Field:**

- `state` (string) – Updates the state of the approval.