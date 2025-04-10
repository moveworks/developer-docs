---
description: A plugin that helps employees view pending timesheet approvals.
fidelity: GUIDE
name: Lookup pending Timesheet approvals
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+show+me+my+pending+timesheet+approvals%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELet+me+fetch+your+pending+timesheet+approvals.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+your+pending+timesheet+approvals%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22Employee+Name%5CnJohn+Doe%5CnEmily+Smith%5CnMichael+Brown%5Cn%5CnWeek+Ending%5Cn01%2F15%2F2023%5Cn01%2F15%2F2023%5Cn01%2F15%2F2023%5Cn%5CnHours+Submitted%5Cn40%5Cn38%5Cn42%5Cn%5CnStatus%5CnPending%5CnPending%5CnPending%22%2C%22title%22%3A%22Pending+Timesheet+Approvals%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+approve+any+of+these+timesheets+now%2C+or+do+you+need+more+details+on+a+specific+one%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+more+details+for+John+Doe%27s+timesheet%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%21+Here+are+the+details+for+John+Doe%27s+timesheet+ending+on+01%2F15%2F2023%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22Date%5Cn01%2F09%2F2023%5Cn01%2F10%2F2023%5Cn01%2F11%2F2023%5Cn01%2F12%2F2023%5Cn01%2F13%2F2023%5Cn%5CnHours+Logged%5Cn8%5Cn8%5Cn8%5Cn8%5Cn8%5Cn%5CnDescription%5CnProject+A+-+Development%5CnProject+A+-+Development%5CnProject+B+-+Meetings%5CnProject+B+-+Research%5CnProject+A+-+Testing%22%2C%22title%22%3A%22John+Doe+Timesheet+Details%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+approve+or+reject+this+timesheet%2C+or+do+you+need+further+assistance%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
systems:
- sap-success-factors
---

# **Introduction :**

The **SAP_Lookup_Pending_Timesheet_Approval** plugin allows users to retrieve a list of timesheets information pending for approval from SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access timesheet information of user.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio
- [SAP Successfactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP Successfactors Authentication guide to create your connector)

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+show+me+my+pending+timesheet+approvals%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELet+me+fetch+your+pending+timesheet+approvals.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+are+your+pending+timesheet+approvals%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22Employee+Name%5CnJohn+Doe%5CnEmily+Smith%5CnMichael+Brown%5Cn%5CnWeek+Ending%5Cn01%2F15%2F2023%5Cn01%2F15%2F2023%5Cn01%2F15%2F2023%5Cn%5CnHours+Submitted%5Cn40%5Cn38%5Cn42%5Cn%5CnStatus%5CnPending%5CnPending%5CnPending%22%2C%22title%22%3A%22Pending+Timesheet+Approvals%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+approve+any+of+these+timesheets+now%2C+or+do+you+need+more+details+on+a+specific+one%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+more+details+for+John+Doe%27s+timesheet%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%21+Here+are+the+details+for+John+Doe%27s+timesheet+ending+on+01%2F15%2F2023%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22Date%5Cn01%2F09%2F2023%5Cn01%2F10%2F2023%5Cn01%2F11%2F2023%5Cn01%2F12%2F2023%5Cn01%2F13%2F2023%5Cn%5CnHours+Logged%5Cn8%5Cn8%5Cn8%5Cn8%5Cn8%5Cn%5CnDescription%5CnProject+A+-+Development%5CnProject+A+-+Development%5CnProject+B+-+Meetings%5CnProject+B+-+Research%5CnProject+A+-+Testing%22%2C%22title%22%3A%22John+Doe+Timesheet+Details%22%2C%22connectorName%22%3A%22sap-success-factors%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+to+approve+or+reject+this+timesheet%2C+or+do+you+need+further+assistance%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Approve%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Reject%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **SAP successfactors Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **SAP_Lookup_Pending_Timesheet_Approval** plugin in minutes.

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# **Appendix**

### **API #1: Fetch Pending Timesheet for Approval**

The **SAP_Lookup_Pending_Timesheet_Approval**  API retrieves a userId using user email.

```bash
curl --location '<API_SERVER>/odata/v2/EmployeeTimeSheet?%24filter=approvalStatus%20eq%20%27PENDING_APPROVAL%27&%24select=approvalStatus%2Cperiod%2CrecordedHoursAndMinutes%2CplannedHoursAndMinutes%2CexternalCode%2CuserId%2CendDate&%24orderby=startDate%20desc' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- $filter (string) **** – Filter items by property values
- $select (array[string]) – Select properties to be returned
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip
- $orderby (array[string]) – Order items by property values