---
availability: VALIDATED
description: A plugin that searches online results from the Perplexity search engine.
name: Search Perplexity
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+won+the+Superbowl+2024%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%3Cbr%3ERequest+to+Perplexity+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22prompt%5C%22%3A+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EOutbound+Response+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22result%5C%22%3A+%5C%22The+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%5C%22%3Cbr%3E%7D%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+was+the+QB+for+the+opposing+team%3F%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22%3Cbr%3E%3Cbr%3ERequest+to+Perplexity+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22prompt%5C%22%3A+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EOutbound+Response+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22result%5C%22%3A+%5C%22Brock+Purdy%5C%22%3Cbr%3E%7D%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII%2C+which+was+held+in+2024%2C+was+Brock+Purdy%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Productivity
systems:
- perplexity
video: https://youtu.be/krteejLKJUQ
---

# Introduction

[Perplexity](https://www.perplexity.ai/) is a search engine that continuously indexes the web and allows you to access LLMs that have access to that content. 

In this tutorial, we will demonstrate how to retrieve online search results from Perplexity through Creator Studio.

Let's get started!

# What are we building?

## Conversation Design

[This purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6159%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+won+the+Superbowl+2024%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%3Cbr%3ERequest+to+Perplexity+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22prompt%5C%22%3A+%5C%22Who+won+the+Superbowl+in+2024%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EOutbound+Response+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22result%5C%22%3A+%5C%22The+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%5C%22%3Cbr%3E%7D%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+Kansas+City+Chiefs+won+Super+Bowl+LVIII+in+the+year+2024%2C+defeating+the+San+Francisco+49ers+with+a+final+score+of+25-22+in+overtime.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EWho+was+the+QB+for+the+opposing+team%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3EMoveworks+rephrases+query+to+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22%3Cbr%3E%3Cbr%3ERequest+to+Perplexity+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22prompt%5C%22%3A+%5C%22Who+was+the+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII+in+2024%3F%5C%22%3Cbr%3E%7D%3Cbr%3E%3Cbr%3EOutbound+Response+%28abbrievated%29%3A%3Cbr%3E%7B%3Cbr%3E%5C%22result%5C%22%3A+%5C%22Brock+Purdy%5C%22%3Cbr%3E%7D%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EThe+quarterback+for+the+San+Francisco+49ers+in+Super+Bowl+LVIII%2C+which+was+held+in+2024%2C+was+Brock+Purdy%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

## Creator Studio Components

- Triggers:
    1. Natural language
- Slots:
    1. A search query
- Actions
    1. Retrieve LLM output
- Guidelines
    1. None

Based on the needs of this use case, we should build a **Custom RAG Query**.

## API Research

There’s only 1 API needed to build this use case. If we look at Perplexity’s API reference, there’s only one endpoint: [Chat Completions](https://docs.perplexity.ai/reference/post_chat_completions).

Based on the [Supported Models](https://docs.perplexity.ai/guides/model-cards) documentation, we want to do an online search, so we should use either `llama-3.1-sonar-small-128k-online` or `llama-3.1-sonar-large-128k-online`. We should be careful about [pricing](https://docs.perplexity.ai/docs/pricing) for these models.

# Prerequisites

- A Perplexity Connection (follow [our guide](../../connectors/perplexity/README.md))

# Steps

## Step 1: Build in Creator Studio

### Setup use case

1. Start in the Queries Workspace and create a new query.
2. Provide the Basic Info so the Next Gen Copilot knows how to use this plugin
    1. Label: `Browse the Internet`
    2. Short Description: `Uses Perplexity to search for up-to-date information on the web. Information is usually 1-3 days old.`

### Setup the API

1. Select [the perplexity integration](../../connectors/perplexity/README.md) you set up earlier.
    
    ![Untitled](Use%20Case%20Tutorial%20Perplexity%20Online%20Search%20f1697b887ee94a45a422a1c4e988bada/Untitled.png)
    
2. Define your API action for browsing the internet.
    
    ```bash
    curl --request POST \
         --url https://api.perplexity.ai/chat/completions \
         --header 'accept: application/json' \
         --header 'content-type: application/json' \
         --data '
    {
      "model": "llama-3.1-sonar-large-128k-online",
      "messages": [
        {
          "role": "system",
          "content": "Use all available internet information to answer the question precisely, accurately, and concisely."
        },
        {
          "role": "user",
          "content": "{{query}}"
        }
      ]
    }
    '
    ```
    
    - Path: `/chat/completions`
    - Method: `POST`
    - Request Body:
        
        ```json
        {
          "model": "llama-3.1-sonar-large-128k-online",
          "messages": [
            {
              "role": "system",
              "content": "Use all available internet information to answer the question precisely, accurately, and concisely."
            },
            {
              "role": "user",
              "content": "{{query}}"
            }
          ]
        }
        ```
        
    - Headers:
        
        
        | Key | Value |
        | --- | --- |
        | accept | application/json |
        | content-type | application/json |
3. Test your setup in Creator Studio and look for a successful execution.
    
    ![Untitled](Use%20Case%20Tutorial%20Perplexity%20Online%20Search%20f1697b887ee94a45a422a1c4e988bada/Untitled%201.png)
    

### Label the API Response

1. Select the `role` as the identifier
2. Select the `content` as the description
    
    ![Untitled](Use%20Case%20Tutorial%20Perplexity%20Online%20Search%20f1697b887ee94a45a422a1c4e988bada/Untitled%202.png)
    
3. No follow-up action is needed.

### Setup your Generative Intent

Since we want the full question to be sent to Perplexity, we need to disable smart extraction on the natural language slot. To do this, we need the `Keyword` to match the `User utterance example` for every example.

![Untitled](Use%20Case%20Tutorial%20Perplexity%20Online%20Search%20f1697b887ee94a45a422a1c4e988bada/Untitled%203.png)

We are going to want a pretty wide generative intent here since this can handle all internet queries. Here are some you can use

1. Who won the superbowl this week?
2. What are the top trending movies on Netflix?
3. What's the stock price of Apple?
4. What happened to Salesforce recently in the news?
5. Which movies are currently topping the box office?
6. Who are the headliners for Coachella this year?
7. Give me a list of the top 25 companies in the F500
8. Which companies IPO'ed recently?
9. What are the latest advancements in renewable energy?
10. Which countries have made it to space?

### Launch the use case

Use our [Launch Rules](https://developer.moveworks.com/creator-studio/launch-options/) to launch your use case to your Copilot. 

## Step 3: See it in action!

Trigger the use case by asking for it from your Copilot. Find interesting ways to combine it with your own enterprise data.

Check out [this example](https://www.linkedin.com/feed/update/urn:li:activity:7163521696874844160?updateEntityUrn=urn%3Ali%3Afs_feedUpdate%3A%28V2%2Curn%3Ali%3Aactivity%3A7163521696874844160%29):

1. Combines stock information with employee data
2. Combines public news with internal documentation

Note: It could take a couple minutes before your flow shows up in your copilot. If it doesn’t show up after five minutes, follow [our troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support) to further debug.

# Congratulations!

You just added Perplexity Online Search results to your Copilot! Check out our other guides for inspiration on what to build next.
