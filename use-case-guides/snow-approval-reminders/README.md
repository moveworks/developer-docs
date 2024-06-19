---
design_pattern_id: 10
name: ServiceNow Approval Reminders
description: Optimizing Workflow Efficiency with Automated Approval Reminders in ServiceNow
systems: [servicenow]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Event+triggered+approval+reminders%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EServiceNow+Flow+Designer%3A+Scheduled+job+that+runs+once+a+day%2Fweek%2Fmonth%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EYour+pending+approval+request+for+request+%3Ca+href%3D%5C%22https%3A%2F%2Fmoveworks.ai%5C%22%3ERITM0123456+is+due+for+a+review.%3C%2Fa%3E%3Cbr%3E%3Cbr%3E%F0%9F%91%89+%3Cb%3EPlease+review+your+request+and+update+as+necessary%3C%2Fb%3E%3Cbr%3E%3Cbr%3E%F0%9F%91%89+You+can+review+your+current+approvals+by+typing+%3Cb%3E%5C%22Show+me+my+approvals%5C%22%3C%2Fb%3E+below%3C%2Fp%3E%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D
time_in_minutes: 45
difficulty_level: Beginner
---

# Introduction

In the modern business environment, ensuring the timely processing of requests is crucial for maintaining workflow efficiency and employee satisfaction. However, in the bustling day-to-day activities, approval requests can often be overlooked or delayed, causing bottlenecks in operations. Addressing this challenge, our use case tutorial introduces an innovative solution leveraging ServiceNow alongside Moveworks Events to automate approval reminders. By setting up daily, weekly, or monthly reminders, users are prompted about their outstanding requests, thus streamlining the approval process and enhancing overall productivity.

This tutorial will walk you through leveraging the powerful capabilities of ServiceNow's Flow Designer to implement this solution seamlessly within your organization. Whether you're looking to minimize delays in approval processes or ensure that no request goes unnoticed, this guide provides step-by-step instructions to enhance your workflow management through effective reminder automation.

# Prerequisites

- Proficiency in using ServiceNow Flow Designer

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Event+triggered+approval+reminders%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EServiceNow+Flow+Designer%3A+Scheduled+job+that+runs+once+a+day%2Fweek%2Fmonth%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EYour+pending+approval+request+for+request+%3Ca+href%3D%5C%22https%3A%2F%2Fmoveworks.ai%5C%22%3ERITM0123456+is+due+for+a+review.%3C%2Fa%3E%3Cbr%3E%3Cbr%3E%F0%9F%91%89+%3Cb%3EPlease+review+your+request+and+update+as+necessary%3C%2Fb%3E%3Cbr%3E%3Cbr%3E%F0%9F%91%89+You+can+review+your+current+approvals+by+typing+%3Cb%3E%5C%22Show+me+my+approvals%5C%22%3C%2Fb%3E+below%3C%2Fp%3E%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D) shows the experience we are going to build. 

Based on the needs of this use case, we will be building an **Information Updates** design pattern.

## Creator Studio Components

✨ **Triggers:** 

1. Scheduled ServiceNow Flow Designer job.

🏃‍♂️ **Actions:** 

1. Call to action to action on approval request.

## API Research

### API #1: Events API

In our quest to automate approval reminders efficiently, the heart of our implementation strategy will be the ServiceNow Flow Designer, specifically tasked with triggering the Moveworks Events API through the Moveworks Send Message Action.

![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled.png)

The operational blueprint is devised as follows:

1. **Trigger Creation**: The inception of an approval record serves as the trigger, marking the start of our automated reminder process.
2. **Conditional Sequence**: Utilizing the flow logic, we introduce a “Do Until” loop. This loop will persist until a specific criterion, predefined by us, is met.
3. **Time-bound Waiting**: A crucial step involves incorporating a wait job. This job is programmed to halt the process until a specified time interval—be it a day, a week, or a month—has elapsed.
4. **Status Check**: Post waiting period, an "If" logic is implemented to examine if the approval record remains in the 'requested' state. This step is pivotal for determining whether a reminder needs to be dispatched.
5. **Message Dispatch**: Concluding our procedure, if the record is indeed still pending, the flow will trigger an API call to send a tailored message to the user, serving as a reminder for the pending approval.

This strategic alignment of triggers, conditional logic, and timed actions, coupled with the communicative prowess of the Moveworks API, embodies our comprehensive approach to mitigating delays in the approval process through timely reminders.

# Steps

## Step 1: Build the ServiceNow Flow

### Install Moveworks SDK for ServiceNow

1. Install our Moveworks API SDK For ServiceNow
    1. Make sure to install the Flow Designer Action Update Set
2. Head to the Flow Designer tool on ServiceNow’s sidebar

![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%201.png)

### Set up ServiceNow Flow

1. In the Flow Designer, create a new **Flow**
    1. Please name the Flow as you like, we will name it *Moveworks Approval Reminder*
        
        ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%202.png)
        
2. For the **Trigger:**
    1. Set the Trigger field to **Created**
    2. Set the Table field to the **Approval [sysapproval_approver]** table
    3. Set the condition to **State is Requested**
        
        ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%203.png)
        
3. To set up the **Actions**
4. Add a **Do the following until** flow in the **Flow Logic** tab
    
    ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%204.png)
    
5. Set up the Condition to stop until the state of the approval record is **not Requested**
    
    ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%205.png)
    
6. Add a **Wait for a duration of time** flow logic under the **Do the following until** flow logic and set it to 168 hours (7 days)
    
    ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%206.png)
    
7. Add an **If** flow logic after the **Wait** flow logic to check if the approval record is still in the **Requested** state
    
    ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%207.png)
    
8. Add a **Moveworks Send Message** Action to the If logic if the condition is met
    1. Set up the recipient
        1. The recipient will be the approval record approver’s email
        2. Setup the message you would like to send the approver 
            
            ```
            Your pending approval request for request <ahref="https://{servicenow-instance}.service-now.com/nav_to.do?uri=sysapproval_approver.do?sysparm_query=sysapproval.number=RITM0123456^approver={user.sys_id}"> is due for a review.
            <br>
            :point_right: <b>Please review your request and update as necessary</b>
            
            :information_source: You can review your current approvals by typing <b>"Show me my approvals"</b> below :point_down:
            ```
            
            ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%208.png)
            
9. Your Flow should look like this:
    
    ![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%209.png)
    

## Step 2: See it in action!

An event will be sent to the user once the job is triggered and the approval record meets the conditions!

![Untitled](Use%20Case%20Tutorial%20ServiceNow%20Approval%20Reminders%20a8e075be60c94c77b1e4da9ac249d5ce/Untitled%2010.png)

# Congratulations!

You have successfully navigated through the intricacies of setting up automated approval reminders within ServiceNow. By leveraging the powerful combination of ServiceNow Flow Designer and the Moveworks Events API, you've taken a significant step towards optimizing workflow efficiency and ensuring that approval requests are completed in a timely manner.

This tutorial guided you through each pivotal stage - from the trigger initiation upon an approval record's creation, employing conditional logic to ascertain the need for reminders, to the pivotal dispatch of messages to users reminding them of their pending requests. Your ability to integrate these components demonstrates not only technical proficiency but also a commitment to enhancing operational processes within your organization.

We hope this tutorial has empowered you with the knowledge and confidence to implement automated approval reminders effectively. This isn't just a step forward in streamlining your approval processes; it's a leap towards maximizing productivity, reducing bottlenecks, and improving overall satisfaction across your teams.

Congratulations once again on completing this tutorial. Your efforts today lay the groundwork for more efficient, responsive, and user-friendly workflow management. Here's to many more successful implementations in your journey towards employee optimization!