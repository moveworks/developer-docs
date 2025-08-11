---
availability: IDEA
description: A plugin that allows HR to see which employee visas are expiring within
  a specified number of days.
domain:
- HR - Employee Records
- HR - Other
fidelity: GUIDE
name: Look up Upcoming Visa Expirations
difficulty_level: INTERMEDIATE
time_in_minutes: 30
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+employees+with+upcoming+visa+expirations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+Within+how+many+days+should+I+look+for+expiring+visas%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%2230+Days%22%7D%2C%7B%22buttonText%22%3A%2260+Days%22%7D%2C%7B%22buttonText%22%3A%2290+Days%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%2290+Days%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3Eworkday%3C%2Fb%3E+for+employees+with+visas+expiring+in+the+next+90+days.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+3+employees+matching+the+criteria.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+employees+with+visas+expiring+in+the+next+90+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAna+Garcia%3C%2Fb%3E+%28H-1B%29%2C+expiring+in+%3Cb%3E25+days%3C%2Fb%3E+on+Aug+15%2C+2024%3C%2Fli%3E%3Cli%3E%3Cb%3ERaj+Patel%3C%2Fb%3E+%28L-1%29%2C+expiring+in+%3Cb%3E58+days%3C%2Fb%3E+on+Sep+17%2C+2024%3C%2Fli%3E%3Cli%3E%3Cb%3ESofia+Ivanova%3C%2Fb%3E+%28O-1%29%2C+expiring+in+%3Cb%3E81+days%3C%2Fb%3E+on+Oct+10%2C+2024%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Ana+Garcia%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22citationTitle%22%3A%22Raj+Patel%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22citationTitle%22%3A%22Sofia+Ivanova%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Employee Records
- HR - Other
systems:
- workday

---
# LookUp Upcoming Visa Expirations

## **Introduction**

The **“Look Up Upcoming Visa Expirations”** plugin helps users easily identify employee visas that are set to expire within a specified time frame—directly through the Moveworks AI Assistant. By automatically calculating the expiration window based on the current date and the user-defined range, the plugin retrieves and displays upcoming visa expirations without the need for manual tracking. This proactive approach enhances compliance readiness, streamlines HR operations, and helps avoid last-minute issues related to visa renewals.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design:-**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+employees+with+upcoming+visa+expirations%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+help+with+that.+Within+how+many+days+should+I+look+for+expiring+visas%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%2230+Days%22%7D%2C%7B%22buttonText%22%3A%2260+Days%22%7D%2C%7B%22buttonText%22%3A%2290+Days%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%2290+Days%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3Eworkday%3C%2Fb%3E+for+employees+with+visas+expiring+in+the+next+90+days.%22%2C%22status%22%3A%22success%22%7D%2C%7B%22richText%22%3A%22Found+3+employees+matching+the+criteria.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+employees+with+visas+expiring+in+the+next+90+days%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAna+Garcia%3C%2Fb%3E+%28H-1B%29%2C+expiring+in+%3Cb%3E25+days%3C%2Fb%3E+on+Aug+15%2C+2024%3C%2Fli%3E%3Cli%3E%3Cb%3ERaj+Patel%3C%2Fb%3E+%28L-1%29%2C+expiring+in+%3Cb%3E58+days%3C%2Fb%3E+on+Sep+17%2C+2024%3C%2Fli%3E%3Cli%3E%3Cb%3ESofia+Ivanova%3C%2Fb%3E+%28O-1%29%2C+expiring+in+%3Cb%3E81+days%3C%2Fb%3E+on+Oct+10%2C+2024%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22Ana+Garcia%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22citationTitle%22%3A%22Raj+Patel%22%2C%22connectorName%22%3A%22workday%22%7D%2C%7B%22citationTitle%22%3A%22Sofia+Ivanova%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for Workday first, prior to installing this plugin. Please follow the  [Workday Connector](https://marketplace.moveworks.com/connectors/workday?hist=home%2Cbrws#how-to-implement) guide to set up the connector.

**Note :** For the **Look Up Upcoming Visa Expirations** functionality, make sure your Workday integration system user has the necessary domain permissions.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- Passport and Visa Information

**Tenant Configuration:**

All Workday API endpoints in this plugin use `{{TENANT}}` as a placeholder. After installation, replace `{{TENANT}}` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)

Make sure to update this across all actions that reference the Workday API.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix:-**

### **API #1 : Get Employee Visa Expiration Details**

```bash
curl --location 'https://<your-instance>/ccx/api/wql/v1/{{TENANT}}/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <your-access-token>' \
--data '{
  "query": "SELECT worker, visas{visaIDType, expirationDate} AS visas FROM allActiveAndTerminatedWorkers WHERE visas IS NOT EMPTY"
}'
```

**Body Parameters:**

- **`query`** - *(string, required)* – WQL statement with optional filters

****

****