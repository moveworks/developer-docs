---
description: A plugin that allows a user to rename a slack channel.
difficulty_level: INTERMEDIATE
fidelity: GUIDE
name: Rename Slack Channel
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A4128%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EJust+closed+the+deal%21+Can+you+convert+%23prospect-visa+to+%23customer-visa%3F+%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EOkay%2C+I+can+help+you+rename+a+Slack+channel.%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EPlease+confirm+your+request%3Cbr%3E%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3EChannel+to+rename%3A+%23prospect-visa%3Cbr%3ENew+channel+name%3A+%23customer-visa%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Yes%22%7D%2C%7B%22text%22%3A%22No%22%7D%2C%7B%22text%22%3A%22Edit+Request%22%7D%5D%7D%5D%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3ELooks+good%21%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EOkay%2C+your+channel+has+been+changed.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- IT
- Productivity
- Project Management
systems:
- slack
- workato
time_in_minutes: 60
---

# Introduction

Slack is a collaboration platform that allows you to create various channels for different topics. However, there might be occasions when your users want to rename some channels, but these need to be restricted only to certain channels (e.g. no one should be able to rename “general”)

In this tutorial, we will explore how to integrate Creator Studio with Slack for channel renaming.

Let's get started!

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22mocks%22%3A%5B%7B%22id%22%3A1636%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI+want+to+change+the+name+of+a+slack+channel%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EWhich+slack+channel+do+you+want+to+change%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3E%23prospect-visa%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EWhat+is+the+new+channel+name%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3E%23customer-visa%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EInbound+Request+to+Middleware%3A%3Cbr%3E%3Cbr%3E%7B%3Cbr%3E%5C%22old_name%5C%22%3A+%5C%22prospect-visa%5C%22%2C%3Cbr%3E%5C%22new_name%5C%22%3A+%5C%22customer-visa%5C%22%2C%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EProcess%3A%3Cbr%3E1.+Find+the+existing+channel+in+Slack%3Cbr%3E2.+Verify+the+channel+is+allowed+to+be+changed+%28not+a+special+channel%29%3Cbr%3E3.+Update+the+channel%3Cbr%3E%3Cbr%3EOutbound+Response%3A%3Cbr%3E%7B+%5C%22status%5C%22%3A+%5C%22ok%5C%22+%7D%2C+200%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThanks.+I%27ve+changed+the+channel+name.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%7D) shows the experience we are going to build.

This use case is made up of:

- Triggers:
    1. Natural Language
- Slots:
    1. An existing Slack channel name
    2. A new Slack channel name
- Actions
    1. Rename a channel
- Guidelines
    1. None

Based on the needs of this use case, we should build a [ID-Based Action Path](https://developer.moveworks.com/creator-studio/resources/design-pattern?id=id-based-action-path).

## API Research

There’s only 1 API needed to build this use case

### API #1: Rename a channel

Since we want to integrate with Slack Channels, we should look into their Web APIs. For this use case, it seems we will need two APIs:

![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled.png)

1. **[List Conversations API](https://api.slack.com/methods/conversations.list):** An API to list channels in the workspace
2. **[Rename Conversation API](https://api.slack.com/methods/conversations.rename):** An API to rename a channel given its ID

Both these APIs are hosted on the Slack Web API and should be authenticated with a bearer token. You can follow our [Authentication Guide: Slack API](../../connectors/slack/README.md) to create an API key with the right privileges.

# Prerequisites

- Access to the Slack Web APIs (follow [our guide](../../connectors/slack/README.md))
- An Workato APIM Endpoint (follow [our guide](../../connectors/workato/README.md))
- Postman

# Walkthrough

## Step 1: Build the “Rename Channel” API

### Setup Trigger

1. Open your Workato Recipe. If you don’t have it handy, [follow our guide](../../connectors/workato/README.md).
2. Add a Request JSON Schema
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%201.png)
    
3. Add a Response JSON Schema for successes
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%202.png)
    
4. Add a Response JSON Schema for failures
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%203.png)
    

### Validate Channel Name

1. Add an `IF condition`
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%204.png)
    
2. Configure the condition to match cases where the `old_name` is one of the protected channels (e.g. `general`, or `random`)
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%205.png)
    
3. Add an error response
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%206.png)
    

### Find Channel ID

1. Connect to your Slack environment
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%207.png)
    
2. Choose the `Custom Action`
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%208.png)
    
3. Select your connection, or set up a new one to Slack
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%209.png)
    
4. Setup the `conversations.list` endpoint
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2010.png)
    
5. It should return a list of channels to Workato
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2011.png)
    
6. Use [Workato Formulas](https://docs.workato.com/formulas/array-list-formulas.html#first) for lists to extract the ID of the channel that matches `old_name`
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2012.png)
    
7. Add an `IF condition` for if no `Target Channel ID` was found
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2013.png)
    
8. Return an error message if the channel isn’t found
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2014.png)
    

### Rename Channel

1. Add another Custom Slack Action for the `conversations.rename` endpoint
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2015.png)
    
2. Send it a sample channel ID & channel name
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2016.png)
    
3. Swap out the example values for your data pills
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2017.png)
    
4. Return a success message
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2018.png)
    

### Validate & Deploy API

You can follow our [system guide on Workato APIM](../../connectors/workato/README.md) to test & deploy your recipe. You should make sure that:

1. Protected channels return an error
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2019.png)
    
2. If a channel does not exist, the action fails
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2020.png)
    
3. The API success if everything is valid
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2021.png)
    
4. The channel name updates appropriately
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2022.png)
    

## Step 2: Build in Creator Studio

### Setup use case

1. Start in the Paths Workspace
2. Title your use case: Rename Slack Channel

### Build the conversation design

1. Start with a text slot for the old name
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2023.png)
    
2. Collect a text slot for the new name
    
    ![Untitled](Use%20Case%20Guide%20Rename%20Slack%20Channel%20da6e0d8cf5774fc397343685a5998988/Untitled%2024.png)
    
3. Add an API Action to execute your Workato Recipe.
    - Connector: Follow our [Workato APIM guide](../../connectors/workato/README.md).
    - Path: `/mw/ajay-merchia-vv1/rename-channel`
    - Method: `POST`
    - Headers:
        
        
        | Key | Value |
        | --- | --- |
        | Content-Type | application/json |
    - Request Body:
        
        ```python
        {
        	"old_name": "{{previous channel name}}",
        	"new_name": "{{name of new channel}}"
        }
        ```
        
    - Action Description: `Renames the Slack Channel`

### Build your generative intent & launch the use case

Build a [Generative Intent](https://developer.moveworks.com/creator-studio/paths/generative-intents/) and then use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot. 

## Step 3: See it in action!

Trigger the use case by asking for it from your Copilot. [Here’s a quick demo](https://www.youtube.com/watch?v=RfXXLWsqzE4).

# Congratulations!

You just added Slack Channel Renames to your Copilot! Say good-bye to those IT tickets. Check out our other guides for inspiration on what to build next.
