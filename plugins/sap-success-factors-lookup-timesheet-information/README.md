---
availability: INSTALLABLE
description: A plugin that lookups timesheet information based of a project.
installation_asset_uuid: 652ff248-65c9-4c3d-b1ec-78ebcba64c38
name: Lookup Timesheet Information
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+pull+my+timesheet+data+for+project+Hydrogen%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3EPull+Timesheet+Data%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ELookup+Time+Sheet+Information%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22You%27ve+spent+%3Cb%3E120+hours%3C%2Fb%3E+on+project+Hydrogen+this+month.+Do+you+need+detailed+timesheet+entries+or+any+other+project+data%3F%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Time & Absence
systems:
- sap-success-factors
---

# **Introduction :**

The **Lookup Timesheet Information** plugin allows users to retrieve a list of timesheet records from SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access their own timesheet information.

This guide will help you install and configure the plugin in **Agent Studio** within minutes. 

Let’s get started!

# Prerequisites :

- Access to Agent Studio

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%26nbsp%3BMay+I+view+my+timesheet+information%3F%26nbsp%3B%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cstrong%3ETimesheet+Data%3C%2Fstrong%3E%3Cbr%3E%5Cn%E2%8F%B3+Calling+Plugin+%3Cstrong%3ELookup+Time+Sheet+Information%3C%2Fstrong%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3E%3Cstrong%3E1.+Recent+Approved+Timesheets%3A%3C%2Fstrong%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3E%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B-+Period%3A%3C%2Fstrong%3E+01%2F08%2F2024+-+01%2F14%2F2024%2C+%3Cstrong%3EHours%3A%3C%2Fstrong%3E+40%3A00%2C+%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Approved+%26nbsp%3B%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B-%3Cstrong%3E+Period%3A%3C%2Fstrong%3E+01%2F22%2F2024+-+01%2F28%2F2024%2C+%3Cstrong%3EHours%3A%3C%2Fstrong%3E+40%3A00%2C+%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Approved+%26nbsp%3B%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3E%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B-+Period%3A%3C%2Fstrong%3E+01%2F29%2F2024+-+02%2F04%2F2024%2C+%3Cstrong%3EHours%3A%3C%2Fstrong%3E+40%3A00%2C+%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Approved%3C%2Fp%3E%5Cn%3Cp%3E%3Cbr%3E%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3E2.+Pending+Timesheets%3A+%3C%2Fstrong%3E%26nbsp%3B%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3E%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B-+Period%3A%3C%2Fstrong%3E+03%2F04%2F2024+-+03%2F10%2F2024%2C+%3Cstrong%3EHours%3A%3C%2Fstrong%3E+40%3A00%2C+%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Pending+%26nbsp%3B%26nbsp%3B%3C%2Fp%3E%5Cn%3Cp%3E%3Cstrong%3E%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B%26nbsp%3B-+Period%3A%3C%2Fstrong%3E+03%2F11%2F2024+-+03%2F17%2F2024%2C+%3Cstrong%3EHours%3A%3C%2Fstrong%3E+40%3A00%2C+%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Pending%26nbsp%3B%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**SAP SuccessFactors Connector Guide**](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP SuccessFactors integration user has the following permissions:

**Required Scopes:**

- `View` access to the **User** entity

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

# **Appendix**

## API #1: Get UserId By Email

The **Get UserId By Email** API retrieves a userId using user email.

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27%20&%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2C%20username%2CassignmentUUID%2Cmanager' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Query Parameters :**

- $filter (string) – Filter items by property values. Use this to filter the user by email.
    - `<email>`  (string) – The email of the user whose timesheet information you want to retrieve. This would be provided user ID of the user.
- $select (array[string]) – Select properties to be returned
- $top (integer) – Show only the first n items

## API #2: **Fetch Timesheet Information using UserId**

```bash
curl --request GET
--location '<API_SERVER>/odata/v2/User('\''<userId>'\'')/userIdOfEmployeeTimeSheetNav?%24top=10&%24skip=5&%24expand=employeeTimeSheetEntry&%24select=approvalStatus%2Cperiod%20%2CrecordedHoursAndMinutes%2CplannedHoursAndMinutes%2CexternalCode&%24orderby=period%20desc' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

```

**Path Parameters:**

- `<userId>` (integer) – The userId of the user whose timesheet you want to retrieve. This would be provided list of timesheet information of the user.

**Query Parameters :**

- $expand (array[string]) – Expand related entities
- $select (array[string]) – Select properties to be returned,
- $orderby (array[string]) – Order items by property values
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip