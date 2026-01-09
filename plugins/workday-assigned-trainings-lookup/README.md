---
availability: INSTALLABLE
description: A plugin which tells employees about which learning and development courses
  they have yet to complete to keep them on track.
installation_asset_uuid: b3b51cfd-98ca-479e-a91b-104e8f367436
name: Look up Assigned Trainings
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Which+training+courses+do+I+need+to+complete%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETraining+Courses+To+Complete%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EGet+Outstanding+Learning+Courses+%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+training+courses+you+need+to+complete+along+with+their+deadline+dates%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPending+Training+Courses%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+Cybersecurity+Awareness%3C%2Fb%3E+-+Complete+by%3A+10%2F15%2F2023+%3Cbr%3E%3Cb%3E2.+Data+Privacy+Compliance%3C%2Fb%3E+-+Complete+by%3A+11%2F01%2F2023+%3Cbr%3E%3Cb%3E3.+Effective+Communication+Skills%3C%2Fb%3E+-+Complete+by%3A+11%2F20%2F2023%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Go+to+Workday%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- HR - Learning & Development
- HR - Other
systems:
- workday
---

## **Introduction**

The **“Look Up Assigned Trainings”** plugin enables employees to quickly find out which learning and development courses are still pending for them, helping them stay on track with their training requirements. Powered by Workday and accessible through the Moveworks AI Assistant, this plugin eliminates the need to search manually through learning dashboards or emails.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Which+training+courses+do+I+need+to+complete%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3ETraining+Courses+To+Complete%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EGet+Outstanding+Learning+Courses+%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+training+courses+you+need+to+complete+along+with+their+deadline+dates%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EPending+Training+Courses%3C%2Fb%3E%3Cbr%3E%3Cb%3E1.+Cybersecurity+Awareness%3C%2Fb%3E+-+Complete+by%3A+10%2F15%2F2023+%3Cbr%3E%3Cb%3E2.+Data+Privacy+Compliance%3C%2Fb%3E+-+Complete+by%3A+11%2F01%2F2023+%3Cbr%3E%3Cb%3E3.+Effective+Communication+Skills%3C%2Fb%3E+-+Complete+by%3A+11%2F20%2F2023%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22filled%22%2C%22buttonText%22%3A%22Go+to+Workday%22%7D%5D%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend creating the connector for **Workday** first, before installing this plugin. Please follow the [Workday Connector](https://developer.moveworks.com/marketplace/package/?id=workday&hist=home%2Cbrws#step-4-add-domain-security-policies-to-the-integration-systems-security-group) guide to set up the connector.

Note: For the Look Up Assigned Trainings functionality, ensure your Workday integration system user has the necessary domain permissions.

Specifically, ensure the following domain permissions are assigned with both **View** and **Get** access:

- Worker Profile
- Required Learning Assignments

**Tenant Configuration:**

All Workday API endpoints in this plugin use **TENANT** as a placeholder. After installation, replace **TENANT** in the action definitions with your actual Workday tenant name.

To find your tenant name:

- Log into Workday.
- Check the URL in your browser — the tenant name appears after `workday.com/`, e.g.: [https://impl.workday.com/**your_tenant**/...](https://impl.workday.com/**your_tenant**/...)

Make sure to update this across all actions that reference the Workday API.

After configuring the connector and updating your tenant, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup.

## **Customization Process**

We have used specific **completionStatus ID values** directly in the second API call to filter training records (e.g., for “In Progress” and “Not Started” statuses).

**Steps to Get completionStatus ID in Workday:**

To retrieve the internal Workday IDs for learning completion statuses like "In Progress", "Completed", and "Not Started", follow these steps:

- Search for “Learning Admin” in the Workday search bar and select it.

- Navigate to the "Usage" tab (under Learning Admin).

- Look for the section titled “Course Completion Status” — it will include a pie chart and table listing statuses like “In Progress”, “Completed”, and “Not Started”.

- Locate the status you want (e.g., "Not Started").

- Click the three-dot menu (⋮) next to the status.

- Select Integration IDs → View IDs.

You’ll now see the Workday ID, which is the internal completionStatus ID to use in your WQL queries.

## **Appendix**

### **API #1: Get Worker Details by Email**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \
--data '{
  "query": "SELECT workdayID, fullName, businessTitle, email_PrimaryWorkOrPrimaryHome as email, employeeID FROM allWorkers WHERE email_PrimaryWorkOrPrimaryHome = %27{{email}}%27"
}'
```

**Query Parameter:**

- `email` (string) -The primary home email address of the worker used to look up their Workday ID

### **API #2: Retrieve Pending Training Courses for a Worker**

```bash
curl --location 'https://<API_SERVER_DOMAIN>/ccx/api/wql/v1/<TENANT>/data' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--data '{
  "query": "SELECT enrolledContent as Course, learner, registrationStatus, completionStatus, learningAssignment{dueDate1} as learningAssignment FROM learningEnrollments WHERE learner = \"{{worker_id}} AND completionStatus IN (\"<status_id_1>\", \"<status_id_2>\") \""
}'
```

**Query Parameters:**

- `worker_id` (string) – Filter learning enrollments for a specific learner or worker ID
- `status_id_1` (string) – Filter enrollments with this completion status ID (e.g., In Progress)
- `status_id_2` (string) – Filter enrollments with this additional completion status ID (e.g., Not Started)