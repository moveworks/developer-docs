---
availability: INSTALLABLE
description: A plugin that allows for the creation a change request from a problem.
installation_asset_uuid: 242ba8ed-9249-4b32-abe7-516a1f456e68
name: Create a Change Request from a Problem
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+create+a+change+request+from+a+problem%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+with+that.+Do+you+have+an+incident+number+or+a+description+of+the+problem%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+problem+we%27re+having+with+email+server+outages.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+problems+matching+%27email+server+outages%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+problems+in+%3Cb%3EServiceNow%3C%2Fb%3E+related+to+%27email+server+outages%27.+Please+select+the+correct+one%3A%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22PRB0040192%3A+Intermittent+email+delivery+delays%22%7D%2C%7B%22buttonText%22%3A%22PRB0040188%3A+Users+unable+to+access+shared+mailboxes%22%7D%2C%7B%22buttonText%22%3A%22None+of+these%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22PRB0040192%3A+Intermittent+email+delivery+delays%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+I%27ll+link+this+change+request+to+problem+%3Cb%3EPRB0040192%3C%2Fb%3E.+What+is+the+reason+for+the+change+and+what+is+the+implementation+plan%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+reason+is+to+increase+server+memory+to+handle+peak+load.+The+plan+is+to+schedule+a+maintenance+window+for+Saturday+at+10+PM%2C+apply+the+memory+upgrade%2C+and+monitor+performance+for+2+hours+post-change.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+submit+the+change+request+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAssociated+Problem%3A%3C%2Fb%3E+PRB0040192%3C%2Fli%3E%3Cli%3E%3Cb%3EReason+for+change%3A%3C%2Fb%3E+Increase+server+memory+to+handle+peak+load.%3C%2Fli%3E%3Cli%3E%3Cb%3EImplementation+plan%3A%3C%2Fb%3E+Schedule+a+maintenance+window+for+Saturday+at+10+PM%2C+apply+the+memory+upgrade%2C+and+monitor+performance+for+2+hours+post-change.%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EShall+I+proceed%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit+Change+Request%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Submit+Change+Request%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+change+request+from+problem+PRB0040192+in+ServiceNow%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Done%21+I%27ve+submitted+change+request+%3Cb%3ECHG0070221%3C%2Fb%3E%2C+which+is+now+linked+to+problem+%3Cb%3EPRB0040192%3C%2Fb%3E.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG0070221%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
---

## Introduction

The **“Create Change Request from Problem”** plugin empowers IT teams to quickly generate a **Change Request** in **ServiceNow** directly from an existing **Problem record** using the Moveworks AI Assistant. This streamlines the change management process by eliminating manual steps, ensuring better tracking, and enabling faster resolution of issues that require infrastructure or process changes.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+create+a+change+request+from+a+problem%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+can+help+with+that.+Do+you+have+an+incident+number+or+a+description+of+the+problem%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+problem+we%27re+having+with+email+server+outages.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+problems+matching+%27email+server+outages%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+problems+in+%3Cb%3EServiceNow%3C%2Fb%3E+related+to+%27email+server+outages%27.+Please+select+the+correct+one%3A%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22PRB0040192%3A+Intermittent+email+delivery+delays%22%7D%2C%7B%22buttonText%22%3A%22PRB0040188%3A+Users+unable+to+access+shared+mailboxes%22%7D%2C%7B%22buttonText%22%3A%22None+of+these%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22PRB0040192%3A+Intermittent+email+delivery+delays%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Got+it.+I%27ll+link+this+change+request+to+problem+%3Cb%3EPRB0040192%3C%2Fb%3E.+What+is+the+reason+for+the+change+and+what+is+the+implementation+plan%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22The+reason+is+to+increase+server+memory+to+handle+peak+load.+The+plan+is+to+schedule+a+maintenance+window+for+Saturday+at+10+PM%2C+apply+the+memory+upgrade%2C+and+monitor+performance+for+2+hours+post-change.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I%27m+ready+to+submit+the+change+request+in+%3Cb%3EServiceNow%3C%2Fb%3E.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAssociated+Problem%3A%3C%2Fb%3E+PRB0040192%3C%2Fli%3E%3Cli%3E%3Cb%3EReason+for+change%3A%3C%2Fb%3E+Increase+server+memory+to+handle+peak+load.%3C%2Fli%3E%3Cli%3E%3Cb%3EImplementation+plan%3A%3C%2Fb%3E+Schedule+a+maintenance+window+for+Saturday+at+10+PM%2C+apply+the+memory+upgrade%2C+and+monitor+performance+for+2+hours+post-change.%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EShall+I+proceed%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit+Change+Request%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Submit+Change+Request%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+change+request+from+problem+PRB0040192+in+ServiceNow%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Done%21+I%27ve+submitted+change+request+%3Cb%3ECHG0070221%3C%2Fb%3E%2C+which+is+now+linked+to+problem+%3Cb%3EPRB0040192%3C%2Fb%3E.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22CHG0070221%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

Ensure the following permissions are granted:

- **Table Access**: `Read` access to the `problem` table and `Create` access to the `change_request` table
- **Field Access**: `Read` access to the necessary problem fields and `Write` access to fields required for creating a change request

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### API #1: Get Problem Record by Number

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem?sysparm_query=number={{problem_number}}&sysparm_fields=sys_id,number,short_description,description,state,problem_state,priority,impact,urgency,category' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `number` (string) – A specific **Problem number** to search for in the `problem` table.
- `sysparm_fields` (string) – Fields to include in the response.

### API #2: Get Problem Records by Description

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/problem?sysparm_query=descriptionLIKE{{description}}&sysparm_fields=sys_id,number,short_description,description,state,problem_state,priority,impact,urgency,category' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `description` (string) – A keyword or phrase to match against the problem's description field
- `sysparm_fields` (string) – Fields to include in the response.

### API #3: Create a Change Request from a Problem

```bash
curl --location 'https://<YOUR_DOMAIN>/api/now/table/change_request' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "{{short_description}}",
  "reason": "{{reason}}",
  "implementation_plan": "{{implementation_plan}}"
}'
```

**Request Body Fields:**

- `short_description` (string) – A brief summary of the change request
- `reason` (string) – The reason for initiating the change
- `implementation_plan` (string) – The plan detailing how the change will be implemented

### **API #4: Link Change Request with Problem**

```bash
curl --request PATCH --url 'https://<YOUR_DOMAIN>/api/now/table/change_request/{{change_req_sys_id}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data-raw '{
  "parent": "{{problem_sys_id}}"
}'
```

**Path Parameters:**

- `change_req_sys_id` (string) – Sys ID of the Change Request record to link.

**Request Body Parameters:**

- `problem_sys_id` (string) – Sys ID of the **Problem** record to associate as the parent of the change request

### API #5: Link Problem with Change Request

```bash
curl --request PATCH --url 'https://dev265898.service-now.com/api/now/table/problem/{{problem_sys_id}}' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data-raw '{
  "rfc": "{{change_req_sys_id}}"
}'
```

**Path Parameters:**

- `problem_sys_id` (string) – Sys ID of the **Problem** record to update.

**Request Body Parameters:**

- `rfc` (string) – Sys ID of the **Change Request** to link with the Problem.