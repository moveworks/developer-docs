---
availability: INSTALLABLE
description: A plugin that allows a recruiter to list all candidates who have applied
  to a given job requisition.
installation_asset_uuid: fbf6a46a-2e01-46c2-9516-c9c51f36c8c1
name: Look Up Candidates for Requisition
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22list+candidates+for+the+senior+product+manager+req%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+job+requisitions+matching+%27senior+product+manager%27+in+%3Cb%3Eworkday%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+open+requisitions+for+%27Senior+Product+Manager%27.+Which+one+are+you+looking+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22REQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%22%7D%2C%7B%22buttonText%22%3A%22REQ-00125%3A+Senior+Product+Manager%2C+Growth%22%7D%2C%7B%22buttonText%22%3A%22REQ-00129%3A+Senior+Product+Manager%2C+International%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22REQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+candidates+for+requisition+%3Cb%3EREQ-00123%3C%2Fb%3E+from+%3Cb%3Eworkday%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+active+candidates+for+%3Cb%3EREQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAlice+Johnson%3C%2Fb%3E+-+Stage%3A+%3Ci%3EHiring+Manager+Interview%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EBob+Williams%3C%2Fb%3E+-+Stage%3A+%3Ci%3EOn-site+Interview%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECharlie+Brown%3C%2Fb%3E+-+Stage%3A+%3Ci%3EApplication+Review%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EDiana+Prince%3C%2Fb%3E+-+Stage%3A+%3Ci%3EOffer+Extended%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22REQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR - Recruiting & Talent
systems:
- workday
---
## **Introduction**

The **Look Up Candidates for Requisition** plugin empowers recruiters to effortlessly view all candidates who have applied to a specific job requisition using the Moveworks AI Assistant. By integrating with Workday, this plugin enables fast, accurate retrieval of candidate information—streamlining the recruiting process and reducing time-to-hire.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22list+candidates+for+the+senior+product+manager+req%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+for+job+requisitions+matching+%27senior+product+manager%27+in+%3Cb%3Eworkday%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+a+few+open+requisitions+for+%27Senior+Product+Manager%27.+Which+one+are+you+looking+for%3F%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22REQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%22%7D%2C%7B%22buttonText%22%3A%22REQ-00125%3A+Senior+Product+Manager%2C+Growth%22%7D%2C%7B%22buttonText%22%3A%22REQ-00129%3A+Senior+Product+Manager%2C+International%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22REQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+candidates+for+requisition+%3Cb%3EREQ-00123%3C%2Fb%3E+from+%3Cb%3Eworkday%3C%2Fb%3E.%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+active+candidates+for+%3Cb%3EREQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%3C%2Fb%3E%3A%3C%2Fp%3E%3Cul%3E%3Cli%3E%3Cb%3EAlice+Johnson%3C%2Fb%3E+-+Stage%3A+%3Ci%3EHiring+Manager+Interview%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EBob+Williams%3C%2Fb%3E+-+Stage%3A+%3Ci%3EOn-site+Interview%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECharlie+Brown%3C%2Fb%3E+-+Stage%3A+%3Ci%3EApplication+Review%3C%2Fi%3E%3C%2Fli%3E%3Cli%3E%3Cb%3EDiana+Prince%3C%2Fb%3E+-+Stage%3A+%3Ci%3EOffer+Extended%3C%2Fi%3E%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22REQ-00123%3A+Senior+Product+Manager%2C+Core+Platform%22%2C%22connectorName%22%3A%22workday%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to **Job Requisitions**
- `View access` to **Candidates**

**Tenant Configuration:**

All Workday API endpoints in this plugin use `{{TENANT}}` as a placeholder. After installation, replace `{{TENANT}}` in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.:
    
    `https://impl.workday.com/**your_tenant**/...`
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Get Candidates by Job Requisition**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data-raw '{
  "query": "SELECT recruitingStagesWithActiveCandidates,allCandidates, supervisoryOrganization, jobRequisition, jobPostingTitle, jobRequisitionStatus as Status, region, company, newPosition, position, referenceID1, hasRequisitionCompensation, isEvergreen FROM allJobRequisitions (includeEvergreenRequisitions = true) WHERE jobPostingTitle = '\''{{job_title}}'\''"
}'

```

---

### **Query Parameters:**

- `job_title` (string) – Title of the job requisition used to fetch matching requisition(s) and associated candidate data.