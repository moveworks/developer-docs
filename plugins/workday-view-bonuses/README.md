---
fidelity: GUIDE
name: View Bonuses
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A157%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22PAUL%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+I+see+my+bonus+history%3F%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%E2%9C%85+Authenticate+the+user%5Cn%E2%9C%85+Retrieve+bonus+payment+records%5Cn%F0%9F%94%81+Presenting+your+bonus+history%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Sure%2C+here%27s+a+summary+of+your+bonus+payments+over+the+years+%F0%9F%91%87%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Bonus+History%22%2C%22text%22%3A%22Your+bonus+payments+are+as+follows%3A%3Cbr%3E%3Cb%3E2023%3A%3C%2Fb%3E+%245%2C000%3Cbr%3E%3Cb%3E2022%3A%3C%2Fb%3E+%244%2C500%3Cbr%3E%3Cb%3E2021%3A%3C%2Fb%3E+%244%2C000%3Cbr%3EFor+detailed+information+and+bonus+criteria%2C+you+can+click+below.%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22View+Detailed+Bonus+History%22%7D%2C%7B%22text%22%3A%22Learn+About+Bonus+Criteria%22%7D%5D%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- Finance
- Finance - Payroll
- HR
systems:
- workday

---
## Introduction

The **“View Bonuses”** plugin allows employees to access their bonus details for a specific period using **Workday**, all through the Moveworks AI Assistant. This ensures users have quick and easy visibility into their compensation without needing to navigate Workday manually.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio
- [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) built in Creator Studio (follow the Workday Authentication guide to create your connector)

## **What are we building?**

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+see+my+bonus+history%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%E2%9C%85+Authenticate+the+user%5Cn%E2%9C%85+Retrieve+bonus+payment+records%5Cn%F0%9F%94%81+Presenting+your+bonus+history%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+here%27s+a+summary+of+your+bonus+payments+over+the+years+%F0%9F%91%87%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EBonus+History%3C%2Fb%3E%3Cbr%3EYour+bonus+payments+are+as+follows%3A%3Cbr%3E%3Cb%3E2023%3A%3C%2Fb%3E+%245%2C000%3Cbr%3E%3Cb%3E2022%3A%3C%2Fb%3E+%244%2C500%3Cbr%3E%3Cb%3E2021%3A%3C%2Fb%3E+%244%2C000%3Cbr%3EFor+detailed+information+and+bonus+criteria%2C+you+can+click+below.%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22View+Detailed+Bonus+History%22%7D%2C%7B%22style%22%3A%22outlined%22%2C%22buttonText%22%3A%22Learn+About+Bonus+Criteria%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#how-to-implement) guide to set up the connector.

> Note: For the View Bonuses functionality, make sure your Workday integration system user has the necessary domain permissions.
> 

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- **Compensation**
- **Bonus**

Once the connector is configured, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API #1: Get Worker Details by Name**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers?search=<WORKER_NAME>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'
```

**Query Parameters:**

- `search` (string) – Search for workers by name

### **API #2: Retrieve Worker Bonus History**

```bash
curl --location --request POST 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT one_TimePaymentEventReason as Reason, positionForOneTimePayment, scheduledPaymentDate, completedOn, actualBonus_Amount as Amount, plan, compensationElement, employee{employee, employeeID, supervisoryOrganization} as employee FROM bonusAndOne_TimePayments WHERE one_TimePaymentEventReason IN (\"3e2f3c97dcb941e7afd0806555954818\") AND employee = \"<WORKER_ID>\" ORDER BY scheduledPaymentDate DESC LIMIT 10"
}'
```

**Query Parameters:**

- `WORKER_ID` (string) – Filter bonuses for a specific worker ID