---
accreditations:
- DEFAULT
description: A plugin that lets an employee ask ChatGPT a question or summarize a
  sentence.
difficulty_level: BEGINNER
fidelity: GUIDE
installation_link: https://my.moveworks.com/crest-nextgen/crest-nextgen/home?externalAssetId=037fed63-d2a5-4586-ac84-250a5dcd1649
name: Ask GPT
num_implementations: 1
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI%27m+trying+to+come+up+with+some+fun+team+bonding+activities+to+do+at+our+offsite+this+Friday.+What+do+you+recommend+for+a+team+that%27s+in+their+mid+30s%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EAsk+GPT%3C%2Fb%3E%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EFor+a+group+in+their+mid-30s+seeking+fun+team+bonding+activities+at+an+offsite%2C+it%27s+a+great+idea+to+blend+both+playful+and+intellectually+stimulating+activities.+Here+are+a+mix+of+activities+that+could+cater+to+various+interests%3A%3Cbr%3E%3Cbr%3E%3Cb%3E1.+Escape+Room+Challenge%3C%2Fb%3E%3Cbr%3EDivide+the+team+into+smaller+groups+and+take+on+an+escape+room+challenge.+This+activity+requires+communication%2C+teamwork%2C+problem-solving%2C+and+collaboration%2C+making+it+an+excellent+bonding+experience.%3Cbr%3E%3Cbr%3E%3Cb%3E2.+Outdoor+Adventure%3C%2Fb%3E%3Cbr%3EConsider+an+outdoor+activity+that%E2%80%99s+adventurous+and+allows+everyone+to+enjoy+nature.+Kayaking%2C+hiking%2C+or+a+bike+tour+can+be+exhilarating+and+a+great+way+for+the+team+to+bond+outside+the+office+setting.%3Cbr%3E%3Cbr%3E%3Cb%3E3.+Cooking+Class%3C%2Fb%3E%3Cbr%3EFind+a+local+cooking+class+where+your+team+can+learn+to+prepare+a+meal+together.+Not+only+does+this+promote+teamwork%2C+but+it+also+provides+a+shared+meal+at+the+end%2C+perfect+for+more+informal+conversations+and+bonding.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D
solution_tags:
- Finance
- HR
- Marketing
- Productivity
- Sales
systems:
- openai
time_in_minutes: 20
---

# Introduction

OpenAI provides advanced language models (LLMs) that are capable of understanding and generating human-like text. By leveraging OpenAI's Chat Completions API, you can access these models to process and retrieve information based on your queries.

In this tutorial, we will demonstrate how to use OpenAI's Chat Completions API to fetch the required information by interacting with its LLMs.

Let’s get started!

# **Prerequisites**

- **Install Postman**: Download and install [Postman](https://www.postman.com/) or another API testing tool to interact with OpenAI’s REST API.
- **Access to a OpenAI Instance**: Ensure you have an active OpenAI account with available API credits.

# **What are we building?**

### **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A6991%2C%22title%22%3A%22Mock+1%22%2C%22transcript%22%3A%7B%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43+AM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%7D%2C%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22%3Cp%3EI%27m+trying+to+come+up+with+some+fun+team+bonding+activities+to+do+at+our+offsite+this+Friday.+What+do+you+recommend+for+a+team+that%27s+in+their+mid+30s%3F%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22%3Cp%3E%E2%8F%B3+Calling+Plugin+%3Cb%3EAsk+GPT%3C%2Fb%3E%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EFor+a+group+in+their+mid-30s+seeking+fun+team+bonding+activities+at+an+offsite%2C+it%27s+a+great+idea+to+blend+both+playful+and+intellectually+stimulating+activities.+Here+are+a+mix+of+activities+that+could+cater+to+various+interests%3A%3Cbr%3E%3Cbr%3E%3Cb%3E1.+Escape+Room+Challenge%3C%2Fb%3E%3Cbr%3EDivide+the+team+into+smaller+groups+and+take+on+an+escape+room+challenge.+This+activity+requires+communication%2C+teamwork%2C+problem-solving%2C+and+collaboration%2C+making+it+an+excellent+bonding+experience.%3Cbr%3E%3Cbr%3E%3Cb%3E2.+Outdoor+Adventure%3C%2Fb%3E%3Cbr%3EConsider+an+outdoor+activity+that%E2%80%99s+adventurous+and+allows+everyone+to+enjoy+nature.+Kayaking%2C+hiking%2C+or+a+bike+tour+can+be+exhilarating+and+a+great+way+for+the+team+to+bond+outside+the+office+setting.%3Cbr%3E%3Cbr%3E%3Cb%3E3.+Cooking+Class%3C%2Fb%3E%3Cbr%3EFind+a+local+cooking+class+where+your+team+can+learn+to+prepare+a+meal+together.+Not+only+does+this+promote+teamwork%2C+but+it+also+provides+a+shared+meal+at+the+end%2C+perfect+for+more+informal+conversations+and+bonding.%3Cbr%3E%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- Triggers:
    1. Natural language
- Slots:
    1. A search query
- Actions
    1. Retrieve LLM output
- Guidelines
    1. None

# **API Research**

To build a search use case, you only need one API: the [Chat Completions](https://platform.openai.com/docs/api-reference/making-requests) endpoint.

Based on OpenAI's [Supported Models](https://platform.openai.com/docs/models/overview), you can select any model that fits your requirements. For example:

- **`gpt-4o-mini`**: A lightweight variant of GPT-4, optimized for efficiency and suitable for tasks requiring a balance of speed and accuracy.
- **`gpt-3.5-turbo`**: A cost-effective choice for simpler tasks and quick responses.
- **`gpt-4`**: Offers enhanced accuracy and reasoning capabilities for more complex queries.

Be mindful of [pricing](https://openai.com/pricing) when selecting a model.

**Note:** You can use any available OpenAI model for searching queries via the API. Choose a model that best aligns with your specific requirements for accuracy, speed and cost-efficiency.

# **API #1:** Perform a Chat Completion

The [Chat Completions](https://platform.openai.com/docs/api-reference/making-requests) API in OpenAI allows you to interact with language models in a conversational format. This API supports dynamic use cases such as question answering, summarization and live search queries. You can provide input messages and retrieve responses in a structured format.

```bash
curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
     "model": "gpt-4o-mini",
     "messages": [{"role": "user", "content": "Say this is a test!"}],
     "temperature": 0.7
   }'
```

# **Steps**

## **Step 1: Build HTTP Action**

Define your HTTP Actions to retrieve information by interacting with OpenAI's Chat Completions API :

1. **Perform a Chat Completion**
    - In Creator Studio, create a new Action.
        - Navigate to `Plugins` section > `Actions` tab
        - Click on `CREATE` to define a new action
            
            ![http image.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/http_image.png)
            
    - Click on the `IMPORT CURL` option and paste the following cURL command:
        
        ```bash
        curl https://api.openai.com/v1/chat/completions \
          -H "Content-Type: application/json" \
          -H "Authorization: Bearer $OPENAI_API_KEY" \
          -d '{
             "model": "gpt-4o-mini",
             "messages": [{"role": "user", "content": "Which team won the 2016 T20 World Cricket Tournament?"}],
             "temperature": 0.7
           }'
        ```
        
    - Click on `Use Existing Connector` > select the [OpenAI Connector](https://developer.moveworks.com/creator-studio/resources/connector?id=openai) that you just created > Click on `Apply`. This will populate the Base URL and the Authorization section of the API Editor.
    - **Input Variables** :
        - **user_query** : Example Value ( Which team won the 2016 T20 World Cricket Tournament? ).
            
            ![Screenshot 2025-01-08 at 11.58.20 AM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_11.58.20_AM.png)
            
    - Click on `Test` to check if the Connector setup was successful and expect a successful response as shown below. You will see the request response on the left side and the generated output schema on the right. If the output schema does not match the API response or fails to populate automatically, kindly click the `GENERATE FROM RESPONSE` button to refresh and align the schema with the API response.
        
        ![Screenshot 2025-01-08 at 11.58.59 AM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_11.58.59_AM.png)
        
    - Add the **API Name** and **API Description** as shown below, then click the `Save` button
    
      ![Screenshot 2025-01-08 at 12.29.37 PM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_12.29.37_PM.png)
    
    ## **Step 2: Build Compound Action**
    
    - Head over to the **Compound Actions** tab and click **CREATE**
        
        ![Screenshot 2025-01-08 at 12.06.31 PM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_12.06.31_PM.png)
        
    - Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName )
        
        ![Screenshot 2025-01-08 at 12.09.03 PM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_12.09.03_PM.png)
        
    - Click on the `Script editor` tab. Here you will be able to build your compound action using the YAML syntax. At a high-level, this syntax provides actions (HTTP Request, APIthon Scripts) and workflow logic (switch statements, for each loops, return statements, parallel, try/catch). See the [Compound Action Syntax](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/) Reference for more info.
        
        ```bash
        steps:
          - action:
              output_key: search_openai_based_on_query_result
              action_name: search_openai_based_on_query
              progress_updates:
                on_complete: Completed fetching required information
                on_pending: Fetching required information
              input_args:
                user_query: data.value
          - return:
              output_mapper:
                result: data.search_openai_based_on_query_result
        ```
        
    - Click on `Input fields` tab and click the `+Add` button. Here you will define the slots that you want to collect from users through the conversation and trigger your Workflow with. After defining the input fields, click the `Submit` button to save your changes.
        
        ![Screenshot 2025-01-08 at 12.41.16 PM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_12.41.16_PM.png)
        

### **Step 3: Publish Workflow to Plugin**

- Head over to the `Compound Actions` tab and click on the kebab menu ( `︙` )
- Next, click on `Publish Workflow to Plugin`
- First, verify your Plugin **Name** & **Short description** . This is autofilled from the name & description of your compound action.
    
    ![Screenshot 2025-01-08 at 12.14.00 PM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_12.14.00_PM.png)
    
- Next, consider whether to select the `User consent required before execution?` checkbox. Enabling this option prompts the user to confirm all slot values before executing the plugin, which is widely regarded as a best practice.
    
    ![Screenshot 2025-01-08 at 12.16.48 PM.png](Ask%20GPT%209dd61ae0e0594296baeeae85f2e66172/Screenshot_2025-01-08_at_12.16.48_PM.png)
    
- Click `Next` and set up your positive and negative triggering examples. This ensures that the bot triggers your plugin given a relevant utterance.
    - See our [guide](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) on Triggering
- Lastly, click `Next` and set the **Launch Rules** you want your plugin to abide by.
    - See our [guide](https://developer.moveworks.com/creator-studio/administration/launch-options/) on Launch Rules

### **Step 4: See it in action!**

- After clicking the final `Submit` button, your plugin will be published to the bot and triggerable based on your **Launch Rules.**
- You should wait up to **5 minutes** after making changes before trying to test in your bot!
- If you run into an issue:
    1. Check our [troubleshooting guides](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
    2. Understand your issue using Logs
    3. Reach out to Support

# **Congratulations!**

You just added OpenAI Online Search results to your Copilot! Check out our other guides for inspiration on what to build next.