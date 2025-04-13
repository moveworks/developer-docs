---
description: A plugin that allows referrers to track the status of their submitted
  job referrals, including updates on application review, interview progress and hiring
  decisions.
difficulty_level: BEGINNER
fidelity: TEMPLATE
installation_asset_uuid: 6611f3b9-b8d5-47d0-9632-3861b55fffc6
name: View My Referral Status
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+the+status+of+my+referral%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+candidate%27s+email.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22johndoe%40gmail.com%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%F0%9F%94%8D+Referral+Status+for+johndoe%40gmail.com%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EJob+Applied+For%3A%3C%2Fb%3E+Software+Engineer%3C%2Fli%3E%3Cli%3E%3Cb%3EApplication+Status%3A%3C%2Fb%3E+In+Review%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Stage%3A%3C%2Fb%3E+Interview+Scheduled%3C%2Fli%3E%3Cli%3E%3Cb%3EUpcoming+Interview%3A%3C%2Fb%3E+February+20%2C+2025%2C+at+10%3A00+AM+%28PST%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Doe+Referral%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Recruiting & Talent
systems:
- greenhouse
time_in_minutes: 30
---

# **Introduction**

Greenhouse is a leading Applicant Tracking System (ATS) that helps companies streamline their hiring process. The **View My Referral Status** plugin allows employees to track the status of their submitted job referrals effortlessly.

By integrating this feature into your bot, you enable referrers to stay informed about their referral’s progress, including updates on application review, interview stages and final hiring decisions—eliminating the need for manual follow-ups.

This guide walks you through adding the **View My Referral Status** feature to your bot using **Creator Studio.**

Let’s get started!

# **Prerequisites**

- Greenhouse Connector built in Creator Studio (follow the [Greenhouse Authentication](https://developer.moveworks.com/creator-studio/resources/connector?id=greenhouse) guide to create your connector)

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Check+the+status+of+my+referral%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Please+provide+the+candidate%27s+email.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22johndoe%40gmail.com%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%F0%9F%94%8D+Referral+Status+for+johndoe%40gmail.com%3A%22%7D%2C%7B%22richText%22%3A%22%3Cul%3E%3Cli%3E%3Cb%3EJob+Applied+For%3A%3C%2Fb%3E+Software+Engineer%3C%2Fli%3E%3Cli%3E%3Cb%3EApplication+Status%3A%3C%2Fb%3E+In+Review%3C%2Fli%3E%3Cli%3E%3Cb%3ECurrent+Stage%3A%3C%2Fb%3E+Interview+Scheduled%3C%2Fli%3E%3Cli%3E%3Cb%3EUpcoming+Interview%3A%3C%2Fb%3E+February+20%2C+2025%2C+at+10%3A00+AM+%28PST%29%3C%2Fli%3E%3C%2Ful%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22John+Doe+Referral%22%2C%22connectorName%22%3A%22greenhouse%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Referral Candidate email
- **Actions**:
    1. **List Users**:
        - Fetch the user ID using the employee's email ID.
    2. **List Candidates:**
        - Retrieve referred candidates, their statuses and current hiring stages.
- **Guidelines:**
    1. None

# **API Research**

To enable referrers to track their submitted job referrals, we utilize two API endpoints. These allow us to identify the referrer and retrieve details on the referred candidates, including their application status, interview progress and hiring decisions.

## **API #1: List Users**

The [List Users](https://developers.greenhouse.io/harvest.html#get-list-users) endpoint retrieves user details based on their email ID. This is essential for verifying the referrer and fetching their Greenhouse User ID.

```bash
curl 'https://harvest.greenhouse.io/v1/users'
--user '<api_key>:'
```

## **API #2: List Candidates**

The [List Candidates](https://developers.greenhouse.io/harvest.html#get-list-candidates) endpoint retrieves user details based on their email ID. This is essential for verifying the referrer and fetching their Greenhouse User ID.

```bash
curl 'https://harvest.greenhouse.io/v1/candidates'
--user '<api_key>:'
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching submitted job referrals, including tracking application review, interview progress and hiring decisions:
    1. **Fetch Referrer’s User ID**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy.webp](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/getGithubContentProxy.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl 'https://harvest.greenhouse.io/v1/users?email={{user.email_addr}}'
            ```
            
        - **Query Parameters :**
            - Key ( user ) : Value ( **{{user.email_addr}}** )
                
                ![Screenshot 2025-03-06 at 11.09.09 AM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_11.09.09_AM.png)
                
        - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
            
            ![Screenshot 2025-03-06 at 11.08.37 AM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_11.08.37_AM.png)
            
        - Add the **Connector Name**, **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-03-06 at 11.10.17 AM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_11.10.17_AM.png)
            
    2. **Retrieve referred candidate details**
        - Repeat the steps above to create another action.
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl 'https://harvest.greenhouse.io/v1/candidates?email={{candidate_email}}'
            ```
            
        - Use the existing connector by following the steps outlined in the previous point to populate the Base URL and Authorization section.
        - **Query Parameters :**
            - Key ( email ) : Value ( **{{candidate_email}}** )
                
                ![Screenshot 2025-03-06 at 11.51.50 AM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_11.51.50_AM.png)
                
        - **Input Variables** :
            - candidate_email : Example Value ( test@gmail.com ).
        - Test the Connector setup as described earlier to verify the response. If the output schema is incorrect or missing, click `GENERATE FROM RESPONSE` to update it.
            
            ![Screenshot 2025-03-06 at 11.53.12 AM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_11.53.12_AM.png)
            
        - Add the **API Name** and **API Description** as shown below, then click the `Save` button.
            
            ![Screenshot 2025-03-06 at 5.22.07 PM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_5.22.07_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![compound action.webp](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/compound_action.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-03-06 at 2.05.22 PM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_2.05.22_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: fetch_user_details
          input_args:
            email: meta_info.user.email_addr
          output_key: fetch_user_details_result
      - action:
          action_name: get_candidate_details_by_email
          input_args:
            candidate_email: data.candidate_email
          output_key: get_candidate_details_by_email_result
      - script:
          output_key: filtered_referrals
          input_args:
            user_id: data.fetch_user_details_result.id
            candidate_data: data.get_candidate_details_by_email_result
          code: >
            filtered_referrals = []
    
            candidate_data = candidate_data[0] if candidate_data and ("applications" in candidate_data[0]) else candidate_data or {}
    
            applications = candidate_data.get("applications",[])
    
            for application in applications:
              source_name = application.get("source", {}).get("public_name", "N/A")
              credited_to = application.get("credited_to", {}).get("id", None)
              first_name = candidate_data.get("first_name", "Unknown")
              last_name = candidate_data.get("last_name", "Unknown")
    
              if source_name == "Referral" and credited_to == user_id:
                filtered_referrals.append({
                  "first_name": first_name,
                  "last_name": last_name,
                  "job_name": application["jobs"][0]["name"] if application.get("jobs") else "N/A",
                  "last_activity_at": application.get("last_activity_at", "N/A"),
                  "status": application.get("status", "N/A"),
                  "current_stage": application.get("current_stage", {}).get("name", "N/A")
                })
            return filtered_referrals
      - return:
          output_mapper:
            Referred_Candidate_Updates: data.filtered_referrals
    ```
    
- Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
    
    ![Screenshot 2025-03-06 at 5.13.16 PM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_5.13.16_PM.png)
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-03-06 at 5.17.06 PM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_5.17.06_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-03-06 at 5.15.58 PM.png](View%20My%20Referral%20Status%2019f588d8909f8003b098c697f717f333/Screenshot_2025-03-06_at_5.15.58_PM.png)
    
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

You've just added the Greenhouse "**View My Referral Status**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.