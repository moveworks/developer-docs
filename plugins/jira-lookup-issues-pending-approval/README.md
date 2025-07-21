---
availability: IDEA
description: A plugin that allows looking up issues that are pending approval.
domain:
- IT
- Project Management
fidelity: GUIDE
name: Lookup Issues Pending Approval
difficulty_level: BEGINNER
time_in_minutes: 10
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+the+issues+pending+my+approval.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+assigned+to+you+with+%3Ccode%3Estatus%3C%2Fcode%3E+as+%27Pending+Approval%27.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+issues+in+%3Cb%3EJira%3C%2Fb%3E+waiting+for+your+approval%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-456%3A+Request+for+new+staging+environment%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22WEB-881%3A+Content+update+for+homepage+Q3%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22SEC-102%3A+Grant+temporary+database+access+to+contractor%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+can+select+an+issue+to+see+more+details%2C+or+approve%2Freject+them+directly+from+here.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
- Project Management
systems:
- jira

---
## **Introduction**

The **“LookUp Issues Pending Approval”** plugin helps users efficiently identify Jira issues that are awaiting approval—directly through the Moveworks AI Assistant. By automatically filtering and retrieving issues in the pending approval status, users can quickly gain visibility into bottlenecks without manual searching. This streamlined approach improves workflow transparency, accelerates decision-making, and ensures timely progress across Jira projects.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites**

• Access to **Agent Studio**

## **What are we building?**

### **Agent Design:-**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+the+issues+pending+my+approval.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+assigned+to+you+with+%3Ccode%3Estatus%3C%2Fcode%3E+as+%27Pending+Approval%27.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+issues+in+%3Cb%3EJira%3C%2Fb%3E+waiting+for+your+approval%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-456%3A+Request+for+new+staging+environment%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22WEB-881%3A+Content+update+for+homepage+Q3%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22SEC-102%3A+Grant+temporary+database+access+to+contractor%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+can+select+an+issue+to+see+more+details%2C+or+approve%2Freject+them+directly+from+here.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the  [Jira Connector](https://marketplace.moveworks.com/connectors/jira) guide to set up the connector.

**Ensure the following permissions are granted:-**

- **Admin Access :** Required to archive issues using the Jira API
- **Project Access :** Ability to view and manage issues in the target Jira projects
- **Field Access** : Permission to read **Status**, **Assignee**, **Issue Key** Fields

**Note:**

- The **"Waiting for approval"** status is available only in the **ITSM template**, which requires a **Jira Premium or Enterprise** plan

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Customization Process:**

In Jira Service Management, the "**Waiting for approval**" status is available by default in the IT Service Management template. If it's not available, you can create the template if your Jira plan (typically Premium or higher) supports ITSM features.

Please follow the steps below to create the template and to add the ‘Waiting for approval’ status to the workflow:

### **Steps to Create “Waiting for approval" in Jira Service Management**

1. **Create Project**
    - Go to **Projects → Create project**.
    - Select the **IT Service Management** template.
    - Name the project **IT Support Access Desk**.
2. **Add "Waiting for approval" to Workflow**
    - Go to **Project settings → Workflows**.
    - Edit the relevant workflow.
    - Add the built-in **Waiting for approval** status via a transition.
    - Publish the workflow.

**Note:** 

Use the **exact, case-sensitive status name** from your **Jira workflow** in the JQL. Update it if your project uses a different status (e.g., **"Pending approval"**, **"Awaiting sign-off"**).

## **Appendix:-**

### **API #1 : Get Pending Issues**

```bash
curl --request GET \
--url 'https://<your-instance>/rest/api/3/search?jql=status="Waiting for approval" AND assignee="{{email}}" &startAt=0&maxResults=50' \
--header 'Authorization: Basic [base64-encoded-email:api-token](base64-encoded-email:api-token)' \
--header 'Accept: application/json'
```

**Query Parameters:**

- `{{email}}` – Returns issues assigned to the specified user
- `status = "Waiting for approval"` – Filters issues by status to return only those pending approval.
- `startAt` – Pagination offset; starts at the first record
- `maxResults=50` – Limits the number of returned results to 50