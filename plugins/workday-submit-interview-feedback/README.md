---
availability: INSTALLABLE
installation_asset_uuid: ee3eca33-15fa-482b-a67d-3456c8ef2218
name: Submit Interview Feedback
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+finished+my+interview+with+Jamie.+They+were+passable.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESounds+like+they%27re+a+%3Cb%3Ehire%3C%2Fb%3E+but+not+a+%3Cb%3Estrong+hire%3C%2Fb%3E+--+any+specific+notes%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes+%E2%80%93+I+think+they+can+be+more+confident+when+speaking.+It%27s+an+important+skill+when+working+with+customers.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+submit+this+feedback+to+Workday.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+feedback%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EInterviewee%3C%2Fb%3E%3A+Jamie+Diaz+%28Application+%2372903%29%3Cbr%3E%3Cb%3ERating%3C%2Fb%3E%3A+Hire%3Cbr%3E%3Cb%3EFeedback%3A+%3C%2Fb%3EJamie+can+be+more+confident+when+speaking.+It%27s+an+important+skill+for+working+with+customers.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Yes%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Request%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESubmit+it%21%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYour+feedback+for+Jamie+Diaz+has+been+submitted.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- HR - Other
- HR - Recruiting & Talent
systems:
- workday
description: A plugin that enables interviewers to submit candidate feedback and ratings
  directly into Workday.
---

## Introduction

The **“Submit Interview Feedback”** plugin enables recruiters or interviewers to quickly submit feedback for a candidate directly into **Workday** using the Moveworks AI Assistant. This removes the need to navigate through Workday manually, streamlining the feedback process and ensuring timely input from interviewers.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EJust+finished+my+interview+with+Jamie.+They+were+passable.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESounds+like+they%27re+a+%3Cb%3Ehire%3C%2Fb%3E+but+not+a+%3Cb%3Estrong+hire%3C%2Fb%3E+--+any+specific+notes%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYes+%E2%80%93+I+think+they+can+be+more+confident+when+speaking.+It%27s+an+important+skill+when+working+with+customers.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EOkay%2C+I+can+submit+this+feedback+to+Workday.%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+your+feedback%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EInterviewee%3C%2Fb%3E%3A+Jamie+Diaz+%28Application+%2372903%29%3Cbr%3E%3Cb%3ERating%3C%2Fb%3E%3A+Hire%3Cbr%3E%3Cb%3EFeedback%3A+%3C%2Fb%3EJamie+can+be+more+confident+when+speaking.+It%27s+an+important+skill+for+working+with+customers.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Yes%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22No%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Edit+Request%22%7D%5D%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESubmit+it%21%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EYour+feedback+for+Jamie+Diaz+has+been+submitted.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to simplify the process. Please follow our [**Workday Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

For this plugin, ensure the Workday integration system user has the following permissions:

**Required Permissions:**

- `View access` to Candidate Data
- `View & Modify access` to Interview Feedback

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)
    

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Appendix**

### **API #1: Retrieve Interviews**

```bash
curl --location 'https://<YOUR_DOMAIN>/api/recruiting/v3/<TENANT>/interviews?interviewStatus=SCHEDULED&interviewStatus=PENDING_FEEDBACK&interviewStatus=AWAITING_ME&interviewStatus=COMPLETED' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>'
```

**Query Parameters:**

- `interviewStatus` (string) – Filter interviews by status. Supports multiple values like `SCHEDULED`, `PENDING_FEEDBACK`, `AWAITING_ME`, `COMPLETED`

### **API #2: Submit Interview Feedback**

```bash
curl --location --request POST 'https://<YOUR_DOMAIN>/api/recruiting/v3/<TENANT>/interviews/{{Interview_id}}/feedback' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
    "comment": "{{comment}}",
    "overallRating": {
        "id": "{{rating_id}}"
    }
}'
```

**Path Parameters:**

- `Interview_id` (string) – The unique identifier of the interview for which the feedback is being submitted.

**Request Body Fields:**

- `comment` (string) – The interviewer's written feedback or comments about the candidate.
- `rating_id` (string) – The ID representing the overall interview rating selected by the interviewer