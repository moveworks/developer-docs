---
availability: IDEA
description: A plugin that allows updating comments on multiple issues over a specified
  period.
domain:
- IT
- Project Management
fidelity: GUIDE
name: Bulk Update Issue Comments
difficulty_level: BEGINNER
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+comment+%E2%80%98Please+update+your+ticket%E2%80%99+on+all+unresolved+Jira+issues+that+are+7%2B+days+old.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+that+have+been+unresolved+for+7%2B+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+3+issues+in+%3Cb%3EJira%3C%2Fb%3E+that+are+unresolved+and+haven%27t+been+updated+in+over+7+days.+I+will+add+the+comment+%27Please+update+your+ticket.%27+to+the+following+issues%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-721%3A+Unable+to+login+via+SSO%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22PROJ-719%3A+Dashboard+loading+indefinitely%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22WEB-133%3A+Broken+link+on+pricing+page%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EDoes+this+look+right%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Add+Comment%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Add+Comment%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+added+the+comment+to+all+3+issues+in+%3Cb%3EJira%3C%2Fb%3E.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira

---
## **Introduction:**

The **“Bulk Update Issue Comments”** plugin enables users to quickly add comments to Jira issues through the Moveworks AI Assistant. It simplifies the process by allowing users to post updates without manually navigating to each issue saving time and improving efficiency.

This guide will walk you through the installation and configuration of the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+add+a+comment+to+all+unresolved+issues+in+the+%27PROJ%27+project+that+haven%27t+been+updated+in+over+a+week.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+can+do+that.+What+is+the+comment+you+would+like+to+add%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EPlease+add+%27Please+update+your+ticket.%27%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+in+project+%27PROJ%27+that+have+been+unresolved+for+7%2B+days.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+found+%3Cstrong%3E12+issues%3C%2Fstrong%3E+matching+your+criteria.+I+am+ready+to+add+the+following+comment+to+all+of+them%3A%3C%2Fp%3E%5Cn%3Cp%3EPlease+update+your+ticket.%3Cbr%3E%5Cn%3Cbr%3E%5Cn%3C%2Fp%3E%5Cn%3Cp%3EShall+I+proceed%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Add+Comment%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Add+Comment%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EDone.+I%27ve+added+the+comment+to+all+12+issues+in+%3Cb%3EJira%3C%2Fb%3E.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home%20AI%20Agent%20Marketplace:%20Explore%20&%20Install%20100+%20AI%20Agents%20Moveworks%20AI%20Agent%20Marketplace%20lets%20customers%20explore%20100+%20installable%20agents%20to%20customize%20their%20Moveworks%20AI%20Assistant.%20Explore%20the%20agent%20marketplace%20today.) Guide for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the ServiceNow integration user has the following permissions:

- `Project Access` – Allows the user to view and access the relevant Jira projects and their issues.
- `Add Comments`– Grants the ability to post comments on issues within the accessible projects.

After configuring the connector, refer to our [**plugin installation documentation**](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Appendix**

### **API #1: Get Project Details By Using Project Name**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/search?jql=project=<project_name> AND status!="Done" AND updated>=<date> ORDER BY created DESC' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `Project name` (string) – Search for **Project  Details by Project Name**
- `date` (string) – Search unresolved  or not updated issue **by using date**

### **API #2: Add Comments To Specific Project Using Project Key**

```bash
curl --location 'https://<YOUR_INSTANCE>/rest/api/3/issue/<ISSUE_KEY>/comment' \
--header 'Authorization: Basic <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
  "body": {
    "type": "doc",
    "version": 1,
    "content": [
      {
        "type": "paragraph",
        "content": [
          {
            "type": "text",
            "text": "<Text>"
          }
        ]
      }
    ]
  }
}'

```

**Request Body Parameters:**

- `Issue_key` - (string) – The Issue key of the Jira  where the comment should be posted
- `Text` - (string) –  The message that will be added as a comment to the selected Jira issue during the bulk update process.