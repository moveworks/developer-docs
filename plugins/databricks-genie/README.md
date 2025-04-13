---
description: A plugin that allows you to ask queries through Databricks's AI/BI Genie.
fidelity: GUIDE
difficulty_level: BEGINNER
time_in_minutes: 30
installation_asset_uuid: 7eae9cd8-f515-4dd5-9c71-052c3bd74fc5
name: Databricks AI/BI Genie
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+are+the+top+5+sales+reps+in+terms+of%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EOpportunities+Created%3C%2Fli%3E%5Cn++%3Cli%3EOrders+Closed%3C%2Fli%3E%5Cn++%3Cli%3ERevenue+Generated%3Cbr%3E%5Cn%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ECalling+Databricks+Genie+Plugin%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EDatabricks+is+generating+SQL+query%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EReturning+result+from+Databricks%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+top+5+sales+reps%3A%3C%2Fp%3E%5Cn%3Col%3E%5Cn++%3Cli%3E%3Cstrong%3EJohn+Smith%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E45+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E1%2C571+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24310%2C320+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ERavi+Jain%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E48+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E1%2C441+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24209%2C320+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ELeslie+Brown%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E22+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E822+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24180%2C201+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EHarry+Jones%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E28+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E782+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24165%2C159+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EEmily+Chen%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E13+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E421+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%2449%2C601+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22databricks%22%2C%22citationTitle%22%3A%22Genie+Conversation%22%7D%5D%7D%5D%7D%5D%7D
solution_tags:
- Data Analysis
systems:
- databricks
---
# **Introduction**

****The **Databricks AI/BI Genie Plugin** allows your users to interact with Databricks's advanced AI and BI functionalities seamlessly through the Moveworks AI Assistant. This plugin enables users to effortlessly submit queries and gather insightful analytics directly from their Databricks data.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

# Prerequisites

- Access to Agent Studio
- Databricks Connector set up in Creator Studio
- Your SQL Warehouse selected for this Genie Space **must** be running in order for the plugin to function

# **What are we building?**

## **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWho+are+the+top+5+sales+reps+in+terms+of%3A%3C%2Fp%3E%5Cn%3Cul%3E%5Cn++%3Cli%3EOpportunities+Created%3C%2Fli%3E%5Cn++%3Cli%3EOrders+Closed%3C%2Fli%3E%5Cn++%3Cli%3ERevenue+Generated%3Cbr%3E%5Cn%3C%2Fli%3E%5Cn%3C%2Ful%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3ECalling+Databricks+Genie+Plugin%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EDatabricks+is+generating+SQL+query%3C%2Fp%3E%22%7D%2C%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3EReturning+result+from+Databricks%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+are+the+top+5+sales+reps%3A%3C%2Fp%3E%5Cn%3Col%3E%5Cn++%3Cli%3E%3Cstrong%3EJohn+Smith%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E45+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E1%2C571+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24310%2C320+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ERavi+Jain%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E48+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E1%2C441+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24209%2C320+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3ELeslie+Brown%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E22+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E822+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24180%2C201+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EHarry+Jones%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E28+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E782+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%24165%2C159+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn++%3Cli%3E%3Cstrong%3EEmily+Chen%3C%2Fstrong%3E%5Cn++++%3Col%3E%5Cn++++++%3Cli%3E13+Opportunities+Created%3C%2Fli%3E%5Cn++++++%3Cli%3E421+Orders+Closed%3C%2Fli%3E%5Cn++++++%3Cli%3E%2449%2C601+Revenue+Generated%3C%2Fli%3E%5Cn++++%3C%2Fol%3E%5Cn++%3C%2Fli%3E%5Cn%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22connectorName%22%3A%22databricks%22%2C%22citationTitle%22%3A%22Genie+Conversation%22%7D%5D%7D%5D%7D%5D%7D) shows the experience that we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we do recommend that you create a Databricks connector in Agent Studio before installing this plugin to streamline the process. Please follow our **Databricks Connector Guide** to do so. Once you have done this, simply follow our plugin installation documentation to get your plugin installed in minutes.

# Appendix

## A combination of 3 apis makes this possible:

1. This API endpoint allows users to start a conversation within a specified space in the Databricks AI/BI Genie.
    
    ```bash
    curl --request POST "https://${DATABRICKS_HOST}/api/2.0/genie/spaces/{{space_id}}/start-conversation" \
         --header "Authorization: Bearer ${DATABRICKS_TOKEN}" \
         --data '{
             "content": "{{user_query}}"
         }'
    ```
    
    - Required Parameters:
        - **`${DATABRICKS_HOST}`**: Replace this variable with your Databricks host URL.
        - **`{{space_id}}`**: Substitute this placeholder with the actual space ID, **received from the URL when the space is created**.
        - **`${DATABRICKS_TOKEN}`**: Use your actual Databricks token here for authentication.
        - **`user_query`**: Replace this with your query.
        
2. This API endpoint retrieves a specific message from a conversation within a designated space on Databricks.
    
    ```bash
    curl --request POST "https://${DATABRICKS_HOST}/api/2.0/genie/spaces/{space_id}/conversations/{conversation_id}/messages/{message_id}" \
         --header "Authorization: Bearer ${DATABRICKS_TOKEN}" \
    ```
    
    - **Required Parameters:**
        - **`{space_id}`**: The unique identifier of the space that contains the conversation, which will be the same as the above.
        - **`{conversation_id}`**: The unique identifier of the conversation from which you want to retrieve the message, obtained from the response of the above api.
        - **`{message_id}`**: The unique identifier of the message you wish to retrieve, obtained from the response of the above api.
        
3. Get the result of SQL query if the message has a query attachment. This is only available if a message has a query attachment and the message status is `EXECUTING_QUERY` OR `COMPLETED`.
    
    ```bash
    curl --request GET "https://${DATABRICKS_HOST}/api/2.0/genie/spaces/{{space_id}}/conversations/{{conversation_id}}/messages/{{message_id}}/attachments/{{attachment_id}}/query-result" \
         --header "Authorization: Bearer ${DATABRICKS_TOKEN}" \
    ```
    
    - **Required Parameters:**
        - **`{{space_id}}`**: The unique identifier for the space where the conversation is hosted, same as before.
        - **`{{conversation_id}}`**: The unique identifier for the conversation from which the message originates, same as before.
        - **`{{message_id}}`**: The unique identifier for the message containing the attachment, same as before.
        - **`{{attachment_id}}`**: The unique identifier for the specific query result attachment you wish to retrieve, obtained from above api’s response.
