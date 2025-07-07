---
description: A plugin that groups related incidents under a parent incident for streamlined
  management.
fidelity: GUIDE
name: Assign Related Incidents as Children to a Parent Incident
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+group+all+the+recent+email+server+incidents+under+a+parent+ticket%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Certainly.+To+find+the+relevant+incidents%2C+how+far+back+should+I+look%3F+For+example%2C+%27the+last+2+hours%27%2C+%27since+5+PM+yesterday%27%2C+or+%27in+the+last+3+days%27.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Find+incidents+from+the+last+6+hours%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+ServiceNow+for+recent+incidents+related+to+%27email+server%27+in+the+last+6+hours.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+5+incidents+created+in+the+last+6+hours+related+to+the+email+server.+Would+you+like+me+to+group+these+under+a+new+parent+incident%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0054321%3A+Email+not+syncing%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054322%3A+Outlook+connection+error%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054323%3A+Cannot+send%2Freceive+email%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054324%3A+Email+server+down%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054325%3A+Mail+client+unresponsive%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+group+them%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%2C+don%27t+group%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+group+them%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great.+What+should+the+short+description+%28title%29+of+the+new+parent+incident+be%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Email+Server+Outage%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+create+a+new+parent+incident+in+%3Cb%3EServiceNow%3C%2Fb%3E+and+associate+the+5+related+incidents.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EParent+Incident+Description%3A%3C%2Fb%3E+Email+Server+Outage%3C%2Fli%3E%3Cli%3E%3Cb%3EChild+Incidents%3A%3C%2Fb%3E+5+incidents+including+INC0054321%2C+INC0054322%2C+and+INC0054323%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+create+it%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+create+it%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+parent+incident+%27Email+Server+Outage%27+in+ServiceNow.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Associating+5+child+incidents.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Done.+I%27ve+created+the+parent+incident+and+linked+the+5+child+incidents.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0054389%3A+Email+Server+Outage%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D
solution_tags:
- IT
- Ticketing
systems:
- servicenow

---
## **Introduction:**

The **“Assign Related Incidents as Children to a Parent Incident”** plugin enables users to group similar or related incidents under a single parent incident using the Moveworks AI Assistant. This helps IT teams manage incident clusters more efficiently, improve tracking, and reduce duplication of effort. By organizing related tickets under one parent, it enhances visibility and ensures consistent resolution workflows.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:**

- Access to Agent Studio

## **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+group+all+the+recent+email+server+incidents+under+a+parent+ticket%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Certainly.+To+find+the+relevant+incidents%2C+how+far+back+should+I+look%3F+For+example%2C+%27the+last+2+hours%27%2C+%27since+5+PM+yesterday%27%2C+or+%27in+the+last+3+days%27.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Find+incidents+from+the+last+6+hours%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESearching+ServiceNow+for+recent+incidents+related+to+%27email+server%27+in+the+last+6+hours.%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+5+incidents+created+in+the+last+6+hours+related+to+the+email+server.+Would+you+like+me+to+group+these+under+a+new+parent+incident%3F%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0054321%3A+Email+not+syncing%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054322%3A+Outlook+connection+error%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054323%3A+Cannot+send%2Freceive+email%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054324%3A+Email+server+down%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22INC0054325%3A+Mail+client+unresponsive%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+group+them%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22No%2C+don%27t+group%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+group+them%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Great.+What+should+the+short+description+%28title%29+of+the+new+parent+incident+be%3F%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Email+Server+Outage%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+will+create+a+new+parent+incident+in+%3Cb%3EServiceNow%3C%2Fb%3E+and+associate+the+5+related+incidents.%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EParent+Incident+Description%3A%3C%2Fb%3E+Email+Server+Outage%3C%2Fli%3E%3Cli%3E%3Cb%3EChild+Incidents%3A%3C%2Fb%3E+5+incidents+including+INC0054321%2C+INC0054322%2C+and+INC0054323%3C%2Fli%3E%3C%2Ful%3E%3Cp%3E%3Cb%3EDoes+this+look+correct%3F%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Yes%2C+create+it%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+create+it%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+parent+incident+%27Email+Server+Outage%27+in+ServiceNow.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Associating+5+child+incidents.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Done.+I%27ve+created+the+parent+incident+and+linked+the+5+child+incidents.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22INC0054389%3A+Email+Server+Outage%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%2C%22showFeedbackTray%22%3Atrue%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [ServiceNow Connector](https://developer.moveworks.com/marketplace/package/?id=servicenow&hist=home%2Cbrws#how-to-implement) [**Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following required permissions:

- **Read**, **Create**, and **Update** access to the **Incident** table.

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

## API #1: Get Related Incidents by short descriptions & Time

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident?sysparm_query=sys_created_onRELATIVEGE%40hour%40ago%40<hours>%5Eshort_descriptionLIKE<KEYWORD>&sysparm_fields=number%2Cshort_description%2Csys_id' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

### **Query Parameters:**

- `KEYWORD` – Filters incidents whose short descriptions contain the specified keyword
- `hours` – Filters incidents based on their creation time relative to the current time

### API #2: Create a Parent Incident

```bash
curl --location 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "short_description": "<short_description>"
}'
```

### **Query Parameters:**

- `short_description` –Title for the parent incident

### **API #3: Associate Child Incident with Parent**

```bash
curl --location --request PUT 'https://<YOUR_INSTANCE>.service-now.com/api/now/table/incident/<CHILD_INCIDENT_SYS_ID>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "parent_incident": "<PARENT_INCIDENT_SYS_ID>"
}'
```

### **Query Parameters:**

- `CHILD_INCIDENT_SYS_ID` – The sys_id of the incident to be grouped
- `PARENT_INCIDENT_SYS_ID` – The sys_id of the parent incident

##