---
description: A plugin that helps security teams stay informed about login activity
  and mitigate risk.
fidelity: GUIDE
difficulty_level: BEGINNER
time_in_minutes: 20
name: Manage Login Activity
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Has+anyone+logged+in+from+a+region+where+we+don%27t+operate+as+a+company+in+the+last+week%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Queries+Okta+for+logins+from+regions+outside+company+operations+in+the+last+week.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EFound+logins+from+regions+not+covered+by+our+operations.+Here+are+the+details%3A%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ELogin+Detail+1%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUser%3A+%3C%2Fb%3EJohn+Doe%3Cbr%3E%3Cb%3ERegion%3A+%3C%2Fb%3ESouth+America%3Cbr%3E%3Cb%3ETime%3A+%3C%2Fb%3E2023-03-21+10%3A00+AM%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ELogin+Detail+2%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EUser%3A+%3C%2Fb%3EJane+Smith%3Cbr%3E%3Cb%3ERegion%3A+%3C%2Fb%3EAustralia%3Cbr%3E%3Cb%3ETime%3A+%3C%2Fb%3E2023-03-22+02%3A00+PM%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWould+you+like+to+file+a+ticket+to+investigate+these+logins%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22File+Ticket%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Ignore%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- okta

---
## **Introduction :**

The **Manage Login Activity plugin** users monitor login activity with Okta through the Moveworks AI Assistant. It enables security teams to identify suspicious behavior such as logins from unknown devices, new locations, or elevated risk levels across specific user groups.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EAny+suspicious+login+activity+recorded+recently%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+Okta+for+recent+high-risk+login+events.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+high-risk+login+event+for+%3Cstrong%3EAnderson+Perez%3C%2Fstrong%3E.%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3E%3Cstrong%3EIP+Address%3A%3C%2Fstrong%3E+203.0.113.1%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ELocation%3A%3C%2Fstrong%3E+Bogota%2C+Colombia%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EDevice%3A%3C%2Fstrong%3E+Chrome+on+Windows%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ETime%3A%3C%2Fstrong%3E+11+PM+UTC%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ERisk+Level%3A%3C%2Fstrong%3E+HIGH%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Anderson+Perez%22%2C%22connectorName%22%3A%22okta%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our **[Okta Connector Guide](https://developer.moveworks.com/marketplace/package/?id=okta&hist=home%2Cbrws#how-to-implement)** for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

**For this plugin, ensure the Okta API token user has the following required permissions:**

- **Read** access to the **Groups API** (**groups**)
- **Read** access to the **Group Members API** (**users**)
- **Read** access to the **System Log API** (**logs**)

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get Group ID by Group Name**

```bash
curl --location 'https://<YOUR_INSTANCE>.okta.com/api/v1/groups?q=<team>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `team` (string) – Team name used to retrieve the team ID.

### **API #2: Get Users by Team ID**

```bash
curl --location 'https://<YOUR_INSTANCE>.okta.com/api/v1/groups/<team_id>/users' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `team_id` (string) – Team ID used to retrieve the users

### **API #3: Get Suspicious Login Logs by User ID**

```bash
curl --location 'https://<YOUR_INSTANCE>.okta.com/api/v1/logs?filter=eventType%20eq%20%22user.session.start%22%20and%20outcome.result%20eq%20%22SUCCESS%22%20and%20actor.id%20eq%20%22<user_id>%22%20and%20debugContext.debugData.risk%20co%20%22level%3DMEDIUM%22&sortOrder=DESCENDING&limit=1' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `user_id` (string) – User ID to retrieve suspicious login activity

