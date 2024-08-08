---
design_pattern_id: 28
name: Smartsheet Account Manager Lookup
description: Lookup account related details from Smartsheet
systems: [smartsheet]
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6290%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Who+is+the+Samantha+the+primary+account+manager+for%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searches+Smartsheet+for+applicable+resources%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Samantha+Miranda+is+the+primary+account+manager+for+ACME+Corp.%22%7D%5D%7D%7D%5D%7D
time_in_minutes: 15
difficulty_level: Beginner
---

# Introduction

Many organizations leverage Smartsheet to store data in a tabular format. That data can be queried through Moveworks by setting up a simple Queries Workspace Use Case using Creator Studio.

# Prerequisites

- Access to the Smartsheet you would like to query
- Admin Access in Smartsheet to set up the application
- Follow the Smartsheet authentication guide to set up your Smartsheet application and get your API Key.

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6290%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Who+is+the+Samantha+the+primary+account+manager+for%3F%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Searches+Smartsheet+for+applicable+resources%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22Samantha+Miranda+is+the+primary+account+manager+for+ACME+Corp.%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build. 

## Creator Studio Components

**Triggers:** 

1. Natural Language

**Slots**: 

1. User-supplied account name

**Actions:** 

1. Query smartsheet and return account details

**Guidelines:** 

1. None

## API Research

For this tutorial, we leverage the Sheets API provided by Smartsheet. View [their documentation](https://smartsheet.redoc.ly/?_gl=1*xk04ko*_ga*OTEwMTc0OTcwLjE2OTgxNzEzMzQ.*_ga_ZYH7XNXMZK*MTcwNjEyMjE5NC45LjEuMTcwNjEyMjU5Mi41OS4wLjA.&_ga=2.171566696.992426594.1706122195-910174970.1698171334#section/Code-Walkthrough/How-to-Read-a-Sheet-Response) for more info on how to query data in Sheets.

### API #1: Query Data in a Smartsheet

- Example endpoint: https://api.smartsheet.com/2.0/sheets/

# Steps

## Step 1: Find your Smartsheet Sheet ID

Before you configure your use case, you must have is a sheetId. To find a sheetId through the UI, with the sheet open, click "Sheet Actions" in the left toolbar and select "Properties". You can also use the [List Sheets](https://smartsheet.redoc.ly/tag/sheets#operation/list-sheets) API if you would like to perform this step programmatically.

## Step 2: Configure the Query in Moveworks Creator Studio

1. Under ‘Short Description’, describe what your use case does. E.g: Look up customer owner data from Smartsheet.

2. Choose Smartsheet Connector that you created in step 2 above

3. Map API endpoint path e.g:
    1.  `/2.0/sheets/{SHEET_ID}`
    2. Method = `GET`
    3. Click **Test** and ensure you are able to read back data.

4. API Labeling (Do this in advanced mode)
    1. Root element of the json response = ‘rows’
    2. Identifier (Required) = `cells.0.displayValue`
    3. Description (Required)  = ‘Client Name’
    4. ‘Additional Fields’ - see screenshot below
        1. In this case, we select `cells.2.value` for the third column, and `cells.1.value` for the second column.
        
        ![API Labeling](./Plugin%20Guide%20Query%20Account%20Manager/crest-1.png)
        
5. Then configure your ‘Triggering and parameters’ noting down the slot in the query.
    
    ![Triggering and Parameters](./Plugin%20Guide%20Query%20Account%20Manager/crest-2.png)
    
6. Set up launch

# Congratulations!

You just enabled your users to conversationally unlock and query data from Smartsheet without navigating to Smartsheet! Say good-bye to swivel chair and hello to querying data from multiple sources from one place! Check out our other guides for inspiration on what to build next.