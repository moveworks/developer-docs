---
description: Allows recruiters or HR to query the bot for a list of job referrals
  submitted by employees.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 63f848f8-860f-4023-8c02-2f55bcfcd556
name: View Submitted Referrals
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+employee+referrals+for+the+%3Cb%3ESoftware+Engineer%3C%2Fb%3E+role.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%F0%9F%94%8D+%3Cb%3EEmployee+Referrals+for+Software+Engineer%3A%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+John+Doe%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+Alice+Johnson%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+18%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Under+Review%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+Sarah+Smith%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+David+Lee%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+16%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Interview+Scheduled+%28Feb+22%2C+2025%29%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Recruiting & Talent
systems:
- greenhouse
time_in_minutes: 30
---

# **Introduction**

Greenhouse is a leading Applicant Tracking System (ATS) that helps companies streamline their hiring process. The **View Submitted Referrals** plugin enables recruiters and HR teams to retrieve a list of employee-submitted job referrals through the bot.

By integrating this feature into your bot, recruiters and HR professionals can efficiently track employee referrals, view candidate progress and stay updated on application statuses without manual searches—enhancing recruitment efficiency and employee engagement.

This guide walks you through adding the **View Submitted Referrals** feature to your bot using **Creator Studio**.

Let’s get started!

# **Prerequisites**

- Greenhouse Connector built in Creator Studio (follow the [Greenhouse Authentication](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+employee+referrals+for+the+%3Cb%3ESoftware+Engineer%3C%2Fb%3E+role.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%F0%9F%94%8D+%3Cb%3EEmployee+Referrals+for+Software+Engineer%3A%3C%2Fb%3E%22%7D%2C%7B%22richText%22%3A%22%3Col%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+John+Doe%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+Alice+Johnson%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+18%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Under+Review%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3Cli%3E%3Cb%3ECandidate%3A%3C%2Fb%3E+Sarah+Smith%3Cul%3E%3Cli%3E%3Cb%3EReferred+By%3A%3C%2Fb%3E+David+Lee%3C%2Fli%3E%3Cli%3E%3Cb%3EReferral+Date%3A%3C%2Fb%3E+February+16%2C+2025%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Status%3A%3C%2Fb%3E+Interview+Scheduled+%28Feb+22%2C+2025%29%3C%2Fli%3E%3C%2Ful%3E%3C%2Fli%3E%3C%2Fol%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. None.
- **Actions**:
    1. **Fetch Referral Applications**:
        - Retrieves a list of job applications submitted through employee referrals within the specified timeframe.
        - Uses the **List Applications** API to fetch applications based on `last_activity_after`
    2. **Fetch Candidate Details**
        1. Retrieves details of referred candidates, including their application status, interview progress, and hiring decisions.
        2. Uses the **List Candidates** API to fetch candidate details.
- **Guidelines:**
    1. Ensure only recruiters or HR team members can query referral details.
    2. The `last_activity_after` parameter should be used in the List Applications API call.
        1. **Default Value:** 14 days if the user does not provide a time period.
        2. **Recommendation:** Keep the default at **14 days**, assuming a moderate level of applications based on company referral trends.

# **API Research**

To implement the View Submitted Referrals plugin, we utilize two API endpoints. These APIs help retrieve job referrals submitted by employees, track application status and monitor interview progress and hiring decisions.

## **API #1: List Applications**

The [List Applications](https://developers.greenhouse.io/harvest.html#get-list-applications) endpoint retrieves all job applications, including those submitted via employee referrals.

```bash
curl 'https://harvest.greenhouse.io/v1/applications'
--user '<api_key>:'
```

## API #2: List Candidates

The [List Candidates](https://developers.greenhouse.io/harvest.html#get-list-candidates) endpoint fetches candidate details, allowing recruiters to track their progress through the hiring process.

```bash
curl 'https://harvest.greenhouse.io/v1/candidates'
--user '<api_key>:'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching job referrals submitted by employees. These actions retrieve application details and candidate information.
    1. **Fetch Referral Applications**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy.webp](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/getGithubContentProxy.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl 'https://harvest.greenhouse.io/v1/applications?last_activity_after={{last_activity_after}}'
            ```
            
        - **Query Parameters :**
            - Key ( last_activity_after ) : Value ( **{{last_activity_after}}** )
                
                ![Screenshot 2025-03-06 at 6.38.46 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.38.46_PM.png)
                
        - **Input Variables** :
            - last_activity_after : Example Value ( 2025-01-01 ).
                
                ![Screenshot 2025-03-06 at 6.38.56 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.38.56_PM.png)
                
        - Click `Test` to verify if the Connector setup is successful. You should see the request response on the left and the generated output schema on the right. Since the API response schema is long, trim the **Output Schema** to include only the necessary details for accurate results. You can use the sample Output Schema provided below for this use case. Refer to the **Prune Response Schema** section in this [documentation](https://help.moveworks.com/docs/http-actions) for guidance.
            
            ![Screenshot 2025-03-06 at 6.39.17 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.39.17_PM.png)
            
        - Add the **Connector Name**, **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-06 at 6.43.39 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.43.39_PM.png)
            
    2.  **Fetch Candidate Details**
        - Repeat the steps above to create another action.
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl 'https://harvest.greenhouse.io/v1/candidates/{{candidate_id}}'
            ```
            
        - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.
        - **Input Variables** :
            - candidate_id : Example Value ( 86777895003 ).
                
                ![Screenshot 2025-03-06 at 6.47.43 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.47.43_PM.png)
                
        - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
            
            ![Screenshot 2025-03-06 at 6.47.56 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.47.56_PM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button.
            
            ![Screenshot 2025-03-06 at 6.49.19 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.49.19_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![compound action.webp](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/compound_action.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-03-06 at 6.54.15 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.54.15_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: fetch_all_applications
          input_args:
            last_activity_after: data.last_activity_after
          output_key: fetch_all_applications_result
      - script:
          output_key: filtered_referrals
          input_args:
            applications: data.fetch_all_applications_result
          code: >
            filtered_referrals = []
    
            for application in applications:
              source_name = application.get("source", {}).get("public_name", "N/A")
              credited_to = application.get("credited_to", {})
    
              if source_name == "Referral":
                filtered_referrals.append({
                  "candidate_id": application["candidate_id"],
                  "referrer_name": application.get("credited_to", {}).get("name", "N/A"),
                  "job_name": application["jobs"][0]["name"] if application.get("jobs") else "N/A",
                  "last_activity_at": application.get("last_activity_at", "N/A"),
                  "status": application.get("status", "N/A"),
                  "current_stage": application.get("current_stage", {}).get("name", "N/A")
                })
            return filtered_referrals
      - for:
          each: referral
          steps:
            - action:
                action_name: fetch_candidate_details
                input_args:
                  candidate_id: referral.candidate_id
                output_key: fetch_candidate_details_result
            - script:
                output_key: enriched_referral
                input_args:
                  referral: referral
                  candidate: data.fetch_candidate_details_result
                code: |
                  candidate = candidate or {}
    
                  first_name = candidate.get("first_name", "Unknown")
                  last_name = candidate.get("last_name", "Unknown")
    
                  return {
                    "first_name": first_name,
                    "last_name": last_name,
                    "referrer_name": referral["referrer_name"],
                    "job_name": referral["job_name"],
                    "last_activity_at": referral["last_activity_at"],
                    "status": referral["status"],
                    "current_stage": referral["current_stage"]
                  }
          index: referral_index
          in: data.filtered_referrals
          output_key: final_referral_statuses
      - for:
          each: referral_entry
          steps:
            - try_catch:
                catch:
                  on_status_code:
                    - 500
                  steps:
                    - script:
                        output_key: merged_referral
                        input_args:
                          enriched_referral: referral_entry.enriched_referral
                        code: |
                          enriched_referral["first_name"] = "Unknown"
                          enriched_referral["last_name"] = "Unknown"
                          return enriched_referral
                try:
                  steps:
                    - script:
                        output_key: merged_referral
                        input_args:
                          candidate_details: referral_entry.fetch_candidate_details_result
                          enriched_referral: referral_entry.enriched_referral
                        code: >
                          enriched_referral["first_name"] = candidate_details["first_name"]
    
                          enriched_referral["last_name"] = candidate_details["last_name"]
    
                          attachments = candidate_details.get("attachments", [])
    
                          resume_url = "Not Available"
    
                          for attachment in attachments:
                            if attachment.get("type") == "resume":
                              resume_url = attachment.get("url", "Not Available")
                          enriched_referral["resume_url"] = resume_url
    
                          return enriched_referral
          index: merged_index
          in: data.final_referral_statuses
          output_key: fully_merged_referrals
      - return:
          output_mapper:
            Referred_Candidate_Updates: data.fully_merged_referrals
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    - Make sure to follow the guidelines when setting the **Description** in this case, as it will instruct the bot to always retrieve applications that have been active in the last 14 days.
    - Sample description :
        - **last_activity_after** : If the user specifies a time, use that. If not, always use the date from the last 14 days relative to the current date when the user triggers the plugin. The date format should be YYYY-MM-DD. Example: 2025-01-21
            
            ![Screenshot 2025-03-06 at 6.58.09 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-06_at_6.58.09_PM.png)
            

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-03-07 at 1.15.52 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-07_at_1.15.52_PM.png)
    
- Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
    - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
- Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
    - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules
    - For this plugin, select **"Launch to selected users"** and specify the emails of recruiters, as this plugin contains sensitive information. This ensures only authorized HR or recruiters can access **View Submitted Referrals**, maintaining data security.
        
        ![Screenshot 2025-03-07 at 1.19.14 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-07_at_1.19.14_PM.png)
        
        ![Screenshot 2025-03-07 at 1.19.28 PM.png](View%20Submitted%20Referrals%201a4588d8909f8051b662de01445c114c/Screenshot_2025-03-07_at_1.19.28_PM.png)
        

## **Step 4: See it in action!**

- After clicking the final `Submit` button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support 

# **Congratulations!**

You've just added the Greenhouse "**View Submitted Referrals**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.