---
availability: INSTALLABLE
description: A plugin which allows you to view team members (peers and delegates).
installation_asset_uuid: 909e5f7b-e535-48cc-bc30-ea54fc7c6331
name: Look up Team Members
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+my+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+SAP+Success+Factors+for+relevant+information%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27re+part+of+an+amazing+team+led+by+%3Cb%3EEllen+Hows%3C%2Fb%3E.+Here+are+your+wonderful+teammates%3A%3Cbr%3E-+Gwen%3Cbr%3E-+Dave%3Cbr%3E-+Ivy%3Cbr%3E-+Ajay%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Onboarding
- HR - Other
systems:
- sap-success-factors
---

# **Introduction:**

The **View Team Members** plugin provides instant access to organizational data in SAP SuccessFactors through the Moveworks AI Assistant. Users can quickly retrieve team structures, reporting lines, and employee details without switching systems.

This guide outlines the simple setup process to enable team member lookups

# **Prerequisites :**

- Access to Agent Studio.

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+is+on+my+team%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ESearches+SAP+Success+Factors+for+relevant+information%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou%27re+part+of+an+amazing+team+led+by+%3Cb%3EEllen+Hows%3C%2Fb%3E.+Here+are+your+wonderful+teammates%3A%3Cbr%3E-+Gwen%3Cbr%3E-+Dave%3Cbr%3E-+Ivy%3Cbr%3E-+Ajay%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [SAP Successfactors Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector/?id=sap-success-factors) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the SAP Sucessfactors integration system user has the following permissions:

## **Required Permissions:**

- **Employee Data:** View access to employee profiles
- **User Management:** View permissions for team member directory

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

## **API #1: Fetch Manager’s UserId using User Email**

The Fetch Manager’s Id API retrieves a Manager’s userId using user email.

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User?%24top=30&%24filter=email%20eq%20%27<email>%27%20&%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2C%20username%2CassignmentUUID%2Cmanager&%24expand=manager' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
```

**Path Parameters:**

- <email> (string) – The email of the user whose team members you want to retrieve. This would be provided list of team members.

## **API #2: Querying the Direct Reports of a User**

The **Querying the Direct Reports of a User** Api is used to fetch the Team Members using Manager’s UserId. 

```bash
curl --request GET
--location 'https://<API_SERVER>/odata/v2/User('\''<Manager_userId>'\'')/directReports?%24select=defaultFullName%2Cemail%2CempId%2CfirstName%2CuserId%2Cusername' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \

```

**Path Parameters:**

- <Manager_userId>(integer) – The userId of the Manager whose direct Reports you want to retrieve. This would be provided list of team members for the user.