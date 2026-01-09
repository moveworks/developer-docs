---
availability: VALIDATED
description: A plugin that enables users to look up & approve or deny purchase requisitions.
name: Approve Pending Purchase Requisitions
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+New+approvals+detected+while+polling+Ariba%27s+Approval+v2+API%3Cbr%3E2.+Middleware+initiated+trigger+%28polling+every+60+seconds%29%3Cbr%3E%3Cbr%3E%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprovable+ID%3C%2Fi%3E+%3A+required+for+API+actions+to+work%3Cbr%3E2.+%3Ci%3EUsername%3C%2Fi%3E+%3A+required+for+API+actions+to+work%3Cbr%3E%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprove%3C%2Fi%3E%3A+Approve+and+move+report+to+next+approver+in+report+chain%3Cbr%3E2.+%3Ci%3EDeny+report%3C%2Fi%3E%3A+Deny+requisition+and+move+record+back+to+previous+approver+or+owner%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHi+Jamie%2C%3Cbr%3E%3Cbr%3E%3Cb%3ENew+Purchase+Requisition+pending+your+approval%3C%2Fb%3E%3A%3Cbr%3E-+%3Ci%3EName%3C%2Fi%3E+%3A+Office+supplies+for+new+employees%3Cbr%3E-+%3Ci%3ERequested+on%3C%2Fi%3E+%3A+Aug+10%2C+2024%3Cbr%3E-+%3Ci%3ERequested+by%3C%2Fi%3E%3A+Sam+Stinson%3Cbr%3E-+%3Ci%3ETotal+Cost%3C%2Fi%3E+%3A+USD+341.07%3Cbr%3E-+%3Ci%3ELine+Items%3C%2Fi%3E+%3A%3Cbr%3E++++Item+1%3A+Logitech+Webcam%3Cbr%3E++++Item+2%3A+Jarvis+Standing+Desk%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22Choose+to+approve+or+deny+the+request+for+%3Cb%3ESam+Stinson%3C%2Fb%3E+for+the+%3Cb%3EOffice+supplies%3C%2Fb%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Approve%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Deny%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Approvals
- Finance - Other
- Finance - Procurement
systems:
- sap-ariba
video: https://youtu.be/ed2SQiEkcAA
---

# **Approve / Reject Purchase Requisitions with your Copilot**

Approve or deny your pending purchase requisitions in SAP Ariba on time using your Copilot and simplify administrative workflows at your organization.

Let’s dive in!

# **Prerequisites**

1. Follow the [SAP Ariba Connector guide](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-ariba) to configure the OAuth Application on your Ariba instance.
2. Use [Moveworks Setup](https://help.moveworks.com/docs/ingest-users) to synchronize your employees' work email from your IDAM to Moveworks.
    - Follow [this guide](https://help.moveworks.com/docs/ingest-users#configuring-user-ingestions) to configure your connector and ingestion settings in [Moveworks Setup](https://help.moveworks.com/docs/ingest-users)
3. [Enable Requisitions for External Approvals](#enable-requisitions-for-external-approvals-required)
4. Review [how to implement a Creator Studio guide with your team](https://developer.moveworks.com/creator-studio/program-management/planning/#how-to-implement-a-creator-studio-guide).
5. Connect your middleware and APIM tools with Creator Studio using a [connector](https://developer.moveworks.com/creator-studio/integrations/outbound/connector-configuration/).

# **Conversation Design**

[This purple chat mock](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A3519%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3ETriggers%3C%2Fb%3E%3Cbr%3E1.+New+approvals+detected+while+polling+Ariba%27s+Approval+v2+API%3Cbr%3E2.+Middleware+initiated+trigger+%28polling+every+60+seconds%29%3Cbr%3E%3Cbr%3E%3Cb%3ESlots%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprovable+ID%3C%2Fi%3E+%3A+required+for+API+actions+to+work%3Cbr%3E2.+%3Ci%3EUsername%3C%2Fi%3E+%3A+required+for+API+actions+to+work%3Cbr%3E%3Cb%3EActions%3C%2Fb%3E%3Cbr%3E1.+%3Ci%3EApprove%3C%2Fi%3E%3A+Approve+and+move+report+to+next+approver+in+report+chain%3Cbr%3E2.+%3Ci%3EDeny+report%3C%2Fi%3E%3A+Deny+requisition+and+move+record+back+to+previous+approver+or+owner%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22Bot%22%2C%22text%22%3A%22%3Cp%3EHi+Jamie%2C%3Cbr%3E%3Cbr%3E%3Cb%3ENew+Purchase+Requisition+pending+your+approval%3C%2Fb%3E%3A%3Cbr%3E-+%3Ci%3EName%3C%2Fi%3E+%3A+Office+supplies+for+new+employees%3Cbr%3E-+%3Ci%3ERequested+on%3C%2Fi%3E+%3A+Aug+10%2C+2024%3Cbr%3E-+%3Ci%3ERequested+by%3C%2Fi%3E%3A+Sam+Stinson%3Cbr%3E-+%3Ci%3ETotal+Cost%3C%2Fi%3E+%3A+USD+341.07%3Cbr%3E-+%3Ci%3ELine+Items%3C%2Fi%3E+%3A%3Cbr%3E++++Item+1%3A+Logitech+Webcam%3Cbr%3E++++Item+2%3A+Jarvis+Standing+Desk%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22text%22%3A%22Choose+to+approve+or+deny+the+request+for+%3Cb%3ESam+Stinson%3C%2Fb%3E+for+the+%3Cb%3EOffice+supplies%3C%2Fb%3E%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Approve%22%7D%2C%7B%22text%22%3A%22Deny%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Design Questions to Consider**

1. What fields would you like to show inside the approval request notification?
2. Which actions would you like the approver to be able to take on the notification?

# SAP Ariba Configuration

- Please review the [SAP Ariba Connector guide](https://developer.moveworks.com/creator-studio/resources/connector?id=sap-ariba) to configure the OAuth Application on your Ariba instance.

### **Enable Requisitions for External Approvals** (Required)
    
In order to configure external approvals, please follow the following steps:

1. Log in to your SAP Ariba site using your administrator username and password.
2. On the dashboard, choose **Manage →** **Core Administration**
    
    ![Untitled](Approve%20Pending%20Purchase%20Requisitions%204a957d7afd3d46a1b29af4ac9c4b9854/Untitled.png)
    
3. Click **Intelligent Configuration Manager**
    
    ![Untitled](Approve%20Pending%20Purchase%20Requisitions%204a957d7afd3d46a1b29af4ac9c4b9854/Untitled%201.png)
    
4. Then select **Manage Configurations**
    
    ![Untitled](Approve%20Pending%20Purchase%20Requisitions%204a957d7afd3d46a1b29af4ac9c4b9854/Untitled%202.png)
    
5. On the **Welcome to Intelligent Configuration Manager** page, click **Continue** to go to the Intelligent Configuration Manager home page.
6. Once you have accessed the Intelligent Configuration Manager then **Create Package**
    
    ![Untitled](Approve%20Pending%20Purchase%20Requisitions%204a957d7afd3d46a1b29af4ac9c4b9854/Untitled%203.png)
    
7. Search for the **Application.Approvable.AllowedForExternalApproval** parameter and add **ariba.purchasing.core.Requisition** as the value
    
    ![Untitled](Approve%20Pending%20Purchase%20Requisitions%204a957d7afd3d46a1b29af4ac9c4b9854/Untitled%204.png)
    
8. Click on Add to package
Once done, you should see the package on the home screen of the Intelligent Configuration Manager and we should now be able to enable external approvals.
    
    ![Untitled](Approve%20Pending%20Purchase%20Requisitions%204a957d7afd3d46a1b29af4ac9c4b9854/Untitled%205.png)
    

For more information, you can check out the **How to configure your procurement solution to use the Document Approval API** section of SAP’s [Document Approval API documentation](https://help.sap.com/doc/913d7efbe6054024b721feab8cff9843/cloud/en-US/e97e7e3d636d4549bbe1f04368a92dbf.pdf#page=6) (pages 6-7).
    

# **For Creator Studio Developers**

## **Step 1: Check if you have built a Creator Studio Connector for your middleware / APIM tool**

This step was outlined in the [Prerequisites section](#prerequisites) above, and should be completed before you begin building your plugin. If you do not have a connector for your middleware tool, you can learn more about how to build one in our [Connector Configuration Guide](https://developer.moveworks.com/creator-studio/integrations/outbound/connector-configuration/).

## **Step 2: Test required APIs with Postman**

Copy the cURL commands below into your API client like Postman for testing. Substitute any `{{placeholder text}}` with relevant SAP Ariba API credentials or inputs.

**Required APIs**

For Ariba Approvals on procurement records, you will need to create an application that provides Moveworks with the ability to execute REST API requests to the following API:

- **Document Approval API - Version v2 (Active)**  [https://api.sap.com/api/approval_v2/overview](https://api.sap.com/api/approval_v2/overview)


### API 1: Authorization

```bash
curl --location --request POST '{{oauth_server_url_prefix}}/v2/oauth/token?grant_type=openapi_2lo' \
--user '{{ariba_client_id}}:{{ariba_client_secret}}' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header 'APIKey: {{ariba_application_key}}'
```

### API 2: Get all Pending Approvables

```bash
curl --location '{{ariba_api_url}}/approval/v2/{{ariba_env_flag}}/pendingApprovables?realm={{ariba_realm}}' \
--header 'APIKey: {{ariba_api_key}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
```

### API 3: Get Approval details by ID

```bash
curl --location '{{ariba_api_url}}/approval/v2/{{ariba_env_flag}}/{{ariba_approvable_type}}/{{ariba_approvable_id}}?realm={{ariba_realm}}' \
--header 'APIKey: {{ariba_api_key}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
```

The `ariba_approvable_type` here would be `requisitions`

### API 4: Moveworks Events API

Please replace the `email@example.com` with the email address of the user who will receive the notification.

You can get the `{{moveworks_event_id}}` and `{{moveworks_events_api_key}}` from following the quickstart guide [here](https://developer.moveworks.com/creator-studio/quickstart/event-triggered-paths/).

```bash
curl --location --request POST 'https://api.moveworks.ai/rest/v1/events/{{moveworks_event_id}}/messages/send' \
--header 'Authorization: Bearer {{moveworks_events_api_key}}' \
--header 'Content-Type: application/json' \
--data-raw '{
    "message": "💸 New Ariba Purchase Requisition Approval ....\n",
    "recipients": [
        "email@example.com"
    ]
}'
```

We will use this API in our middleware code to send the approval request notification to the respective Owners / Approvers.

### API 5: Approve / Deny an approvable Requisition

```bash
curl --location --request PATCH '{{ariba_api_url}}/approval/v2/{{ariba_env_flag}}/{{ariba_approvable_type}}/{{ariba_approvable_id}}?realm={{ariba_realm}}&user={{username}}&passwordAdapter={{user_login_type}}&approvableType={{ariba_approvable_type}}' \
--header 'APIKey: {{ariba_api_key}}' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer {{access_token}}'
--data '{
   "state": "approve",
   "comment": {
      "text": "string",
      "visibleToSupplier": true
   }
}'
```

- `ariba_env_flag` can be either `prod` or `sandbox`
- `ariba_approvable_type` would be `requisitions` here
- `username` is the username of the approver
- `user_login_type` is the value of the `PasswordAdapter` for a user (for eg., `PasswordAdapter1`)
- The value of `state` within the data payload changes depending on the action:
    - While Approving: `approve`
    - While denying: `deny`
- The comment is optional, you can either have it optional or make it mandatory depending on your middleware code handling.

## Step 3: **Write your Orchestration Code in your Middleware Platform**

The architecture and the middleware code will be very similar to the code mentioned in [Concur Expense Report Approvals](https://developer.moveworks.com/creator-studio/resources/plugin?id=sap-concur-approve-expense-report#step-3-write-your-orchestration-code-in-your-middleware-platform).

The high level overview of the architecture for your middleware code would be:

1. Setup polling for new approvals (by default, every 60 seconds)
    - This is required to retrieve newly submitted purchase requisitions
2. Fetch the details of an approval requisition and format the notification message
3. Send the notification to the approver via the Moveworks Bot with the requisition details and slots to approve or deny it
4. Store approval notifications you have already sent in a database
    - If you don't do this, your employees will get notified every time you poll for new records
5. Actioning on the approvals based on the chosen action (approve/send back)

## **Step 4: Build in Creator Studio**

1. Create a new Event in Creator Studio named "SAP Ariba Purchase Requisition Approvals".
    - Choose to add a follow-up action so that you can approve or deny the purchase requisition.
2. Configure the API Connection:
    - Import the cURL command for the Middleware APIs that you have deployed.
    - Add necessary authorization headers.
3. Design the conversation flow:
    - Ask if the user wants to view pending approvals.
    - Display the requisition details for approval.
    - Provide options to approve or deny.
4. Follow our [Quickstart Guide](https://developer.moveworks.com/creator-studio/quickstart/event-triggered-paths/) to build an event with followup actions in Creator Studio, which can be called from your middleware.

# **Congratulations!**

You've just enabled your employees to manage purchase requisition approvals through your Copilot. This streamlines your Finance administration processes and improves response times. Consider expanding this functionality to other SAP Ariba modules like Purchase Orders for a comprehensive approval management solution.