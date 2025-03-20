---
description: A plugin that lets user identify which epics have been rolled over to
  a new sprint.
fidelity: GUIDE
difficulty_level: BEGINNER
time_in_minutes: 30
name: Look up Delayed Epics
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+make+sure+my+projects+don%27t+get+delayed+twice%2C+which+of+my+active+epics+have+been+rolled+over+already%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Rollover+Epics%3C%2Fb%3E%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+active+epics+that+have+been+rolled+over%3A%3Cbr%3E%5Cn%3Cbr%3E%5Cn1.+%3Cstrong%3EEpic+Name%3A%3C%2Fstrong%3E+Migrate+ETL+infrastructure+to+new+platform%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3ECurrent+Due+Date%3A%3C%2Fstrong%3E+January+27%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EPrevious+Due+Date%3A%3C%2Fstrong%3E+January+20%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EKey%3A%3C%2Fstrong%3E+ME-13%3Cbr%3E%5Cn%3Cbr%3E%5Cn2.+%3Cstrong%3EEpic+Name%3A%3C%2Fstrong%3E+Creator+Studio+Bugs%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3ECurrent+Due+Date%3A%3C%2Fstrong%3E+February+22%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EPrevious+Due+Date%3A%3C%2Fstrong%3E+February+12%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EKey%3A%3C%2Fstrong%3E+CSB-10%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Engineering
- IT
- Project Management
systems:
- jira
---
# **Introduction**

JIRA is a leading platform for managing projects and tasks across various industries. The **Look up Delayed Epics** designed to help teams track epics that have been carried over to a new sprint in Jira.

By integrating this feature into your bot, users can quickly identify which epics were not completed in their original sprint and have been rolled over, enabling better sprint planning and backlog management. This eliminates the need for manual tracking, saving time and improving project visibility.

This guide walks you through adding the **Identify Rolled-Over Epics** feature to your bot using **Creator Studio**.

Let's get started!

# **Prerequisites**

- Jira Connector built in Creator Studio (follow the [Jira Authentication](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EI+want+to+make+sure+my+projects+don%27t+get+delayed+twice%2C+which+of+my+active+epics+have+been+rolled+over+already%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ECheck+Rollover+Epics%3C%2Fb%3E%3Cbr%3E%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+active+epics+that+have+been+rolled+over%3A%3Cbr%3E%5Cn%3Cbr%3E%5Cn1.+%3Cstrong%3EEpic+Name%3A%3C%2Fstrong%3E+Migrate+ETL+infrastructure+to+new+platform%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3ECurrent+Due+Date%3A%3C%2Fstrong%3E+January+27%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EPrevious+Due+Date%3A%3C%2Fstrong%3E+January+20%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EKey%3A%3C%2Fstrong%3E+ME-13%3Cbr%3E%5Cn%3Cbr%3E%5Cn2.+%3Cstrong%3EEpic+Name%3A%3C%2Fstrong%3E+Creator+Studio+Bugs%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3ECurrent+Due+Date%3A%3C%2Fstrong%3E+February+22%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EPrevious+Due+Date%3A%3C%2Fstrong%3E+February+12%2C+2025%3Cbr%3E%5Cn%26nbsp%3B-+%3Cstrong%3EKey%3A%3C%2Fstrong%3E+CSB-10%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch epic key.
- **Actions**:
    1. **Retrieve Inprogress Epic Details**:
        - Retrieve all details of in-progress epics and fetch the unique epic keys of epics whose due date is not null.
    2. **Fetch Changelog Information**:
        - Use the retrieved epic key to fetch the changelog details for that particular epic.
    3. Guidelines:
        1. None

# **API Research**

To efficiently implement the use case of fetching issues linked to a specific epic, we utilize two APIs with JQL filters.

![Delayed epics.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/fea6d706-1514-4e67-af30-aa7976eb8f46.png)

## **API #1: Search for Inprogress Epics**

The [Search for Inprogress epic issues using JQL enhanced search (GET)](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-jql-get) API enables you to retrieve in-progress epics using Jira Query Language (JQL). This API is ideal for filtering epics that are not closed across all accessible projects. It also supports additional query parameters for refining search results, such as specifying fields to include in the response.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/search/jql?jql=project%20%3D%20HSP&nextPageToken=%3Cstring%3E&maxResults={maxResults}&fields={fields}&expand=%3Cstring%3E&reconcileIssues={reconcileIssues}' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

## **API #2: Get changelogs**

Once the epic’s unique key is identified, the [Get changelogs](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issues/#api-rest-api-3-issue-issueidorkey-changelog-get) API can be used to fetch due date details of that particular epic.

```bash
curl --request GET \
  --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issueIdOrKey}/changelog' \
  --user 'email@example.com:<api_token>' \
  --header 'Accept: application/json'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the rolled-over epics :
    1. **Search for Inprogress Epics**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![action.webp](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/action.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://your-domain.atlassian.net/rest/api/3/search?jql=issuetype=Epic AND statusCategory!= Done&fields=key,summary,duedate' \
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
            ```
            
        - Click on `Use Existing Connector` > select the [**Jira** **connector**](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
        - **Query** **Parameters** :
            - Key ( **jql** ) : Value ( **issuetype=Epic AND statusCategory!= Done”** )
                - This JQL filter narrows the search to issues of type "Epic" that are not in the "Done" status category, helping you find epics that are still in progress or incomplete.
            - Key ( **fields** ) : Value ( **key,summary,duedate ..etc** )
                - This JQL query retrieves only the specified fields from the response, ensuring a focused and concise dataset.
                    
                    ![Screenshot 2025-02-18 at 1.21.56 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.21.56_PM.png)
                    
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-02-18 at 1.24.09 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.24.09_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-02-18 at 1.27.02 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.27.02_PM.png)
            
    2. **Retrieve changelog details**
        - Repeat the steps above to create another action.
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://your-domain.atlassian.net/rest/api/3/issue/{issue_key}/changelog' \
              --user 'email@example.com:<api_token>' \
              --header 'Accept: application/json'
            ```
            
        - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.
        - **Input Variables** :
            - issue_key : Example Value ( NT-13 ).
                
                ![Screenshot 2025-02-18 at 1.32.15 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.32.15_PM.png)
                
        - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
            
            ![Screenshot 2025-02-18 at 1.32.51 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.32.51_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button.
            
            ![Screenshot 2025-02-18 at 1.36.48 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.36.48_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![compound action.webp](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/compound_action.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-02-18 at 1.39.19 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.39.19_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: search_for_inprogress_epic_issues
          output_key: search_result
      - script:
          output_key: filtered_epics
          input_args:
            issues: data.search_result.issues
          code: >
            filtered = []
    
            for issue in issues:
              summary = issue["fields"]["summary"]
              key = issue["key"]
              duedate = issue["fields"].get("duedate")
              if duedate:
                filtered.append({"epic_name": summary, "key": key, "current_duedate": duedate})
            return filtered
      - for:
          each: epic
          steps:
            - action:
                action_name: fetch_changelog_for_inprogress_epic_issues
                input_args:
                  issue_key: epic.key
                output_key: changelog_result
          index: epic_index
          in: data.filtered_epics
          output_key: changelog_data
      - script:
          output_key: extracted_changelog_data
          input_args:
            changelog_data: data.changelog_data
          code: |
            return [entry["changelog_result"] for entry in changelog_data]
      - script:
          output_key: rolled_over_epics
          input_args:
            changelog_data: data.extracted_changelog_data
            filtered_epics: data.filtered_epics
          code: |
            rolled_over = []
            for i in range(len(changelog_data)):
              changelog = changelog_data[i]
              epic = filtered_epics[i]
              issue_details = changelog.get("values", [])
              if not issue_details:
                continue
              latest_due_date_change = None
              for values in issue_details:
                for item in values.get("items", []):
                  if item.get("field") == "duedate" and item.get("from"):
                    latest_due_date_change = item.get("from")
              if latest_due_date_change:
                rolled_over.append({
                  "epic_name": epic["epic_name"],
                  "key": epic["key"],
                  "previous_due_date": latest_due_date_change,
                  "current_due_date": epic["current_duedate"]
                })
            return rolled_over
      - return:
          output_mapper:
            Delayed_epics: data.rolled_over_epics
    ```
    
- Click the `Submit` button to save your changes.

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-02-18 at 1.41.34 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.41.34_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-02-18 at 1.42.03 PM.png](Look%20up%20Delayed%20Epics%204cee06a04c2346979461a3f82128b84f/Screenshot_2025-02-18_at_1.42.03_PM.png)
    
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

You've just added the Jira "**Look up Delayed Epics**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.