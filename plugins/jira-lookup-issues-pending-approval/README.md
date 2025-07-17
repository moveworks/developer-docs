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
## **Introduction:-**

The **“Lookup Issues Pending Approval”** plugin helps users efficiently identify Jira issues that are awaiting approval—directly through the Moveworks AI Assistant. By automatically filtering and retrieving issues in the pending approval status, users can quickly gain visibility into bottlenecks without manual searching. This streamlined approach improves workflow transparency, accelerates decision-making, and ensures timely progress across Jira projects.

This guide will walk you through setting up and customizing the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Show+me+all+the+issues+pending+my+approval.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb%3EJira%3C%2Fb%3E+for+issues+assigned+to+you+with+%3Ccode%3Estatus%3C%2Fcode%3E+as+%27Pending+Approval%27.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+3+issues+in+%3Cb%3EJira%3C%2Fb%3E+waiting+for+your+approval%3A%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22PROJ-456%3A+Request+for+new+staging+environment%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22WEB-881%3A+Content+update+for+homepage+Q3%22%2C%22connectorName%22%3A%22jira%22%7D%2C%7B%22citationTitle%22%3A%22SEC-102%3A+Grant+temporary+database+access+to+contractor%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EYou+can+select+an+issue+to+see+more+details%2C+or+approve%2Freject+them+directly+from+here.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for Jira first, prior to installing this plugin. Please follow the  [Jira Connector](https://developer.moveworks.com/marketplace/package/?id=jira&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Customization Process: "Waiting for approval" in Jira Service Management**

In Jira Service Management, the status **"Waiting for approval"** is supported by default in IT Service Management template. If you don’t have the IT Service Management Template in your Jira Service Management account, you can create that template if your Jira plan supports IT Service Management features usually included in the Premium plan or higher

Please follow the steps below to create the template and to add the ‘Waiting for approval’ status to the workflow:

1. **Create Project**
    - Go to **Projects → Create project**.
    - Select the **IT Service Management** template.
    - Name the project **IT Support Access Desk**.
2. **Add "Waiting for approval" to Workflow**
    - Go to **Project settings → Workflows**.
    - Edit the relevant workflow.
    - Add the built-in **Waiting for approval** status via a transition.
    - Publish the workflow.

### **Appendix:-**

**API #1 : Get Pending Issues**

```bash
curl --request GET \
--url 'https://<your-instance>/rest/api/3/search?jql=status="Waiting for approval"&startAt=0&maxResults=50' \
--header 'Authorization: Basic [base64-encoded-email:api-token](base64-encoded-email:api-token)' \
--header 'Accept: application/json'
```

### **Query Parameter:-**

- **`jql`**
    - Filters issues based on a condition.
    - Example: `status = "Waiting for approval"` returns only issues in that status.

This filters and retrieves only those issues that are currently in the **"Waiting for approval"** status.

<aside>

**Important Note:** If your Jira project uses a different status name (e.g., "Pending approval", "Awaiting sign-off", etc.), you **must update the status value in the JQL** accordingly. The status name is **case-sensitive** and must exactly match the status used in your Jira workflow.

</aside>

### **Pagination:-**

- **`startAt`**
    - Specifies the **index** of the first issue to return.
    - Example: `startAt=0` starts from the first issue.
- **`maxResults`**
    - Limits the **number of issues** returned per request.
    - Example: `maxResults=50` returns up to 50 issues in one call.