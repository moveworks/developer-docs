---
description: A plugin that allows the user to create a new parent incident.
fidelity: GUIDE
name: Create a New Parent Incident
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+new+parent+incident+in+ServiceNow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+do+that.+What+is+the+short+description+for+this+parent+incident%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Users+are+reporting+intermittent+network+connectivity+issues+in+the+San+Francisco+office.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it.+What+is+the+urgency+for+this+incident%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22High%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Medium%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Low%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22High%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Preparing+to+create+a+new+parent+incident+in+ServiceNow+with+the+provided+details.%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EAlright%2C+I%27m+ready+to+create+a+new+parent+incident+in+%3Cb%3EServiceNow%3C%2Fb%3E+with+the+following+details%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EShort+Description%3A%3C%2Fb%3E+Users+are+reporting+intermittent+network+connectivity+issues+in+the+San+Francisco+office.%3C%2Fli%3E%3Cli%3E%3Cb%3EUrgency%3A%3C%2Fb%3E+High%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Submit%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+parent+incident+in+ServiceNow...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+created+the+new+parent+incident+INC0012345.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Ticketing
systems:
- servicenow

---
## **Introduction:**

The **“Create a New Parent Incident”** plugin enables users to initiate a new parent incident through the Moveworks AI Assistant. This functionality is particularly valuable when a widespread or recurring issue is first reported and requires centralized oversight. By creating a parent incident early, IT teams can efficiently manage related tickets, streamline resolution processes, and maintain consistent communication across impacted users and departments.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:**

- Access to Agent Studio

## **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+new+parent+incident+in+ServiceNow%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+do+that.+What+is+the+short+description+for+this+parent+incident%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Users+are+reporting+intermittent+network+connectivity+issues+in+the+San+Francisco+office.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EGot+it.+What+is+the+urgency+for+this+incident%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22High%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Medium%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Low%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22High%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Preparing+to+create+a+new+parent+incident+in+ServiceNow+with+the+provided+details.%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EAlright%2C+I%27m+ready+to+create+a+new+parent+incident+in+%3Cb%3EServiceNow%3C%2Fb%3E+with+the+following+details%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EShort+Description%3A%3C%2Fb%3E+Users+are+reporting+intermittent+network+connectivity+issues+in+the+San+Francisco+office.%3C%2Fli%3E%3Cli%3E%3Cb%3EUrgency%3A%3C%2Fb%3E+High%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Submit%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Submit%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+parent+incident+in+ServiceNow...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI%27ve+created+the+new+parent+incident+INC0012345.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0012345%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) [**Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following required permissions:

- **Create** access to the **Incident** table.

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

## API #1: Create a New Parent Incident

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "short_description": "<SHORT_DESCRIPTION>",
  "urgency": "<URGENCY>"
}'
```

### **Query Parameters:**

- `SHORT_DESCRIPTION` **(string)** – A brief summary of the parent incident
- `URGENCY` **(string)** – How quickly the issue needs to be resolved (1 = High, 2 = Medium, 3 = Low).