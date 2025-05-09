---
description: A plugin that allows to fetch the payroll information of an employee.
fidelity: GUIDE
name: View Payroll Information
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+help+me+view+payroll+information+for+an+employee%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27d+be+happy+to+assist+you.+Let+me+first+check+if+you+have+the+necessary+permissions+to+view+payroll+information.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+user+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+You+have+the+appropriate+permissions.+Please+provide+the+employee%27s+name+or+ID+whose+payroll+information+you+wish+to+view.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+view+the+payroll+information+for+John+Doe.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+payroll+information+for+John+Doe.+One+moment%2C+please.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+payroll+information...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+is+the+payroll+information+for+John+Doe%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn%5C%22Employee+Name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn%5C%22Employee+ID%5C%22%3A+%5C%2212345%5C%22%2C%5Cn%5C%22Position%5C%22%3A+%5C%22Senior+Developer%5C%22%2C%5Cn%5C%22Department%5C%22%3A+%5C%22Information+Technology%5C%22%2C%5Cn%5C%22Base+Salary%5C%22%3A+%5C%22%2490%2C000+per+annum%5C%22%2C%5Cn%5C%22Pay+Frequency%5C%22%3A+%5C%22Bi-weekly%5C%22%2C%5Cn%5C%22Last+Payment+Date%5C%22%3A+%5C%22October+15%2C+2023%5C%22%2C%5Cn%5C%22Last+Payment+Amount%5C%22%3A+%5C%22%243%2C461.53%5C%22%5Cn%7D%22%2C%22caption%22%3A%22Payroll+Information%22%2C%22connectorName%22%3A%22sap-success-factors%22%2C%22title%22%3A%22Payroll%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+more+information+or+details+on+another+employee%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
systems:
- sap-success-factors

---

# **Introduction :**

The **View Payroll Information** plugin allows users to view employee’s payroll information in SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly and easily access their pay details to stay informed and ensure transparency in their compensation records.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

# Prerequisites :

- Access to Agent Studio
- [SAP Successfactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP  Successfactors  Authentication guide to create your connector)

# What are we building?

## **Agent Design**

This [purple chat]( https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+help+me+view+payroll+information+for+an+employee%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI%27d+be+happy+to+assist+you.+Let+me+first+check+if+you+have+the+necessary+permissions+to+view+payroll+information.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+user+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great%21+You+have+the+appropriate+permissions.+Please+provide+the+employee%27s+name+or+ID+whose+payroll+information+you+wish+to+view.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+view+the+payroll+information+for+John+Doe.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+payroll+information+for+John+Doe.+One+moment%2C+please.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+payroll+information...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Here+is+the+payroll+information+for+John+Doe%3A%22%7D%2C%7B%22apiBlock%22%3A%7B%22code%22%3A%22%7B%5Cn%5C%22Employee+Name%5C%22%3A+%5C%22John+Doe%5C%22%2C%5Cn%5C%22Employee+ID%5C%22%3A+%5C%2212345%5C%22%2C%5Cn%5C%22Position%5C%22%3A+%5C%22Senior+Developer%5C%22%2C%5Cn%5C%22Department%5C%22%3A+%5C%22Information+Technology%5C%22%2C%5Cn%5C%22Base+Salary%5C%22%3A+%5C%22%2490%2C000+per+annum%5C%22%2C%5Cn%5C%22Pay+Frequency%5C%22%3A+%5C%22Bi-weekly%5C%22%2C%5Cn%5C%22Last+Payment+Date%5C%22%3A+%5C%22October+15%2C+2023%5C%22%2C%5Cn%5C%22Last+Payment+Amount%5C%22%3A+%5C%22%243%2C461.53%5C%22%5Cn%7D%22%2C%22caption%22%3A%22Payroll+Information%22%2C%22connectorName%22%3A%22sap-success-factors%22%2C%22title%22%3A%22Payroll%22%7D%7D%2C%7B%22richText%22%3A%22Would+you+like+more+information+or+details+on+another+employee%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in Agent Studio beforehand to streamline the process. Please follow our [SAP Successfactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) Guide to do so. Once completed, follow our plugin installation documentation to install the  **View Payroll Information** plugin in minutes

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# **Appendix**

## API #1: **Fetch an employee payroll information using User displayName**

The **View Payroll Information** API retrieves a payroll information of an employee using displayName.

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24select=firstName%2ClastName%2CdisplayName%2CempId%2CjobTitle%2CjobLevel%2Cdepartment%2Csalary%2CcompensationSalaryRateType%2Cstatus&%24filter=displayName%20eq%20<displayName>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Path Parameters:**

- `<displayName>` (string) – The displayName of the user whose payroll information you want to retrieve.

**Query Parameters :**

- $filter (string) ****– Filter items by property values
- $select (array[string]) – Select properties to be returned
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip