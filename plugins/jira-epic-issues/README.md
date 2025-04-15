---
accreditations:
- DEFAULT
description: A plugin that allows efficient searching for JIRA issues linked to a
  specific EPIC, helping improve project tracking.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: b78be395-bfad-4642-8c53-6efbf77e9235
name: Look up JIRA Issues for an Epic
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHey%2C+can+you+find+tickets+in+JIRA+that+are+part+of+Creator+Studio+epic%3F%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cstrong%3EEPIC+Summary+%3C%2Fstrong%3Efor+%3Cstrong%3ECreator+Studio%3C%2Fstrong%3E+epic%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EI+found+some+tickets+related+to+Creator+Studio+epic.+Here+they+are%3A%3Cbr%2F%3E%5Cn%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-321%3C%2Fb%3E%3Cbr%3EUpdate+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-321%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-322%3C%2Fb%3E%3Cbr%3EDesign+new+user+dashboard.+Goal+is+to+improve+user+engagement+by+redesigning+the+main+dashboard+interface.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-322%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cb%3ETICKET-323%3C%2Fb%3E%3Cbr%3ERefactor+backend+for+better+performance.+This+task+focuses+on+backend+improvements+to+enhance+overall+system+performance.%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22TICKET-323%22%2C%22connectorName%22%3A%22jira%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
time_in_minutes: 30
---

# **Introduction**

JIRA is a leading platform for managing projects and tasks across various industries. The **Fetch Linked Issues of an Epic** plugin enhances project tracking by providing quick and effortless access to all issues associated with a specific epic.

By integrating this feature into your bot, you empower users to look up and manage linked issues conversationally, reducing time spent navigating JIRA and improving team productivity.

This guide walks you through adding the **Fetch Linked Issues of an Epic** feature to your bot using **Creator Studio**.

Let's get started!

# **Prerequisites**

- [Postman](https://www.postman.com/) or an API Testing Tool
- Jira Connector built in Creator Studio (follow the [Jira Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A9037%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EHey%2C+can+you+find+tickets+in+JIRA+that+are+part+of+epic+%27Creator+Studio%27+%3F%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EEPIC+Summary+%3C%2Fb%3Efor+EPIC+%27Creator+Studio%27%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EI+found+some+tickets+related+to+EPIC+%27Creator+Studio%27.+Here+they+are%3A%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22TICKET-321%22%2C%22text%22%3A%22Update+login+functionality.+This+involves+enhancements+to+our+current+login+flow+to+increase+security+and+usability.%22%7D%2C%7B%22title%22%3A%22TICKET-322%22%2C%22text%22%3A%22Design+new+user+dashboard.+Goal+is+to+improve+user+engagement+by+redesigning+the+main+dashboard+interface.%22%7D%2C%7B%22title%22%3A%22TICKET-323%22%2C%22text%22%3A%22Refactor+backend+for+better+performance.+This+task+focuses+on+backend+improvements+to+enhance+overall+system+performance.%22%7D%5D%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch epic key.
- **Actions**:
    1. **Retrieve Epic Details**:
        - Query the specified epic name to fetch its unique epic key.
    2. **Fetch Linked Issues Information**:
        - Use the retrieved epic key to fetch the linked issues for that epic. Utilize JQL (Jira Query Language) to filter results and specify required fields, such as summary, assignee, status, etc.
- **Guidelines**:
    1. None

# **API Research**

To efficiently build the use case of fetching issues linked to a specific epic, we utilize a single API with two different JQL filters. This approach simplifies integration and reduces redundancy while leveraging the power of Jira Query Language (JQL).

![Epic issues.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/f2236b3c-8558-4350-8f3e-82956e3a5739.png)

## **API #1: Search for Epic by Name**

The [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API enables you to retrieve epics based on their name using Jira Query Language (JQL). By applying a filter for `issuetype=Epic` and searching for the desired epic name, you can retrieve its unique key and any additional fields required for further operations.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## **API #2: Retrieve Issues Linked to the Epic**

Once the epic's unique key is identified, the same [**Search for issues using JQL enhanced search (GET)**](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API can be used with a different JQL filter to fetch all issues linked to the epic.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the linked issues of a specific epic :
    1. **Search for Epic by Name**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action

            
            ![getGithubContentProxy (1).png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/step%20one.png)
            
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://your-domain.atlassian.net/rest/api/3/project/search?jql=issuetype=Epic AND summary~"{{EPIC_NAME}}"&fields=key,summary'\
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
            ```
            
        - Click on `Use Existing Connector` > select the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Query** **Parameters** :
            - Key ( **jql** ) : Value ( **issuetype=Epic AND summary~"{{EPIC_NAME}}”** )
                - This JQL filter narrows the search to issues of type "Epic" and matches the specified epic name using a partial or complete string.
            - Key ( **fields** ) : Value ( **key,summary ..etc** )
                - This JQL query retrieves only the specified fields from the response, ensuring a focused and concise dataset.
                
                ![Screenshot 2025-01-15 at 4.57.08 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_4.57.08_PM.png)
                
        - **Input Variables** :
            - EPIC_NAME : Example Value ( **Testing Rollover Epics** ).
                
                ![Screenshot 2025-01-15 at 4.57.15 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_4.57.15_PM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-01-15 at 4.57.34 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_4.57.34_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-01-15 at 4.57.45 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_4.57.45_PM.png)
            
        
    2. **Retrieve Issues Linked to the Epic**
        - Repeat the steps above to create another action.
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://your-domain.atlassian.net/rest/api/3/project/search?jql=parent={{EPIC_KEY}}&fields=summary,assignee,emailAddress,status'\
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
            ```
            
        - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.
        - **Query** **Parameters** :
            - Key ( **jql** ) : Value ( **parent={{EPIC_KEY}}** )
                - This JQL query filters out open Epics by excluding completed ones and ensuring each Epic has an assigned user.
            - Key ( **fields** ) : Value ( **summary,assignee,emailAddress,status..etc** )
                - This JQL query retrieves only the specified fields from the response, ensuring a focused and concise dataset.
                
                ![Screenshot 2025-01-15 at 5.07.24 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.07.24_PM.png)
                
        - **Input Variables** :
            - EPIC_NAME : Example Value ( **BACKLOG-10** ).
                
                ![Screenshot 2025-01-15 at 5.07.30 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.07.30_PM.png)
                
        - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
            
            ![Screenshot 2025-01-15 at 5.07.43 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.07.43_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button.
            
            ![Screenshot 2025-01-15 at 5.07.55 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.07.55_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![getGithubContentProxy (2).png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/step%20two.png)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-01-15 at 5.20.08 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.20.08_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: get_epic_key_id
          input_args:
            EPIC_NAME: data.EPIC_NAME
          output_key: get_epic_key_id_result
      - action:
          action_name: fetch_linked_jira_issues_by_epic
          input_args:
            EPIC_KEY: data.get_epic_key_id_result.issues[0].key
          output_key: fetch_linked_jira_issues_by_epic_result
      - return:
          output_mapper:
            results: data.fetch_linked_jira_issues_by_epic_result.issues
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    
    ![Screenshot 2025-01-15 at 5.20.59 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.20.59_PM.png)
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-01-15 at 5.26.57 PM.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.26.57_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-15 at 5.26.57 PM copy.png](Look%20up%20JIRA%20Issues%20for%20an%20Epic%209c26fe0785024292801e70c76c0b89ae/Screenshot_2025-01-15_at_5.26.57_PM_copy.png)
    
- Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
    - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
- Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
    - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules

## **Step 4: See it in action!**

- After clicking the final `Submit` button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support

# **Congratulations!**

You've just added the Jira "**Fetch Linked Issues of an Epic**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.