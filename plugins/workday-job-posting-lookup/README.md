---
description: A plugin that allows employees to see what current job postings are available.
fidelity: GUIDE
difficulty_level: INTERMEDIATE
time_in_minutes: 20
installation_asset_uuid: d4c77fd3-b3c7-4c70-a9ee-760b76040063
name: View Open Job Postings
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A8197%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22Can+I+see+the+current+job+postings%3F%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3ESure%2C+here%27s+the+latest+list+from+Workday%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22Software+Engineer%22%2C%22text%22%3A%22Join+our+tech+team+and+work+on+innovative+projects.+Ideal+for+those+passionate+about+coding+and+technology.%22%7D%2C%7B%22title%22%3A%22Marketing+Specialist%22%2C%22text%22%3A%22Help+us+enhance+our+brand+presence+and+engage+our+audience.+Perfect+for+creative+and+strategic+thinkers.%22%7D%2C%7B%22title%22%3A%22Product+Manager%22%2C%22text%22%3A%22Lead+the+development+of+our+next+product+line.+Suitable+for+visionary+leaders+with+a+knack+for+product+development.%22%7D%2C%7B%22title%22%3A%22HR+Coordinator%22%2C%22text%22%3A%22Support+our+team+in+creating+a+great+workplace.+Great+for+individuals+passionate+about+people+and+culture.%22%7D%5D%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22Visit+Careers+Page%22%7D%2C%7B%22text%22%3A%22Contact+HR+for+More+Info%22%7D%5D%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D%7D%5D%7D
solution_tags:
- HR
- HR - Recruiting & Talent
systems:
- workday

---
# **Introduction :**

Workday is a leading enterprise management platform, and the **“View Open Jobs”** feature allows users to access current job openings. Integrating this functionality into your bot enables users to seamlessly browse job listings, enhancing efficiency and organization.

This guide provides step-by-step instructions for incorporating the **View Open Jobs** feature into your bot using Creator Studio.

Let's get started!

# Prerequisites :

- [Postman](https://www.postman.com/) or an API Testing Tool
- Follow the [Workday Connector guide](https://developer.moveworks.com/creator-studio/resources/connector?id=workday) to set up your Creator Studio Connector.

# What are we building?

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22Can+I+see+the+current+job+postings%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ESure%2C+here%27s+the+latest+list+from+Workday%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3ESoftware+Engineer%3C%2Fb%3E%3Cbr%3EJoin+our+tech+team+and+work+on+innovative+projects.+Ideal+for+those+passionate+about+coding+and+technology.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EMarketing+Specialist%3C%2Fb%3E%3Cbr%3EHelp+us+enhance+our+brand+presence+and+engage+our+audience.+Perfect+for+creative+and+strategic+thinkers.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EProduct+Manager%3C%2Fb%3E%3Cbr%3ELead+the+development+of+our+next+product+line.+Suitable+for+visionary+leaders+with+a+knack+for+product+development.%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EHR+Coordinator%3C%2Fb%3E%3Cbr%3ESupport+our+team+in+creating+a+great+workplace.+Great+for+individuals+passionate+about+people+and+culture.%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. Fetch open job posting.
- **Actions**:
    1. **Fetch open jobs:**
        - The process of retrieving a list of current job openings from a system.
- **Guidelines:**
    1. None

# **API Research**

To build this use case, we will utilize one API. Since our goal is to fetch the current job openings, we will focus on workday-related APIs. Only a single API call is required to achieve this.

![image.png](image.png)

## API #1: **Fetch open jobs**

The **Get Job openings** API enables users to retrieve comprehensive details about open job postings from Workday. By leveraging Workday's reporting and APIs, this functionality ensures efficient and precise data retrieval, even in environments with a large number of job openings.

- **Purpose**: Retrieves detailed job requisition data, including: **Job Title, Job Description**
- **Features**: Job listings based on **Job Title, Job Description**, ensuring accurate and relevant results, even in large datasets.
- **Example**: Fetch job requisition details based on specific criteria such as **Job Title, Job Description**
    
    ```bash
    curl --request GET
    --location 'https://<DOMAIN>.myworkday.com/api/recruiting/v3/<INSTANCE>/jobPostings' \
    --header 'Content-Type: application/json'
    ```
    

# **Steps**

## **Step 1: Build HTTP Action**

Define your HTTP Actions for fetching all the backlog ideas of a specific project :

### **1. Fetch open jobs**

- In Creator Studio, create a new Action.
    - Navigate to plugin section > Actions tab
    - Click on CREATE to define a new action
        
        ![m1.png](m1.png)
        
- Click on the  IMPORT CURL option and paste the following cURL command:
    
    ```bash
    curl --request GET
    --location 'https://<DOMAIN>.myworkday.com/api/recruiting/v3/<INSTANCE>/jobPostings' \
    --header 'Content-Type: application/json'
    ```
    
- Click on Use Existing Connector > select the Workday [](https://developer.moveworks.com/creator-studio/resources/connector/?id=jira)connector that you just created > Click on Apply. This will populate the Base URL and the Authorization section of the API Editor.
- Click on Test to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the GENERATE FROM RESPONSE button to refresh and align the schema with the API response.
    
    ![image.png](image%201.png)
    
- Add the **API Name** and **API Description** as shown below, then click the Save button
    
    ![image.png](image%202.png)
    

## **Step 2: Build Compound Action**


- Head over to the **Compound Actions** tab and click **CREATE**
    
    ![m2.png](m2.png)
    
- Give your Compound Action a **Name** and **Description** , then click Next Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
    
    ![image.png](image%204.png)
    
- Click on the Script editor tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
    
    ```yaml
    steps:
      - action:
          action_name: View_Jobs
          progress_updates:
            on_complete: Retrieved job postings
            on_pending: Retrieving postings
          output_key: View_Jobs_result
      - return:
          output_mapper:
            list:
              MAP():
                converter:
                  title: item.title
                  jobDescription: item.jobDescription
                items: data.View_Jobs_result.data
    ```
    

## **Step 3: Publish Workflow to Plugin**

- Head over to the Compound Actions tab and click on the kebab menu ( ︙ )
- Next, click on Publish Workflow to Plugin
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![image.png](image%205.png)
    
- Next, consider whether to select the User consent required before execution? checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![image.png](image%206.png)
    
- Click Next and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
    - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
- Lastly, click Next and set the **Launch Rules** you want your plugin to abide by.
    - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules

## **Step 4: See it in action!**

- After clicking the final Submit button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support

# **Congratulations!**

You've just added the **"View Open Jobs"** feature inside your workday to your Copilot! Explore our other guides for more inspiration on what to build next.