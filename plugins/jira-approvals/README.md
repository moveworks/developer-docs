---
agent_capabilities:
- Ambient Agent
- Ambient Agent
availability: VALIDATED
description: A plugin that notifies users about pending Jira approvals.
name: Approve Jira Issues
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Hi+Neal%2C%5CnYou+have+a+new+pending+approval+in+JIRA.+It+has+been+requested+by+nmoran%40moveworks.us+and+is+of+type+%5C%22Request+a+budget+allocation%5C%22.+Please+view+it+%3Ca+href%3D%5C%22www.jira.com%5C%22%3Ehere%3C%2Fa%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Approvals
- IT
systems:
- jira
video: https://youtu.be/BLVAH5sg1_M
---

# Introduction

[JIRA Automation](https://www.atlassian.com/software/jira/features/automation) is a feature that allows you to build automations and workflows based on events that occur within JIRA Service Desk.

In this tutorial, we will explore how to use Creator Studio to notify approvers in-bot in near-real time when a new approval is pending.

Let's get started!

# 🛠 **Prerequisites**

- The JIRA Automation Feature enabled in JIRA Service Desk
- Moveworks Creator Studio
- Moveworks Events API Key
- Postman or an API Testing Tool
- A Request Item in JIRA that requires an Approval


# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A1557%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22Bot%22%2C%22text%22%3A%22Hi+Neal%2C%5CnYou+have+a+new+pending+approval+in+JIRA.+It+has+been+requested+by+nmoran%40moveworks.us+and+is+of+type+%5C%22Request+a+budget+allocation%5C%22.+Please+view+it+%3Ca+href%3D%5C%22www.jira.com%5C%22%3Ehere%3C%2Fa%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

**This use case is made up of:**

✨ **Triggers:** Initiated by JIRA

🤲 **Slots**: None

🏃‍♂️ **Actions: None - Link to JIRA Approval record**

📚 **Guidelines:** None

Based on the needs of this use case, we should build a [Actionable Updates](https://developer.moveworks.com/creator-studio/design-patterns/dp-10).

## API Research

There’s only 1 API needed to build this use case - Which is the Moveworks Events API

### API #1: The Moveworks Events API

Since most of the work is actually done in JIRA Automations, the only API call we will be making is to the Moveworks Events API

![Screenshot 2024-01-09 at 5.20.18 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.20.18_PM.png)

1. [Moveworks API](https://developer.moveworks.com/openapi/reference/#operation/sendMessageForEvent)**:** An API to send proactive events to a Moveworks user
2. [JIRA Retrieve Issue API](https://developer.atlassian.com/cloud/jira/platform/rest/v2/api-group-issues/#api-rest-api-2-issue-issueidorkey-get)**:** A JIRA API to retrieve a given issue and fields

Although we will only be using the Moveworks API in the actual implementation, it is important to use Postman in order to be able to view a given issue, as we will be leveraging a feature called [Smart Values](https://support.atlassian.com/cloud-automation/docs/jira-smart-values-issues/) to dynamically introspect details about the issue and approvers in order to send a comprehensive message

- Authenticating to the Moveworks API (follow [our guide](https://developer.moveworks.com/openapi/reference/#operation/testAuth))
    - Authenticating is relatively easy - you can obtain your Bearer Token from you Moveworks Customer Success Team
- Authenticating to the JIRA API (follow [JIRAs Guide](https://developer.atlassian.com/cloud/jira/platform/basic-auth-for-rest-apis/))
    - You’ll notice this link is for Basic Auth - the simplest way to authenticate for ad-hoc calls and the recommended approach for this exercise
- [Install Postman](https://www.postman.com/downloads/)

# Steps

## Step 1: Build the Event in Creator Studio

The first step is to build the Event in Moveworks that we want receive the notification for.  This will be a webhook-type architecture which will listen for events that are sent to it.

### Create the event

1. Open Creator Studio and click Events. If you need more info, [follow our quickstart guide](https://developer.moveworks.com/creator-studio/quickstart/events/).
2. Simply name the event whatever you like, and choose “No” for follow up actions as seen here.  Choose “Next” and deploy to yourself or others for testing.

    ![Screenshot 2024-01-09 at 5.37.20 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.37.20_PM.png)

3. Once it has been created, go back and click into the Event you just created.  You should now see an Event ID.  Copy that to your clipboard - ‼️ we will refer to this as the EventID going forward and will use it later in the exercise.

    ![Screenshot 2024-01-09 at 5.39.03 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.39.03_PM.png)


## Step 2: JIRA - Identify a Project with Approvals

In this step we will do the required research in order to not only identify which project we are targeting to notify approvals for, but also to inspect the payload for issues within that project in order to build out the JIRA Automation effectively.

### Identify the project and Request Types with Approvals

1. Login to your JIRA ServiceDesk and choose a project that has request types with approvals.
2. You can then choose “Project Settings” within the project to view the Request Types.
3. Those with approvals should have a workflow under “Edit Workflow” that looks something like the screenshots below

    ![Screenshot 2024-01-09 at 5.45.06 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.45.06_PM.png)


![Screenshot 2024-01-09 at 5.46.41 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.46.41_PM.png)

### Create a new issue of the identified request type

The point of this step is to create a new issue type that will generate pending approvals.  This will allow us to view a fresh instance of that issue knowing that all the proper approvals can be read.

1. Create an issue of the type you inspected in step 1.

    ![Screenshot 2024-01-09 at 5.51.36 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.51.36_PM.png)

    ![Screenshot 2024-01-09 at 5.52.08 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.52.08_PM.png)

2. You can now see I have an issue of identifier “LEG-54”.  It also has a pending approval attached to it.  Now I can leverage the JIRA API with Basic Auth in Postman to inspect the details of this issue using the API endpoint in the screenshot below which is also referenced in the [JIRA API Specification](https://developer.atlassian.com/cloud/jira/platform/rest/v2/api-group-issues/#api-rest-api-2-issue-issueidorkey-get).  Copy and paste this JSON response into a JSON editor or simply leave it up in Postman so we can reference it later.

![Screenshot_2024-01-09_at_5.56.10_PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_5.56.10_PM.png)

1. ‼️ - One thing that is very important to note is that depending on your Administrative settings, a user’s email may not show up by default due to JIRA’s GDPR settings.  More can be read about here in the [JIRA Community](https://community.developer.atlassian.com/t/get-users-email-as-system-admin-in-jira/33322).  Please see these recommendations to see what best fits your organization.  We will require the ability to read this email via API so we can send the message to the identified approver(s).

    ![Screenshot 2024-01-09 at 6.00.44 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.00.44_PM.png)


## Step 4: Build the Flow in JIRA Automation

This is the step where the bulk of the automation and work will take place.  Luckily JIRA makes this very simple for us to leverage.  Keep in mind this exercise will turn on approval notifications for ALL issue and request types that require approvals in the identified project.  Further tuning can occur for specific types but do require additional logic and fall outside the scope of this guide.

### Build the Wofklow in JIRA Automation

1. For the project you have identified, choose “Project Settings”, then “Automation”.
2. On the top right select “Create Rule”.
3. The first thing you will see is “Add a Trigger”.  There are many operations that can trigger an automation to run here, but we are looking for “Approval Required” as seen below.

![Screenshot 2024-01-09 at 6.07.36 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.07.36_PM.png)

1. We will now click “Add Component” as a next step and you will see these choices.  We need to choose “FOR EACH: Add a branch”.  This is because there could be multiple approvers on a single issue.  This will allow us to loop through all approvers and send a message to each of them individually

    ![Screenshot 2024-01-09 at 6.12.16 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.12.16_PM.png)

2. You will now see input fields for “Smart value” and “Variable name”.  The Smart value is the dynamic reference to the JSON fields from the body we retrieved in the Postman call.  Keep in mind this will probably be different in every JIRA instance due to custom field names.  You can see in the following screenshot and code snippet how I am referencing the array of approvers via custom field name.  This operation takes the approvers JSON array and puts in the variable name “approvers” so I can reference it later.

    ![Screenshot 2024-01-09 at 6.14.34 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.14.34_PM.png)

    ```jsx
    "customfield_10026": [
                {
                    "id": "60",
                    "name": "To Do",
                    "finalDecision": "pending",
                    "canAnswerApproval": false,
                    "approvers": [
                        {
                            "approver": {
                                "accountId": "621e8911db58c1006878ed63",
                                "emailAddress": "nmoran@moveworks.us",
                                "displayName": "Neal Moran",
                                "active": true,
                                "timeZone": "America/Danmarkshavn",
                                "_links": {
                                    "jiraRest": "https://moveworksus.atlassian.net/rest/api/2/user?accountId=621e8911db58c1006878ed63",
                                    "avatarUrls": {
                                        "48x48": "https://secure.gravatar.com/avatar/ad2cba6d794a9e650017c027a7a55d23?d=https%3A%2F%2Favatar-management--avatars.us-west-2.prod.public.atl-paas.net%2Finitials%2FNM-1.png",
                                        "24x24": "https://secure.gravatar.com/avatar/ad2cba6d794a9e650017c027a7a55d23?d=https%3A%2F%2Favatar-management--avatars.us-west-2.prod.public.atl-paas.net%2Finitials%2FNM-1.png",
                                        "16x16": "https://secure.gravatar.com/avatar/ad2cba6d794a9e650017c027a7a55d23?d=https%3A%2F%2Favatar-management--avatars.us-west-2.prod.public.atl-paas.net%2Finitials%2FNM-1.png",
                                        "32x32": "https://secure.gravatar.com/avatar/ad2cba6d794a9e650017c027a7a55d23?d=https%3A%2F%2Favatar-management--avatars.us-west-2.prod.public.atl-paas.net%2Finitials%2FNM-1.png"
                                    },
                                    "self": "https://moveworksus.atlassian.net/rest/api/2/user?accountId=621e8911db58c1006878ed63"
                                }
                            },
                            "approverDecision": "pending"
                        }
                    ],
                    "createdDate": {
                        "iso8601": "2024-01-10T00:51:48+0000",
                        "jira": "2024-01-10T00:51:48.461+0000",
                        "friendly": "Today 12:51 AM",
                        "epochMillis": 1704847908461
                    },
                    "_links": {
                        "self": "https://moveworksus.atlassian.net/rest/servicedeskapi/request/161173/approval/60"
                    }
                }
            ]
    ```

3. Now that we have access to all approvers and can loop through them, we can add the final pieces for validation and leverage the Event Webhook we created earlier.  As a validation precaution, add a new component “IF: Add a Condition”.  Then choose {{smart values}} condition.  We can now reference fields within the variable we captured above so let’s check and make the sure the emailAddress is “not null” before sending the message to the user.

    ![Screenshot 2024-01-09 at 6.29.25 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.29.25_PM.png)

    ![Screenshot 2024-01-09 at 6.29.48 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.29.48_PM.png)

4. Now for the final step we will send the approval message to the user.  Select new component and “Send Web Request”.  For the Web Request URL enter where EventID is the value you copied when you created the event in Creator Studio

```text
https://api.moveworks.ai/rest/v1/events/{{EventID}}/messages/send
```

1. Your HTTP method will be POST and your Web Request Body will be “Custom Data”

    ![Screenshot 2024-01-09 at 6.33.17 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.33.17_PM.png)

2. Within the custom data body we will formulate the message you are going to send to the user.  One thing to note - you can reference ANY field in the issue that came back from the JSON response in the Postman call.  You’ll notice I’m referencing the creator’s email address {{creator.emailAddress}} and the issue type {{issueType.name}} so I can show the approver this info, but it is not limited to this.  See the code snipped below - we are also referencing the {{issueKey}} which allows us to dynamically build the link to the issue, as well as the {{approvers.approver.emailAddress}} so Moveworks knows who to send this message to as the approver

```json
{
    "message": "You have a new pending approval in JIRA.  It has been requested by {{creator.emailAddress}} and is of type \"{{issueType.name}}\".  Please view it <a href=\"https://moveworksus.atlassian.net/jira/servicedesk/projects/LEG/queues/custom/58/{{issue.key}}\">here</a>",
    "recipients": ["{{approvers.approver.emailAddress}}"]
}
```

1. Once this is done, the final piece is the Authorization.  You can create an Event API Key [here](https://developer.moveworks.com/creator-studio/integrations/inbound/credentials-management/)

![Screenshot 2024-01-09 at 6.38.32 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.38.32_PM.png)

1. Your completed automation flow should look something like this.


    ![Screenshot 2024-01-09 at 6.39.21 PM.png](Use%20Case%20Guide%20JIRA%20Approvals%20f1ce3fe611e644a99a97f00cfb719fbb/Screenshot_2024-01-09_at_6.39.21_PM.png)


## Step 5: See it in action!

Trigger the use case by creating the issue with approval. Here’s a quick demo.

[https://www.loom.com/share/e2cdfc7cddd8402c8ff7226048c10bd5?sid=0e5f2dc9-3b6d-439a-bdf3-be0b275ba2c1](https://www.loom.com/share/e2cdfc7cddd8402c8ff7226048c10bd5?sid=0e5f2dc9-3b6d-439a-bdf3-be0b275ba2c1)

# Congratulations!

You just added JIRA Approval notifications with links to your Copilot! Say good-bye to those long waiting approvals that only get checked periodically or notified by email.
