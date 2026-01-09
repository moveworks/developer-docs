---
availability: INSTALLABLE
description: A plugin that allows users to approve or reject change requests.
installation_asset_uuid: 2c1bd67a-5d2d-419a-82b6-5b1f3a23eee1
name: Approve or Reject a Change Request
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22show+me+change+requests+pending+my+approval+in+ServiceNow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+change+requests+assigned+to+you+for+approval.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+1+pending+requests.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+a+couple+of+pending+change+requests+for+you+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%3Cp%3EHere+are+the+details+for+%3Cb%3ECHG003001%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ERequested+by%3C%2Fb%3E%3A+Beth+Anglin%3C%2Fli%3E%3Cli%3E%3Cb%3EService%3C%2Fb%3E%3A+Cloud+Infrastructure%3C%2Fli%3E%3Cli%3E%3Cb%3EDescription%3C%2Fb%3E%3A+Increase+memory+for+production+web+servers+from+32GB+to+64GB+to+handle+increased+traffic.%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk+Level%3C%2Fb%3E%3A+Moderate%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%3A+Increase+server+memory%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Next+Request%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Approve%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Approving+change+request+CHG003001+in+ServiceNow.%22%2C%22status%22%3A%22pending%22%7D%2C%7B%22richText%22%3A%22Successfully+approved.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDone%21+I%27ve+approved+the+change+request+%3Cb%3ECHG003001%3C%2Fb%3E.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG003001%3A+Increase+server+memory%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
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

## Notes

1. When approving or rejecting a Change Request, approvers can optionally include a comment or reason for their decision. Since this integration currently uses client-credentials authentication, comments are technically performed under the integration user’s account (e.g., admin or api_integration). To preserve clarity and audit accuracy, the actual approver’s name is included inside the comment text itself. This field can be removed as well if needed. 

2. The API in this plugin fetches all pending Change Request approvals assigned directly to a user using the filter approver.email={{email}}. 
In most ServiceNow environments, this also includes group approvals, because modern workflows use expanded group approvals (each group member gets their own approval record).
A few legacy or customized instances might still use collapsed group approvals (a single approval record for the whole group). In those cases, modifications to the API filters will be needed.

## **Appendix**

### API #1 : Get Pending Approval Tasks For Change Requests

```bash
curl --location 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json'
```
With the following query parameters:

1. sysparm_query: state=requested^approver.email={{email}}^source_table=change_request^ORDERBYDESCsys_created_on
2. sysparm_fields: sys_id, state, source_table, due_date, expected_start, group, sysapproval.short_description, sysapproval.risk, sysapproval.category, sysapproval.assignment_group, sysapproval.requested_by, sysapproval.opened_by, sysapproval.start_date, sysapproval.end_date, sysapproval.justification, sysapproval.implementation_plan, sysapproval.backout_plan, sysapproval.assigned_to, sysapproval, sysapproval.impact, sysapproval.business_service, sysapproval.number, sysapproval.cmdb_ci, sysapproval.state, sysapproval.priority, sysapproval.description, sysapproval.type
3. sysparm_display_value: true
4. sysparm_limit: 100


### **API #2: Approve Or Reject Change Request**

```bash
curl --location --request PATCH 'https://<API_SERVER_DOMAIN>/api/now/table/sysapproval_approver/<SYS_ID>' \
--header 'Authorization: Bearer <Your_Access_Token>' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data '{
  "state": "{{state}}",
  "comments": "{{action_comment}}"
}'
```
Path Parameters:

1. `SYS_ID` (string) – The unique ID of the approval record in the `sysapproval_approver` table used to update the approval status (Approve or Reject).

Request Body Fields:

1. `state` (string) – Updates the state of the approval (approved/rejected)
2. `comments` (string) - Comment for action
