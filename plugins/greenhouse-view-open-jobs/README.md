---
description: A plugin that allows an employee to identify open roles at the company.
fidelity: GUIDE
difficulty_level: BEGINNER
time_in_minutes: 20
name: View Open Jobs
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+roles+in+PM+are+available%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%5Cn%E2%9C%85+Working+on+%3Cb%3EOpen+PM+Roles+Available%3C%2Fb%3E%5Cn%3Cbr%3E%5Cn%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Open+Jobs%3C%2Fb%3E%5Cn%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+current+open+PM+roles+we+have%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+Senior+Product+Manager%3C%2Fp%3E%5Cn%3Cp%3E2.+Product+Manager+-+New+Initiatives%3C%2Fp%3E%5Cn%3Cp%3E3.+Associate+Product+Manager%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- HR
- HR - Recruiting & Talent
systems:
- greenhouse
---
# **Introduction**

Greenhouse is a leading Applicant Tracking System (ATS) that helps companies streamline their hiring process. The **View Open Jobs** plugin allows employees to easily identify open roles within their organization.

By integrating this feature into your bot, you enable employees to quickly explore available job opportunities without manually searching through Greenhouse, enhancing internal mobility and referral opportunities.

This guide walks you through adding the **View Open Jobs** feature to your bot using **Creator Studio**.

Let's get started!

# **Prerequisites**

- [Postman](https://www.postman.com/) or an API Testing Tool

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22What+open+roles+in+PM+are+available%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3E%5Cn%E2%9C%85+Working+on+%3Cb%3EOpen+PM+Roles+Available%3C%2Fb%3E%5Cn%3Cbr%3E%5Cn%E2%8F%B3+Calling+Plugin+%3Cb%3EView+Open+Jobs%3C%2Fb%3E%5Cn%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EHere+are+the+current+open+PM+roles+we+have%3A%3C%2Fp%3E%5Cn%3Cp%3E1.+Senior+Product+Manager%3C%2Fp%3E%5Cn%3Cp%3E2.+Product+Manager+-+New+Initiatives%3C%2Fp%3E%5Cn%3Cp%3E3.+Associate+Product+Manager%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. None.
- **Actions**:
    1. **Retrieve Open Job Listings**:
        - Fetch all currently open job roles within the company
- **Guidelines:**
    1. None
- **Note:**
    - The Greenhouse [List Jobs](https://developers.greenhouse.io/job-board.html#list-jobs) API doesn’t have a query filtering option. However, the Moveworks Reasoning Engine has the capability to filter open jobs based on the user’s query.

# **API Research**

To efficiently implement the use case of fetching open jobs, we utilize a single API endpoint. This provides a comprehensive list of all open positions, ensuring employees have visibility into available opportunities.

![open jobs.png](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/open_jobs.png)

## **API #1: List Jobs**

The [**List Jobs**](https://developers.greenhouse.io/job-board.html#list-jobs) endpoint allows you to retrieve a list of all currently open job roles within the company. Job board data is publicly available, so authentication is not required for any GET endpoints.

```bash
curl --request GET \
  --url 'https://boards-api.greenhouse.io/v1/boards/<your_company_name>/jobs' \
```

# **Steps**

## **Step 1: Build HTTP Action**

- Define your HTTP Actions for fetching all the open jobs within the company :
    1. **Search for Epic by Name**
        - In Creator Studio, create a new Action.
            - Navigate to `Plugins` section > `Actions` tab
            - Click on `CREATE` to define a new action
                
                ![getGithubContentProxy.webp](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/getGithubContentProxy.webp)
                
        - Click on the `IMPORT CURL` option and paste the following cURL command:
            
            ```bash
            curl --request GET \
              --url 'https://boards-api.greenhouse.io/v1/boards/<your_company_name>/jobs' \
            ```
            
        - Click `Test` to verify if the Connector setup is successful. You should see the request response on the left and the generated output schema on the right. Since the API response schema is long, trim the **Output Schema** to include only the necessary details for accurate results. You can use the sample Output Schema provided below for this use case. Refer to the **Prune Response Schema** section in this [documentation](https://help.moveworks.com/docs/http-actions) for guidance.
            
            ![Screenshot 2025-02-20 at 9.50.30 PM.png](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/Screenshot_2025-02-20_at_9.50.30_PM.png)
            
            ```bash
            {
                "type": "object",
                "properties": {
                    "meta": {
                        "type": "object",
                        "properties": {
                            "total": {
                                "type": "integer"
                            }
                        }
                    },
                    "jobs": {
                        "type": "array",
                        "items": {
                            "type": "object",
                            "properties": {
                                "title": {
                                    "type": "string"
                                },
                                "absolute_url": {
                                    "type": "string"
                                },
                                "id": {
                                    "type": "integer"
                                },
                                "location": {
                                    "type": "object",
                                    "properties": {
                                        "name": {
                                            "type": "string"
                                        }
                                    }
                                },
                                "metadata": {
                                    "type": "array",
                                    "items": {
                                        "type": "object",
                                        "properties": {
                                            "value": {
                                                "type": "array",
                                                "items": {
                                                    "type": "string"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ```
            
        - Add the **Connector Name**, **API Name** and **API Description** as shown below, then click the `Save` button
            
            ![Screenshot 2025-02-20 at 9.55.08 PM.png](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/Screenshot_2025-02-20_at_9.55.08_PM.png)
            

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![getGithubContentProxy2.webp](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/getGithubContentProxy2.webp)
    
- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![Screenshot 2025-02-20 at 10.03.04 PM.png](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/Screenshot_2025-02-20_at_10.03.04_PM.png)
    
- Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```bash
    steps:
      - action:
          action_name: fetch_open_jobs
          output_key: fetch_open_jobs_result
      - return:
          output_mapper:
            job_details: data.fetch_open_jobs_result
    ```
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-02-21 at 6.12.40 PM.png](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/Screenshot_2025-02-21_at_6.12.40_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-02-21 at 6.11.18 PM.png](View%20Open%20Jobs%20cc32b564abca42d7bc6d808b48925edf/Screenshot_2025-02-21_at_6.11.18_PM.png)
    
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

You've just added the Greenhouse "**View Open Jobs**" feature to your Copilot! Explore our other guides for more inspiration on what to build next.