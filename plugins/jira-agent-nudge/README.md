---
agent_capabilities:
- Polling Required
- Ambient Agent
availability: VALIDATED
description: A plugin that nudges assignees about tickets that haven't been updated
  in a given time period.
name: Nudge Ticket Assignee
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHello+Tyler%21%3Cbr%3EHope+you+had+a+great+weekend.%3Cbr%3E%3Cbr%3EBelow+is+a+list+of+open+tickets+that+haven%27t+received+an+update+in+a+week+or+longer.+Please+prioritize+updating+these+tickets%2C+especially+if+they+are+customer+facing.%3Cbr%3E%3Cbr%3E*+%3Ca+href%3D%5C%22https%3A%2F%2Fgoogle.com%5C%22%3EIT-12345%3C%2Fa%3E+%7C+I+need+access+to+Zoom%3Cbr%3E*+%3Ca+href%3D%5C%22https%3A%2F%2Fgoogle.com%5C%22%3EIT-32352%3C%2Fa%3E+%7C+My+keyboard+isn%27t+working%3Cbr%3E*+%3Ca+href%3D%5C%22https%3A%2F%2Fgoogle.com%5C%22%3EIT-43256%3C%2Fa%3E+%7C+VPN+keeps+disconnecting+from+my+preferred+portal%3Cbr%3E%3Cbr%3EThank+you%21%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- IT
systems:
- jira
---

# Introduction

Moveworks Concierge offers native [Nudge](https://help.moveworks.com/docs/concierge#ticket-nudge) functionality, but this involves prompting the requester if they would like to nudge the ticket and only applies to tickets that are new or in progress. Building out an automation to remind agents of their stale tickets that meet your specific needs and can be helpful in pushing for progress or maintaining resolution SLA.

Let's get started!

# Prerequisites

**What you need before starting**

- Jira admin access to the desired project
- Access to Jira Automation
- Knowledge on Jira JQL queries

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A2208%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GENERIC%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EHello+Tyler%21%3Cbr%3EHope+you+had+a+great+weekend.%3Cbr%3E%3Cbr%3EBelow+is+a+list+of+open+tickets+that+haven%27t+received+an+update+in+a+week+or+longer.+Please+prioritize+updating+these+tickets%2C+especially+if+they+are+customer+facing.%3Cbr%3E%3Cbr%3E*+%3Ca+href%3D%5C%22https%3A%2F%2Fgoogle.com%5C%22%3EIT-12345%3C%2Fa%3E+%7C+I+need+access+to+Zoom%3Cbr%3E*+%3Ca+href%3D%5C%22https%3A%2F%2Fgoogle.com%5C%22%3EIT-32352%3C%2Fa%3E+%7C+My+keyboard+isn%27t+working%3Cbr%3E*+%3Ca+href%3D%5C%22https%3A%2F%2Fgoogle.com%5C%22%3EIT-43256%3C%2Fa%3E+%7C+VPN+keeps+disconnecting+from+my+preferred+portal%3Cbr%3E%3Cbr%3EThank+you%21%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

Because we are notifying a user of information that requires action, we will be following the [Actionable Updates](https://developer.moveworks.com/creator-studio/design-patterns/dp-10) design pattern.

## Creator Studio Components

✨ **Triggers:**

1. Scheduled automation in Jira Automation

🏃‍♂️ **Actions:**

1. Provide links to open tickets that need to be updated directly to each assignee/agent

## API Research

### API #1: Events API

We will be utilizing Events API to send notifications iteratively on a list of assignees and open tickets from Jira automation.

![Screenshot 2024-06-14 at 1.49.55 PM.png](Use%20Case%20Tutorial%20Jira%20Agent%20Nudge%2066648eda57984e2cb7a82f66c4ce19fd/Screenshot_2024-06-14_at_1.49.55_PM.png)

# Steps

## Step 1: Decide what qualifies as a “stale” ticket

Put some thought into what would qualify a ticket that needs to be nudged — Is it 3 days since last update? 7 days? Are there specific States within your Jira environment where an agent is expected to action?

For our purposes, we decided a stale ticket would be in the state `Waiting for Support` and hasn't been updated in 7 days or longer. This accounts for tickets that are waiting for the assignee and haven't been updated in some time.

## Step 2: Translate the above into a JQL query

The JQL for our above qualifications is:

```jsx
status = "Waiting for support" and updated <= -7d and assignee is not EMPTY
```

## Step 3: Create your Event ID and API key as necessary

Follow our docs [here](https://developer.moveworks.com/creator-studio/quickstart/events/) if you need help!

## Step 4: Build in Jira Automation

1. Navigate to the Project settings for the applicable Jira Project
2. Select `Create Rule`

1. Replicate the following rule — note a second lookup is required in the FOR branch to pull the issues again for the agents returned in the first lookup. This is unfortunately a limitation in Jira Automation today.

    ![Screenshot 2024-06-14 at 2.08.36 PM.png](Use%20Case%20Tutorial%20Jira%20Agent%20Nudge%2066648eda57984e2cb7a82f66c4ce19fd/Screenshot_2024-06-14_at_2.08.36_PM.png)

![Screenshot 2024-06-14 at 2.09.57 PM.png](Use%20Case%20Tutorial%20Jira%20Agent%20Nudge%2066648eda57984e2cb7a82f66c4ce19fd/Screenshot_2024-06-14_at_2.09.57_PM.png)

The body for the POST events message is as follows:

```jsx
{
"message": "Hope you had a great weekend.<br>Below is a list of open tickets that haven't received an update in a week or longer. Please prioritize updating these tickets, especially if they are customer facing.<br><br>{{#lookupIssues}}<br><ul><li>Issue Key: <a href=\"{{url}}/\">{{key}}</a><br></li><li>Summary: {{Summary}}</li><br><li>Assignee: {{assignee.emailAddress}}</li></ul><br>{{/}}",
"recipients": [
"{{assignee.emailAddress}}"
]
}
```

# Congratulations

Now that you’ve built out a scheduled automation in Jira complete with actionable links, your agents will now know what to prioritize for the week ahead and can do so easily!
