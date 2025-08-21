---
availability: IDEA
description: A plugin that allows users to create a new follow-up task for a lead.
domain:
- Sales
fidelity: GUIDE
name: Create a Follow-Up Task for a Lead
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Create+a+Salesforce+task+for+a+lead.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFinding+your+active+leads+in+%3Cb%3ESalesforce%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay.+Here+is+a+list+of+your+active+leads.+Which+one+is+this+task+for%3F%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EMichael+Johnson+-+Apex+Solutions%3C%2Fli%3E%3Cli%3ESarah+Davis+-+Global+Exports+Inc.%3C%2Fli%3E%3Cli%3EChris+Martinez+-+Innovatech+Builders%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%222%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it%2C+this+task+is+for+%3Cb%3ESarah+Davis%3C%2Fb%3E.+What+should+the+subject+of+the+task+be%3F+%28e.g.%2C+%27Follow+up+on+proposal%27%2C+%27Send+pricing+info%27%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Follow+up+on+proposal%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhen+should+this+task+be+due%3F+You+can+say+things+like+%27Tomorrow%27%2C+%27Friday%27%2C+or+a+specific+date+like+%27August+15%27.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Tomorrow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlease+review%3A+I+will+create+a+task+to+%3Cb%3E%27Follow+up+on+proposal%27%3C%2Fb%3E+for+the+lead+%3Cb%3ESarah+Davis%3C%2Fb%3E%2C+due+%3Cb%3Etomorrow%2C+August+13%2C+2025%3C%2Fb%3E.+Is+this+correct%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDone.+I+have+created+the+new+task+in+Salesforce+and+linked+it+to+Sarah+Davis.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Task%3A+Follow+up+on+proposal%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce

---
# Create a Follow-up Task for a Lead

## **Introduction**

The **“Create a Follow-up Task for a Lead”** plugin makes it easy to schedule follow-up tasks for your sales leads directly in the Moveworks AI Assistant. You just provide the key details—like the task subject, due date, and lead ID—and the plugin will automatically create a task for you. This ensures no lead is missed, helps sales teams stay organized, and improves follow-ups without the need for manual work.

This guide will show you how to quickly set up and customize the plugin in Agent Studio. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design:-**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Create+a+Salesforce+task+for+a+lead.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EFinding+your+active+leads+in+%3Cb%3ESalesforce%3C%2Fb%3E%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EOkay.+Here+is+a+list+of+your+active+leads.+Which+one+is+this+task+for%3F%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3EMichael+Johnson+-+Apex+Solutions%3C%2Fli%3E%3Cli%3ESarah+Davis+-+Global+Exports+Inc.%3C%2Fli%3E%3Cli%3EChris+Martinez+-+Innovatech+Builders%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%222%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EGot+it%2C+this+task+is+for+%3Cb%3ESarah+Davis%3C%2Fb%3E.+What+should+the+subject+of+the+task+be%3F+%28e.g.%2C+%27Follow+up+on+proposal%27%2C+%27Send+pricing+info%27%29%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Follow+up+on+proposal%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EWhen+should+this+task+be+due%3F+You+can+say+things+like+%27Tomorrow%27%2C+%27Friday%27%2C+or+a+specific+date+like+%27August+15%27.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Tomorrow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EPlease+review%3A+I+will+create+a+task+to+%3Cb%3E%27Follow+up+on+proposal%27%3C%2Fb%3E+for+the+lead+%3Cb%3ESarah+Davis%3C%2Fb%3E%2C+due+%3Cb%3Etomorrow%2C+August+13%2C+2025%3C%2Fb%3E.+Is+this+correct%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EDone.+I+have+created+the+new+task+in+Salesforce+and+linked+it+to+Sarah+Davis.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Task%3A+Follow+up+on+proposal%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the  [Salesforce Connector](https://marketplace.moveworks.com/connectors/salesforce#how-to-implement) guide to set up the connector.

**Object Access**:

- `Read` and `Create` access to the **Task** object
- `Read` access to the **Lead** object

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

### **API #1 : Salesforce Leads Active List By Email**

```bash
curl --location 'https://<your-instance>/services/data/vXX.X/query/?q=SELECT+Id,+Name,+Company,+Email,+Status,+LastModifiedDate+FROM+Lead+WHERE+Email+=+%27{{email}}%27+AND+Status+IN+(%27Open+-+Not+Contacted%27,%27Working+-+Contacted%27)+ORDER+BY+LastModifiedDate+DESC' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>'
```

**Query Parameters:**

- `{{email}}` - Show the active leads list for a user by email

### **API #2 : Create Task from Salesforce Leads**

```bash
curl --location 'https://<your-instance>/services/data/vXX.X/sobjects/Task/' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
"Subject": "{{Subject}}",
"WhoId": "{{LeadId}}",
"ActivityDate": "{{date}}"
}'
```

**** **Request Body Parameters:**

- `{{Subject}}`  - The user can provide the subject name for the task.
- `{{LeadId}}`  - Retrieves the active lead based on the user’s input and fetches its ID.
- `{{date}}`  - The user can specify the due date for the task.