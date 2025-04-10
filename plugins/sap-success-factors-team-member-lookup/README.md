---
description: A plugin which allows you to view team members (peers and delegates).
fidelity: GUIDE
name: Look up Team Members
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A4915%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+is+on+my+team%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3ESearches+SAP+Success+Factors+for+relevant+information%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EYou%27re+part+of+an+amazing+team+led+by+%3Cb%3EEllen+Hows%3C%2Fb%3E.+Here+are+your+wonderful+teammates%3A%3Cbr%3E-+Gwen%3Cbr%3E-+Dave%3Cbr%3E-+Ivy%3Cbr%3E-+Ajay%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Employee Records
- HR - Onboarding
systems:
- sap-success-factors

---
# **Introduction :**

The **SAP_Lookup_Team_Member** plugin allows users to retrieve a list of team members from SAP SuccessFactors directly through the Moveworks AI Assistant. With this plugin, users can quickly access team member information.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

# Prerequisites :

- Access to Agent Studio
- [SAP Successfactors Connector](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors&commit_id=21f2fb0f5f2b0852c62a72235121cd8d78d6b46b;) built in Creator Studio (follow the SAP  Successfactors  Authentication guide to create your connector)

# What are we building?

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+my+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+SAP+Success+Factors+for+relevant+information%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27re+part+of+an+amazing+team+led+by+%3Cb%3EEllen+Hows%3C%2Fb%3E.+Here+are+your+wonderful+teammates%3A%3Cbr%3E-+Gwen%3Cbr%3E-+Dave%3Cbr%3E-+Ivy%3Cbr%3E-+Ajay%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **SAP successfactors Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **SAP_Lookup_Team_Member** plugin in minutes.

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# **Appendix**

## API #1: **Fetch Manager’s UserId using User Email**

The **SAP_Lookup_Team_Member** API retrieves a Team members using user email.

```yaml
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27%20&%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2C%20username%2CassignmentUUID%2Cmanager&%24expand=manager' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Path Parameters:**

- `<email>` (string) – The email of the user whose team members you want to retrieve. This would be provided list of team members.

**Query Parameters :**

- $filter (string) ****– Filter items by property values
- $expand (array[string]) ****– Expand related entities
- $select (array[string]) – Select properties to be returned
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip

## API #2: **Fetch Team members using Manager’s UserId**

```yaml
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User('\''<Manager_userId>'\'')/directReports?%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

```

**Path Parameters:**

- `<Manager_userId>`(integer) – The userId of the Manager whose direct Reports you want to retrieve. This would be provided list of team members for the user.

**Query Parameters :**

- $select (array[string]) – Select properties to be returned,
- `optional_fields`(string) – Specify additional fields to include in the response, such as $top,$skip