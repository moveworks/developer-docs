---
design_pattern_id: 12
name: Workday - Retrieving upcoming birthdays using reporting
description: Uses the Workday reporting engine to fetch any birthdays
systems: [workday]
purple_chat_link: https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7525%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+you+tell+me+of+any+upcoming+birthdadys%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EGET+call+to+WorkDay+RaaS+report+for+upcoming+birthdays%3Cbr%3E%3Cbr%3EResponse%3A%3Cbr%3E%7B%3Cbr%3E%5Ct%5C%22Report_Entry%5C%22%3A+%5B%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-17%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Emma+Hobson%5C%22%3Cbr%3E%5Ct%5Ct%7D%2C%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-17%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Enrique+Vasquez%5C%22%3Cbr%3E%5Ct%5Ct%7D%2C%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-18%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Min-gyu+Kang+%EF%BC%88%EA%B0%95%EB%AF%BC%EA%B7%9C%EF%BC%89%5C%22%3Cbr%3E%5Ct%5Ct%7D%2C%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-19%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Maximilian+Schneider%5C%22%3Cbr%3E%5Ct%5Ct%7D%3Cbr%3E%5Ct%5D%3Cbr%3E%7D%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESure%2C+here+are+some+upcoming+birthdays%3A%3Cbr%3E%3Cbr%3E-+Emma+Hobson%27s+birthday+is+on+January+17th+%3Cbr%3E-+Enrique+Vasquez%27s+birthday+is+also+on+January+17th+%3Cbr%3E-+Min-gyu+Kang%27s+birthday+is+on+January+18th+%3Cbr%3E-+Maximilian+Schneider%27s+birthday+is+on+January+19th+%3Cbr%3E%3Cbr%3ELet+me+know+if+you+need+information+on+more+birthdays.%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 10
difficulty_level: Beginner
---

# **Introduction**

Workday's Reports-as-a-Service (RaaS) is a powerful feature that revolutionizes data access and integration in the Workday ecosystem. By allowing custom reports to be exposed as web services, RaaS facilitates seamless data interactions with external systems. 

By bringing these reports into Creator Studio, we can add a conversational interface to them, making it easier than ever for your users to get access to the data that lies within Workday.

In this tutorial, we will explore how to call RaaS from Creator Studio. To guide us, we will be using a pre-built report that gets the upcoming birthdays.

Let's get started!

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A7525%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+you+tell+me+of+any+upcoming+birthdadys%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EGET+call+to+WorkDay+RaaS+report+for+upcoming+birthdays%3Cbr%3E%3Cbr%3EResponse%3A%3Cbr%3E%7B%3Cbr%3E%5Ct%5C%22Report_Entry%5C%22%3A+%5B%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-17%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Emma+Hobson%5C%22%3Cbr%3E%5Ct%5Ct%7D%2C%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-17%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Enrique+Vasquez%5C%22%3Cbr%3E%5Ct%5Ct%7D%2C%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-18%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Min-gyu+Kang+%EF%BC%88%EA%B0%95%EB%AF%BC%EA%B7%9C%EF%BC%89%5C%22%3Cbr%3E%5Ct%5Ct%7D%2C%3Cbr%3E%5Ct%5Ct%7B%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Next_Birthday%5C%22%3A+%5C%222024-01-19%5C%22%2C%3Cbr%3E%5Ct%5Ct%5Ct%5C%22Worker%5C%22%3A+%5C%22Maximilian+Schneider%5C%22%3Cbr%3E%5Ct%5Ct%7D%3Cbr%3E%5Ct%5D%3Cbr%3E%7D%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESure%2C+here+are+some+upcoming+birthdays%3A%3Cbr%3E%3Cbr%3E-+Emma+Hobson%27s+birthday+is+on+January+17th+%3Cbr%3E-+Enrique+Vasquez%27s+birthday+is+also+on+January+17th+%3Cbr%3E-+Min-gyu+Kang%27s+birthday+is+on+January+18th+%3Cbr%3E-+Maximilian+Schneider%27s+birthday+is+on+January+19th+%3Cbr%3E%3Cbr%3ELet+me+know+if+you+need+information+on+more+birthdays.%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

**This use case is made up of:**

✨ **Triggers:** Natural Language

🤲 **Slots**: None

🏃‍♂️ **Actions:** Retrieve data from workday report

📜 **Response Data:** The data from a RaaS report

📚 **Guidelines:** Select fields to render from RaaS report

Based on the needs of this use case, we should build a [Static Query](https://developer.moveworks.com/creator-studio/resources/design-pattern?id=static-query)

## API Design

There’s only 1 API needed to build this use case.

### API #1: Get RaaS Report

Since we want to get a RaaS report, we only need to reference the report in our API call and get the results from the report to display within Creator Studio.

# **Prerequisites**

- A connection to Workday, [follow our guide.](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday)
- A user login to Workday.

# **Walkthrough**

## **Step 1: Get the URL for the Report**

In this step, we will get the URL for the report we want to run within Creator Studio. We are using a pre-made report as part of this example but you can call any report that already exists or that you create using these steps.

We are going to use the *Alert - Birthdays for this week and next* report to get the upcoming birthdays for this example.

1. Login to Workday and search for “All Custom Reports” in the search bar.
    
    ![Search for all custom reports in workday](images/Untitled.png)
    
2. Filter *Custom Report Name* by “Birthday”.
3. Check the box next to “Alert - Birthdays for this week and next” and filter.
    
    ![choose the "Alert - birthdays for this week and next"](images/Untitled%201.png)
    
4. Click on the link for “Alert - Birthdays for this week and next”.
    
    ![shows the report from the search results](images/Untitled%202.png)
    
5. From the ellipse drop-down, go to *Web Service → View URLs.*
    
    ![the ellipse for the report to show custom actions](images/Untitled%203.png)
    
6. You will get a dialogue to sign in, press cancel and copy the URL after *[wd2-impl-services1.workday.com](http://wd2-impl-services1.workday.com)* 
    
    ![browser window showing url](images/Untitled%204.png)
    
    which should look something like this:
    
    <pre>/ccx/service/customreport2/[your_tenant]/[your user_name]/Alert_-_Birthdays_for_this_week_and_next</pre>
    

    
    **Note**: Don’t copy the *format* parameter on the end, we will put this in manually within Creator Studio. Your report may have other parameters as well if you have chosen one that takes inputs. Make note of these parameters and the format so you can call them in the next step.
    

## **Step 2: Build in Creator Studio**

We will now go into Creator Studio to create the query. You can follow [our guides](https://developer.moveworks.com/creator-studio/quickstart/queries/) for more complex setup however we will go into the specific areas of note for our sample report in the following.

1. Under Queries, click *CREATE* to create a new query.
    
    ![create button highlighted in creator studio queries page](images/Untitled%205.png)
    
2. Give it a name and description.
    
    ![basic info page of creating a query in creator studio](images/Untitled%206.png)
    
    **Note:** The description will be part of how Moveworks finds the query when a user is searching so try to use a description that makes sense.
    
    Click *Next.*
    
3. Choose the connector you created previously, [follow our guide](https://developer.moveworks.com/creator-studio/resources/authentication-guide?id=workday) if you haven’t already done so.
    
    ![choose a system with workday as the chosen system](images/Untitled%207.png)
    
    Click *Next*
    
4. Paste the URL you copied earlier and add any parameter(s) from earlier under *Query parameters*. In this example report, we only had one parameter - *format -* which had a value of “rss”. “rss” isn’t a format we support but “json” is, so we will use this in place.
    
    ![api connection parameters ](images/Untitled%208.png)
    
    Click *Next.*
    
5. Click *Test* to test the report call to ensure this will work as expected, you should see something similar to the following:
    
    ![additional query parameters for api connection](images/Untitled%209.png)
    
    Click *Next.*
    
6. Now we will choose the values of the json that we want to display when running this query. In this example, we only have two return values so our setup is quite simple however you can follow [our guides](https://developer.moveworks.com/creator-studio/quickstart/queries/) if your example is more complex and you want to understand the nuances of this screen.
    
    ![choose fields to return to the copilot](images/Untitled%2010.png)
    
    Click *Next.*
    
7. We have no follow up actions so just click *Next.*
    
    ![follow up actions is empty](images/Untitled%2011.png)
    
8. Fill in your sample utterances so we understand how we want to call this. I put in three:
    - What are the upcoming birthdays?
    - Who has the next birthday?
    - When is the next birthday in workday?
    
    ![utterances to trigger](images/Untitled%2012.png)
    
    Click *Next.*
    
9. From a testing perspective, you may want to launch to yourself first or you can launch to all users. Don’t forget to click the checkbox!
    
    ![launch screen showing launch to all users](images/Untitled%2013.png)
    
    Click *Launch.*
    

## Step 3: See it in action!

Trigger the use case by asking for it from your Copilot. 

![real image of copilot in action showing the query and upcoming birthdays](images/Untitled%2014.png)

# Congratulations!

Without having to write a line of code, you just added a RaaS report to query Workday from within your copilot! Now you might want to look at some of your other reports to apply what you have learned and pull even more data and use cases.