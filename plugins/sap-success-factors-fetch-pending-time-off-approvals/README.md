---
availability: INSTALLABLE
description: A plugin that allows managers to quickly view and manage pending time
  off approvals, ensuring efficient decision-making and maintaining workforce availability
  within the organization.
installation_asset_uuid: 108be6fa-8b36-4b01-878e-77103b68cf24
name: Fetch Pending Time Off Approvals
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+pending+time+off+requests%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+pending+time+off+requests+from+your+direct+reports%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+1%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Alex+Johnson%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Vacation%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+10+-+May+14%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Family+trip%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+2%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Emily+White%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Sick+Leave%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+15%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Flu%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EWhich+time+off+requests+would+you+like+to+approve+or+reject%3F+Please+list+the+employee+names+separated+by+commas.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Approvals
- HR - Other
- HR - Time & Absence
systems:
- sap-success-factors
---

# **Introduction :**

The “**Fetch Pending Time Off Approvals”** plugin allows users to retrieve a list of pending time off approvals from SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access and review time off requests awaiting their approval.

This guide will help you install and configure the plugin in Agent Studio within minutes. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+pending+time+off+requests%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+pending+time+off+requests+from+your+direct+reports%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+1%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Alex+Johnson%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Vacation%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+10+-+May+14%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Family+trip%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3ETime+Off+Request+2%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cb%3EEmployee%3A%3C%2Fb%3E+Emily+White%3Cbr%3E%3Cb%3ERequest+Type%3A%3C%2Fb%3E+Sick+Leave%3Cbr%3E%3Cb%3EDates%3A%3C%2Fb%3E+May+15%3Cbr%3E%3Cb%3EReason%3A%3C%2Fb%3E+Flu%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cp%3EWhich+time+off+requests+would+you+like+to+approve+or+reject%3F+Please+list+the+employee+names+separated+by+commas.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=sap-success-factors&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- `View` access to the **User** and **Time Off** entity

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: **Fetch Manager’s UserId using User Email**

The **Fetch Manager’s UserId using User Email** API retrieves a userId using user email.

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27%20&%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2C%20username%2CassignmentUUID%2Cmanager&%24expand=manager' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters**

- `<email>` (string) – The email of the user whose userId you want to retrieve.
- $filter (string) ****– Filter items by property values
- $expand (array[string]) ****– Expand related entities
- $select (array[string]) – Select properties to be returned
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip

## API #2: **Fetch Direct reports userIds using Manager’s UserId**

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24filter=manager%2FuserId%20eq%20%27<Manager_userId>%27&%24select=userId%2CdisplayName' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

```

**Query Parameters:**

- `<Manager_userId>`(integer) – The userId of the Manager whose direct Report’s userIds you want to retrieve. This would be provided list of userIds for the direct Reports.
- $select (array[string]) – Select properties to be returned,
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip

## API #3: **Fetch Pending Time Off Approvals using** direct Report’s **UserId**

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/EmployeeTime?%24filter=(userId%20eq%20%27<userId>%27)%20and%20approvalStatus%20eq%20%27PENDING%27%20and%20(timeType%20eq%20%27TT_SICK_REC%27%20or%20timeType%20eq%20%27TT_VAC_REC%27%20or%20timeType%20eq%20%27TT_MATERNITY%27%20or%20timeType%20eq%20%27TT_PTO%27%20or%20timeType%20eq%20%27JURY%27%20or%20timeType%20eq%20%27LOATT%27%20or%20timeType%20eq%20%27LTDTT1%27%20or%20timeType%20eq%20%27STD%27%20or%20timeType%20eq%20%27Absc_OpenEnd%27%20or%20timeType%20eq%20%27TOIL_TT%27)&%24select=userId%2CstartDate%2CendDate%2CtimeTypeNav%2FexternalCode%2CtimeTypeNav%2FexternalName_defaultValue%2CapprovalStatus%2CuserIdNav%2FdefaultFullName%2CuserIdNav%2Fcountry&%24expand=userIdNav%2CtimeTypeNav' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- `<userId>`(integer) – The userId of the direct report whose pending time off approvals you want to retrieve. This will return a list of pending time off requests awaiting approval.
- $select (array[string]) – Select properties to be returned,
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip