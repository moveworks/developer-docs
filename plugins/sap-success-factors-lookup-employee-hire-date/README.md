---
description: A plugin that fetches the hiring date of an employee.
fidelity: GUIDE
name: Lookup Employee Hire Date
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+tell+me+the+hire+date+for+another+employee%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+Let+me+first+check+if+you+have+the+necessary+permissions+to+view+other+employees%27+hire+dates.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+user+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22It+looks+like+you+have+the+appropriate+permissions.+Could+you+please+provide+the+employee%27s+name+or+ID%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+know+the+hire+date+for+John+Doe.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+the+hire+date+for+John+Doe.+One+moment%2C+please.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+employee+hire+date...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%27s+hire+date+is+%3Cb%3EJanuary+15%2C+2018%3C%2Fb%3E.%22%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
systems:
- sap-success-factors

---

# **Introduction :**

The **Employee_Hire_Date** plugin allows users to retrieve the hire date of an employee from SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access and review the hire date information for any employee.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

# Prerequisites :

- Access to Agent Studio
- [SAP Successfactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP  Successfactors  Authentication guide to create your connector)

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Hey+Copilot%2C+can+you+tell+me+the+hire+date+for+another+employee%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+Let+me+first+check+if+you+have+the+necessary+permissions+to+view+other+employees%27+hire+dates.%3C%2Fp%3E%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Checking+user+role...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22It+looks+like+you+have+the+appropriate+permissions.+Could+you+please+provide+the+employee%27s+name+or+ID%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I%27d+like+to+know+the+hire+date+for+John+Doe.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Fetching+the+hire+date+for+John+Doe.+One+moment%2C+please.%22%7D%2C%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+employee+hire+date...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22John+Doe%27s+hire+date+is+%3Cb%3EJanuary+15%2C+2018%3C%2Fb%3E.%22%7D%2C%7B%22richText%22%3A%22Is+there+anything+else+I+can+help+you+with%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in Agent Studio beforehand to streamline the process. Please follow our  [SAP Successfactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) Guide to do so. Once completed, follow our plugin installation documentation to install the  **Employee_Hire_Date** plugin in minutes.

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# **Appendix**

## API #1: **Fetch Manager’s UserId using User Email**

The **Employee_Hire_Date** API retrieves a hireDate using user’s diaplayName.

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=displayName%20eq%20%27<displayName>%27&%24select=hireDate' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Path Parameters:**

- `<displayName>` (string) – The displayName of the user whose hire date you want to retrieve. This will provide the hire date of the employee.