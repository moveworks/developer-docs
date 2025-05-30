---
description: A plugin that allows a manager to see who has not completed their required
  trainings yet and enables them to send a prompting message.
fidelity: GUIDE
name: Check Employee Training Status
difficulty_level: INTERMEDIATE
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2877%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22CHRISTIAN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+you+show+me+who+has+not+completed+their+training%3F%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Okay%2C+here+is+a+list+of+incomplete+trainings+for+your+reports.%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Jane+Doe%22%2C%22text%22%3A%22%5BRequired%5D+Ethics+Training+-+Not+Started%22%7D%2C%7B%22title%22%3A%22John+Smith%22%2C%22text%22%3A%22%5BOptional%5D+Health+%26+Safety+Awareness+-+Incomplete%22%7D%2C%7B%22title%22%3A%22Alice+Johnson%22%2C%22text%22%3A%22Diversity+%26+Inclusion+-+Incomplete%22%7D%2C%7B%22title%22%3A%22Bob+Williams%22%2C%22text%22%3A%22Infosec+Practices+-+Incomplete%22%7D%5D%7D%5D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Learning & Development
systems:
- workday

---
## **Introduction**

The **Check Employee Training Status** plugin empowers managers to view which employees have not completed their required trainings using Workday, all through the Moveworks AI Assistant. This ensures that managers can take timely action to maintain compliance and team readiness without manually digging through reports in Workday.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+show+me+who+has+not+completed+their+training%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+here+is+a+list+of+incomplete+trainings+for+your+reports.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJane+Doe%3C%2Fb%3E%3Cbr%3E%5BRequired%5D+Ethics+Training+-+Not+Started%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EJohn+Smith%3C%2Fb%3E%3Cbr%3E%5BOptional%5D+Health+%26+Safety+Awareness+-+Incomplete%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EAlice+Johnson%3C%2Fb%3E%3Cbr%3EDiversity+%26+Inclusion+-+Incomplete%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EBob+Williams%3C%2Fb%3E%3Cbr%3EInfosec+Practices+-+Incomplete%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, prior to installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

Note: For the Check Employee Training Status functionality, make sure your Workday integration system user has the necessary domain permissions.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- View and Get access to Learning
- View and Modify access to Required Learning Assignments

Once the connector is configured, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Appendix**

### **API#1: Get Worker Details By Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Parameters:**

- `email` (string) – The primary home email address of the worker used to look up their Workday ID

### **API #2: Get Direct Reports of the Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/v1/<TENANT>/workers/{{WORKER_ID}}/directReports' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json'

```

**Parameters:**

- **`WORKER_ID`**(string) – Filter direct reports for a specific worker ID

### **API #3: Retrieve Incomplete Training Status for a Specific Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT learnerRole, enrolledContent, contentProvider, learnersRegistrationDate, courseScore, completionStatus, completionDate, requiredLearningEnrollment FROM learningEnrollments WHERE requiredLearningEnrollment = true AND completionStatus IN (\"<STATUS_ID_1>\", \"<STATUS_ID_2>\") AND learnerRole = \"<WORKER_ID>\""
}'

```

**Query Parameters:**

- **`WORKER_ID`**(string) – Filter learning enrollments for a specific learner or worker ID
- **`STATUS_ID_1`**(string) – Filter enrollments with this completion status ID (e.g., In Progress)
- **`STATUS_ID_2`**(string) – Filter enrollments with this additional completion status ID (e.g., Not Started)