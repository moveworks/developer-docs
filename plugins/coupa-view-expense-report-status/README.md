---
description: A plugin that allows a user to easily see a summary of their expense reports
  reports.
fidelity: GUIDE
difficulty_level: BEGINNER
time_in_minutes: 30
accreditations: 
- DEFAULT
name: View My Expense Reports Details
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+the+status+of+my+expense+reports%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+for+user%27s+expense+reports+in+the+expense+management+system%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+current+expense+report+statuses%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Client+Meeting+in+New+York%3C%2Fb%3E%3Cbr%3EReport+ID%3A+%3Cb%3EER-123%3C%2Fb%3E%3Cbr%3ECreated+On%3A+%3Cb%3E2024-01-15%3C%2Fb%3E%3Cbr%3ETotal+Amount%3A+%3Cb%3E%24500.00%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EApproved%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Conference+Trip+to+San+Francisco%3C%2Fb%3E%3Cbr%3EReport+ID%3A+%3Cb%3EER-124%3C%2Fb%3E%3Cbr%3ECreated+On%3A+%3Cb%3E2024-02-20%3C%2Fb%3E%3Cbr%3ETotal+Amount%3A+%3Cb%3E%241200.00%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EPending+Approval%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Team+Building+Activities%3C%2Fb%3E%3Cbr%3EReport+ID%3A+%3Cb%3EER-125%3C%2Fb%3E%3Cbr%3ECreated+On%3A+%3Cb%3E2024-03-01%3C%2Fb%3E%3Cbr%3ETotal+Amount%3A+%3Cb%3E%24300.00%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EIncomplete%3C%2Fb%3E%3Cbr%3EPlease+complete+the+remaining+sections+to+proceed.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
=======
fidelity: IDEA
name: View Expense Report Details
solution_tags:
- Finance
systems:
- coupa

---

# Introduction

Expense management is crucial for many companies, allowing them to ensure efficiency, reduce costs, and plan better. Coupa, a leading spend management platform, provides powerful tools for managing and tracking expenses.

Integrating Coupa's expense management capabilities with your organizational workflows can empower your employees to manage their expenses better, without additional overhead on the finance team.

This guide walks you through setting up the “View My Expense Reports” feature on Coupa. This feature enables users to easily access and review detailed information about their expense reports, such as report status, expense category, and amount.

# Prerequisites

- [Postman](https://www.postman.com/) or an API Testing Tool
- Coupa Connector built in Creator Studio (follow the [Coupa Connector Guide](https://developer.moveworks.com/creator-studio/resources/connector?id=coupa) to create your connector)
- Make sure you have the following scopes. More details here
    - core.expense.read
    - core.expense.secure.read
    - core.expense.secure.write
    - core.expense.write

# **What are we building?**

## **Conversation Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Can+you+tell+me+the+status+of+my+expense+reports%3F%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searches+for+user%27s+expense+reports+in+the+expense+management+system%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+your+current+expense+report+statuses%3A%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Client+Meeting+in+New+York%3C%2Fb%3E%3Cbr%3EReport+ID%3A+%3Cb%3EER-123%3C%2Fb%3E%3Cbr%3ECreated+On%3A+%3Cb%3E2024-01-15%3C%2Fb%3E%3Cbr%3ETotal+Amount%3A+%3Cb%3E%24500.00%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EApproved%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Conference+Trip+to+San+Francisco%3C%2Fb%3E%3Cbr%3EReport+ID%3A+%3Cb%3EER-124%3C%2Fb%3E%3Cbr%3ECreated+On%3A+%3Cb%3E2024-02-20%3C%2Fb%3E%3Cbr%3ETotal+Amount%3A+%3Cb%3E%241200.00%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EPending+Approval%3C%2Fb%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3EExpense+Report%3A+Team+Building+Activities%3C%2Fb%3E%3Cbr%3EReport+ID%3A+%3Cb%3EER-125%3C%2Fb%3E%3Cbr%3ECreated+On%3A+%3Cb%3E2024-03-01%3C%2Fb%3E%3Cbr%3ETotal+Amount%3A+%3Cb%3E%24300.00%3C%2Fb%3E%3Cbr%3E%3Cp%3EStatus%3A+%3Cb%3EIncomplete%3C%2Fb%3E%3Cbr%3EPlease+complete+the+remaining+sections+to+proceed.%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Creator Studio Components**

- **Triggers**:
    1. Natural Language
- **Slots**:
    1. None
- **Actions**:
    1. **Retrieve Expense Reports of the User**:
        - Query the expense reports of the user
    2. Guidelines:
        1. None

# **API Research**

For building this plugin, we’ll be using Coupa’s REST APIs, specifically the [Expense Report API](https://compass.coupa.com/_dita_/en-us/documentation/plat/integ/coupa_core_api/topics/expense_reports_api.dita), which provides methods for accessing and manipulating Expense Reports. 

The API provides filtering options as well, which we will be using to extract meaningful data. It also allows us to prune the response body to make sure we get only the fields in the payload which are helpful to us.

```bash
curl --location --globoff --request GET '[https://your-instance.coupacloud.com/api/expense_reports?expensed-by[email]=example%40example.com&fields=["id"%2C "created-at"%2C "updated-at"%2C "title"%2C "status"%2C "type-of-expense"%2C {"expense_lines"%3A["description"%2C"approved-amount"%2C"amount"]](https://moveworks-usa-coupalink-demo.coupacloud.com/api/expense_reports?expensed-by%5Bemail%5D=sbhadwal%40moveworks.ai&fields=%5B%22id%22%2C%20%22created-at%22%2C%20%22updated-at%22%2C%20%22title%22%2C%20%22status%22%2C%20%22type-of-expense%22%2C%20%7B%22expense_lines%22%3A%5B%22description%22%2C%22approved-amount%22%2C%22amount%22%5D)}%2C%20%22auditor-note%22%2C%20%22total%22%2C%20%22audit-score%22]' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer YOUR_ACCESS_TOKEN’ \
```

# Steps

Let’s now head over to the Creator Studio to make the plugin. 

## **Step 1: Build HTTP Action**

We first need to define the HTTP Action for fetching all the details of assets with an individual. To do so: 

- In Creator Studio, create a new Action.
    - Navigate to `Plugins` section > `Actions` tab
    - Click on `CREATE` to define a new action
    
    ![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image.png)
    
- Let’s first take care of the Authorization needed for accessing the API. 

Click on `Use Existing Connector` > select the [Coupa](https://developer.moveworks.com/creator-studio/resources/connector/?id=coupa) connector that you just created > Click on `Apply`. 

This will populate the Authorization details needed for the API request to be successful.
- Next, click on the `IMPORT CURL` option and paste the following cURL command:
    
    ```bash
    curl --location --request GET 'https://your-instance.coupacloud.com/api/expense_reports'
    ```
    

- We will now add relevant filtering query parameters which will help us get the result we want.
- Click on the Params tab. We’ll be adding 2 query parameters. They are as follows:
    - Keys:
        - expensed-by[email]
        - fields
    - Values:
        - {{user_email_id}}
        - ["id", "created-at", "updated-at", "title", "status", "type-of-expense", {"expense_lines":["description","approved-amount","amount"]}, "auditor-note", "total", "audit-score"]

Adding these parameters helps us filter the response by the user’s email address and reduce the response body to output only relevant details such as the ID of the report, its title, status etc. This is demonstrated in the screenshot below. 

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%201.png)

Notice the {{user_email_id}} value for the sysparm_query parameter. The double curly braces indicate that this value needs to be fetched as an Input Variable. 

- Head over to the Input Variables tab. Here’s what we’ll be adding:
    - Name: user_email_id
    - Description: user_email_id
    - Example Value: example@email.com
    - Data Type: string

This is shown in the screen shot below. 

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%202.png)

- Click on **Test** to verify if the Connector setup was successful. You should see a successful response, as demonstrated below. The request's response will appear on the left side, and the generated output schema will be displayed on the right. 

If the output schema does not align with the API response or fails to populate automatically, please click the **GENERATE FROM RESPONSE** button to refresh and synchronize the schema with the API response.

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%203.png)

- Add the **API Name** and **API Description** as shown below, then click the `Save` button.

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%204.png)

## **Step 2: Build Compound Action**

- Head over to the **Compound Actions** tab and click **CREATE**

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%205.png)

- Give your Compound Action a **Name** and **Description** , then click `Next` Note: Name only letters, numbers, and underscores. We suggest using snake case or camel case formatting (e.g. Workflow_name or workflowName ). Here’s an example:

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%206.png)

Click Next. 

- Click on the **Script Editor** tab. Here, you can build your compound action using YAML syntax. This syntax allows for defining actions (such as HTTP Requests and APIthon Scripts) and workflow logic (including switch statements, for-each loops, return statements, parallel execution, and try/catch blocks). 

For more details, refer to the [Compound Action Syntax Reference](https://developer.moveworks.com/creator-studio/reference/compound_actions_syntax/).

```bash
steps:
  - action:
      output_key: get_expense_report_details_of_user_result
      action_name: get_expense_report_details_of_user
      progress_updates:
        on_complete: ON_COMPLETE_MESSAGE
        on_pending: ON_PENDING_MESSAGE
      input_args:
        user_email_id: meta_info.user.email_addr
  - return:
      output_mapper:
        MAP():
          converter:
            total: item.total
            id: item.id
            expense_lines: item["expense-lines"]
            expense_report_created_at: item["created-at"]
            title: item.title
            expense_report_updated_at: item["updated-at"]
            status: item.status
            expense_type: item["type-of-expense"]
          items: data.get_expense_report_details_of_user_result
```

## **Step 3: Publish Workflow to Plugin**

- Navigate to the **Compound Actions** tab and click on the kebab menu (︙).
- Next, select **Publish Workflow to Plugin**.
- First, verify your **Plugin Name** and **Short Description**.

![image.png](View%20My%20Expense%20Report%20Details%2011b588d8909f8041ae22c8bcc57a1ed8/image%207.png)

Note: Decide whether to select the **User consent required before execution?** checkbox. Enabling this option prompts users to confirm all slot values before the plugin executes, which is widely considered a best practice.

- Click **Next** and set up your positive and negative triggering examples. This ensures that the bot activates your plugin in response to relevant utterances.

Refer to our guide on [**Triggering**](https://developer.moveworks.com/creator-studio/conversation-design/triggers/natural-language-triggers/#how-to-write-good-triggering-examples) for more information.
- Finally, click **Next** and configure the Launch Rules that you want your plugin to adhere to.

Refer to our guide on [**Launch Rules**](https://developer.moveworks.com/creator-studio/administration/launch-options/) for additional details

## **Step 4: See it in Action!**

After clicking the final **Submit** button, your plugin will be published to the bot and will be trigger-able based on your Launch Rules.

Please wait up to 5 minutes after making changes before testing in your bot.

If you encounter any issues:

- Check our [**troubleshooting guides**](https://developer.moveworks.com/creator-studio/troubleshooting/support/)
- Use **Logs** to understand the issue
- Reach out to **Support**

## Congratulations!

Copilot’s users should now be able to get details of their expense reports through chat. Explore our other guides for more inspiration on what to build next.