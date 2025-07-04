---
description: A plugin that lets a user assign a delegate during their PTO / time away
  from work.
fidelity: GUIDE
name: Assign a Delegate
difficulty_level: INTERMEDIATE 
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+assign+a+delegate+for+tasks+during+my+PTO.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it.+Please+provide+your+delegate%27s+name+and+your+PTO+dates.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Delegate+is+Sam+Taylor%2C+PTO+is+from+August+15+to+August+30.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracting%3A+Delegate+name+-+Sam+Taylor%2C+PTO+Start+Date+-+August+15%2C+PTO+End+Date+-+August+30.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+multiple+people+named+Sam+Taylor.+Which+one+are+you+referring+to%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ESam+Taylor+-+IT+Support%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ESam+Taylor+-+IT+Security%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESam+Taylor+-+IT+Support%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+to+confirm%3A+You%27re+setting+Sam+Taylor+from+IT+Support+as+your+delegate+for+ITSM+tasks+from+August+15+to+August+30.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EDelegate+Confirmation%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDelegate%3A+%3C%2Fb%3ESam+Taylor+-+IT+Support%3Cbr%3E%3Cb%3EPTO+Start%3A+%3C%2Fb%3EAugust+15%3Cbr%3E%3Cb%3EPTO+End%3A+%3C%2Fb%3EAugust+30%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow

---

# **Introduction:**

The **Assign a Delegate** plugin enables seamless assignment of ITSM tasks and approvals to delegates during employee absences through the Moveworks AI Assistant. Users can quickly designate a delegate, set PTO dates, and specify task scope—allowing uninterrupted workflow without manual ServiceNow configuration.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes.

Let’s get started!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+need+to+assign+a+delegate+for+tasks+during+my+PTO.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it.+Please+provide+your+delegate%27s+name+and+your+PTO+dates.%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Delegate+is+Sam+Taylor%2C+PTO+is+from+August+15+to+August+30.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Extracting%3A+Delegate+name+-+Sam+Taylor%2C+PTO+Start+Date+-+August+15%2C+PTO+End+Date+-+August+30.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+multiple+people+named+Sam+Taylor.+Which+one+are+you+referring+to%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ESam+Taylor+-+IT+Support%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ESam+Taylor+-+IT+Security%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESam+Taylor+-+IT+Support%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+to+confirm%3A+You%27re+setting+Sam+Taylor+from+IT+Support+as+your+delegate+for+ITSM+tasks+from+August+15+to+August+30.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EDelegate+Confirmation%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDelegate%3A+%3C%2Fb%3ESam+Taylor+-+IT+Support%3Cbr%3E%3Cb%3EPTO+Start%3A+%3C%2Fb%3EAugust+15%3Cbr%3E%3Cb%3EPTO+End%3A+%3C%2Fb%3EAugust+30%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Confirm%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Details%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) guide to configure the connection.

For this plugin, ensure the user has the following permissions:

**Required Permissions:**

- **Read access**
    - to table: `sys_user_delegate`
- **Read access**
    - to table: `sys_user`

> Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.
> 

# **Appendix**

### **API #1: Get User Details by User email**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_user?sysparm_query=email%3D<USER_EMAIL>&sysparm_fields=name%2Cemail%2Cemployee_number'\
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `USER_EMAIL`(string) – Email address is used to retrieve the user details.

### **API #2: Assign a Delegate**

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/sys_user_delegate' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
    "user": "{{user}}",
    "delegate": "{{delegate}}",
    "starts": "{{starts}}",
    "ends": "{{ends}}",
    "approvals": {{approvals}},
    "assignments": {{assignments}},
    "all_notifications": {{all_notifications}},
    "meeting_invitations": {{meeting_invitations}}
}'
```

**Request Body Fields:**

- `user` (string) - Sys_ID of the user delegating permissions
- `delegate` (string) - Sys_ID of the delegate receiving permissions
- `starts` (date) - Delegation start date (YYYY-MM-DD format)
- `ends` (date) - Delegation end date (YYYY-MM-DD format)
- `approvals` (boolean) - Whether to delegate approval tasks
- `assignments` (boolean) - Whether to delegate assigned tickets
- `all_notifications` (boolean) - Whether to delegate all notifications
- `meeting_invitations` (boolean) - Whether to delegate calendar invites