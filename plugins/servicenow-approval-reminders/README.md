---
description: A plugin that reminds users about pending ServiceNow approvals.
design_pattern_id: 10
difficulty_level: BEGINNER
fidelity: GUIDE
name: Remind ServiceNow Approvers
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7970%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Afalse%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EServiceNow+Flow+Designer%3A+Scheduled+job+that+runs+once+a+day%2Fweek%2Fmonth%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EYour+pending+approval+request+for+request+%3Ca+href%3D%5C%22https%3A%2F%2Fmoveworks.ai%5C%22%3ERITM0123456+is+due+for+a+review.%3C%2Fa%3E%3Cbr%3E%3Cbr%3E%F0%9F%91%89+%3Cb%3EPlease+review+your+request+and+update+as+necessary%3C%2Fb%3E%3Cbr%3E%3Cbr%3E%F0%9F%91%89+You+can+review+your+current+approvals+by+typing+%3Cb%3E%5C%22Show+me+my+approvals%5C%22%3C%2Fb%3E+below%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- IT
systems:
- servicenow
time_in_minutes: 45
accreditations:
- kevmok
- DEFAULT
redirects:
- snow-approval-reminders
---

# Introduction

In today's fast-paced business world, delayed approvals can slow down work and frustrate employees. Our tutorial shows you how to solve this problem using ServiceNow and Moveworks Events to set up automated reminders.
You'll learn how to:

- Create automated reminders for approval requests
- Set up daily, weekly, or monthly reminder schedules
- Use ServiceNow's Flow Designer to implement this solution

This guide will help you:

- Speed up approval processes
- Prevent overlooked requests
- Improve workflow efficiency
- Increase employee satisfaction

By following these steps, you'll be able to streamline your approval system.

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

The architectural flow is devised as follows:

1. Start when an approval record is created
2. Begin a loop that continues until a condition is met
3. Wait for a set time (e.g., a day, week, or month)
4. Check if the approval is still pending
5. If pending, send a reminder message to the user

This process uses triggers, conditions, and timed actions with the Moveworks API to send timely reminders and reduce approval delays.

# Steps

## Step 1: Build the ServiceNow Flow

### Install Moveworks SDK for ServiceNow

1. [Download our Moveworks Events Update Set For ServiceNow](https://developer.moveworks.com/file-hosting/servicenow/moveworks.events.1.0.0.xml)
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
            
            ```html
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

Great job setting up automated approval reminders in ServiceNow! You've learned to use ServiceNow Flow Designer with the Moveworks Events API to:

- Trigger reminders when approval records are created
- Use conditions to decide when reminders are needed
- Send reminder messages to users with pending requests

This will help your organization:

- Improve workflow efficiency
- Complete approvals faster
- Reduce bottlenecks

Well done on finishing this tutorial!