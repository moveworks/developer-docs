---
availability: INSTALLABLE
description: A plugin that helps security teams stay informed about login activity
  and mitigate risk.
installation_asset_uuid: 0cd3e3af-c41b-4b6d-840f-6e5f175d65b6
name: Manage Login Activity
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+suspicious+Okta+logins+for+the+IT+Support+group%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22User+wants+to+see+suspicious+login+activity+from+Okta+for+the+%27IT+Support%27+group.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+group+%27IT+Support%27+in+Okta.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Analyzed+events+for+suspicious+signals+and+found+2+potential+risks.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+2+suspicious+login+events+for+the+%3Cb%3EIT+Support%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cp%3E%3Cb%3E1.+User%3A%3C%2Fb%3E+carlos.rayon%40example.com%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETime%3A%3C%2Fb%3E+2024-05-21+08%3A30+AM+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+Madrid%2C+Spain+%28New+Location%29%3C%2Fli%3E%3Cli%3E%3Cb%3EDevice%3A%3C%2Fb%3E+Chrome+on+Windows%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk%3A%3C%2Fb%3E+Medium%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3E2.+User%3A%3C%2Fb%3E+emily.wong%40example.com%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETime%3A%3C%2Fb%3E+2024-05-20+10%3A15+PM+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+San+Francisco%2C+CA%3C%2Fli%3E%3Cli%3E%3Cb%3EDevice%3A%3C%2Fb%3E+Okta+Verify+on+iPhone%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk%3A%3C%2Fb%3E+High+%28Impossible+travel+detected+from+previous+login%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Carlos+Rayon%22%2C%22connectorName%22%3A%22okta%22%7D%2C%7B%22citationTitle%22%3A%22Emily+Wong%22%2C%22connectorName%22%3A%22okta%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- okta
---

## **Introduction :**

The **Manage Login Activity plugin** helps users monitor login activity in Okta through the Moveworks AI Assistant. It enables security teams to identify suspicious behavior such as logins from unknown devices, new locations, or elevated risk levels across specific user groups.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+suspicious+Okta+logins+for+the+IT+Support+group%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22User+wants+to+see+suspicious+login+activity+from+Okta+for+the+%27IT+Support%27+group.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+group+%27IT+Support%27+in+Okta.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Analyzed+events+for+suspicious+signals+and+found+2+potential+risks.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+2+suspicious+login+events+for+the+%3Cb%3EIT+Support%3C%2Fb%3E+group%3A%3C%2Fp%3E%3Cp%3E%3Cb%3E1.+User%3A%3C%2Fb%3E+carlos.rayon%40example.com%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETime%3A%3C%2Fb%3E+2024-05-21+08%3A30+AM+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+Madrid%2C+Spain+%28New+Location%29%3C%2Fli%3E%3Cli%3E%3Cb%3EDevice%3A%3C%2Fb%3E+Chrome+on+Windows%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk%3A%3C%2Fb%3E+Medium%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3E2.+User%3A%3C%2Fb%3E+emily.wong%40example.com%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3ETime%3A%3C%2Fb%3E+2024-05-20+10%3A15+PM+UTC%3C%2Fli%3E%3Cli%3E%3Cb%3ELocation%3A%3C%2Fb%3E+San+Francisco%2C+CA%3C%2Fli%3E%3Cli%3E%3Cb%3EDevice%3A%3C%2Fb%3E+Okta+Verify+on+iPhone%3C%2Fli%3E%3Cli%3E%3Cb%3ERisk%3A%3C%2Fb%3E+High+%28Impossible+travel+detected+from+previous+login%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Carlos+Rayon%22%2C%22connectorName%22%3A%22okta%22%7D%2C%7B%22citationTitle%22%3A%22Emily+Wong%22%2C%22connectorName%22%3A%22okta%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

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

