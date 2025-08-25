---
availability: IDEA
description: A plugin that allows users to get the current status of a draft Knowledge
  Article and next steps in the workflow.
fidelity: GUIDE
name: Look Up Status and Next Steps of a Draft Knowledge Article
difficulty_level: BEGINNER
time_in_minutes: 15
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ECan+you+get+me+the+status+of+a+draft+Knowledge+Article+in+ServiceNow%3F%3C%2Fp%3E%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%2C+I+can.+Please+provide+the+Knowledge+Article+number+or+a+short+description+of+the+article.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+the+one+about+setting+up+a+new+VPN%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+ServiceNow+for+knowledge+articles+matching+%5C%22setting+up+a+new+VPN%5C%22...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+found+a+few+articles+that+match+your+description.+Which+one+are+you+looking+for%3F%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22KB0010024%3A+How+to+set+up+a+new+VPN+connection%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22KB0010028%3A+Troubleshooting+common+VPN+issues%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22KB0010035%3A+VPN+access+for+new+employees%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22KB0010024%3A+How+to+set+up+a+new+VPN+connection%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Retrieving+status+for+KB0010024+in+ServiceNow...%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EThe+knowledge+article+%3Cb%3EHow+to+set+up+a+new+VPN+connection%3C%2Fb%3E+is+currently+in+the+%3Cb%3EReview%3C%2Fb%3E+stage.%3C%2Fp%3E%3Cp%3EThe+next+step+is+for+it+to+be+approved+by+the+Knowledge+Management+team+lead%2C+Sarah+Jenkins.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22KB0010024%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
systems:
- servicenow

---
## **Introduction**

The **"ServiceNow Look Up Status of a Knowledge Article"** plugin enables users to quickly check the current status of knowledge articles within the ServiceNow platform. By entering an article number or short description, users can retrieve key information such as **Title, Status, Knowledge Base, Author, and Last Updated Date**.

This guide will walk you through installing and configuring the plugin in **Agent Studio** in just a few minutes. Let’s get started!

## **Prerequisites**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://marketplace.moveworks.com/purple-chat?conversation=%7B%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+check+the+status+of+a+knowledge+article.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+look+up+a+knowledge+article+for+you.+Please+provide+the+article+number+%28e.g.%2C+KB0010873%29+or+some+keywords+from+its+title.%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22VPN+Mac+OS%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Searching+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EServiceNow%3C%2Fb%3E+for+articles+matching+%27VPN+Mac+OS%27%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EI+found+these+matching+knowledge+articles.+Please+select+the+one+you+want+to+check+by+replying+with+the+number.%3C%2Fp%3E%3Col+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cb%3EKB0010873%3C%2Fb%3E+-+How+to+Fix+VPN+Connection+Problems+on+Mac+OS%3C%2Fli%3E%3Cli%3E%3Cb%3EKB0010551%3C%2Fb%3E+-+Ordering+a+new+VPN+token%3C%2Fli%3E%3C%2Fol%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22KB0010873%22%2C%22connectorName%22%3A%22servicenow%22%7D%2C%7B%22citationTitle%22%3A%22KB0010551%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%221%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Fetching+details+for+knowledge+article+%3Cb+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EKB0010873%3C%2Fb%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EHere+are+the+details+for+knowledge+article+%3Cstrong%3EKB0010873%3C%2Fstrong%3E%3A%3C%2Fp%3E%3Cul+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3E%3Cli%3E%3Cstrong%3ETitle%3A%3C%2Fstrong%3E+How+to+Fix+VPN+Connection+Problems+on+Mac+OS%3C%2Fli%3E%3Cli%3E%3Cstrong%3EStatus%3A%3C%2Fstrong%3E+Review%3C%2Fli%3E%3Cli%3E%3Cstrong%3EKnowledge+Base%3A%3C%2Fstrong%3E+IT+Support%3C%2Fli%3E%3Cli%3E%3Cstrong%3EAuthor%3A%3C%2Fstrong%3E+Jane+Doe%3C%2Fli%3E%3Cli%3E%3Cstrong%3ELast+Updated%3A%3C%2Fstrong%3E+August+15%2C+2025%3C%2Fli%3E%3C%2Ful%3E%3Cp+xmlns%3D%5C%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxhtml%5C%22%3EThe+status+is+%3Cstrong%3EReview%3C%2Fstrong%3E%2C+which+means+the+article+has+been+submitted+and+is+waiting+for+approval+from+a+knowledge+manager.%3C%2Fp%3E%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22KB0010873%22%2C%22connectorName%22%3A%22servicenow%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps**

We recommend setting up **ServiceNow** before installing this plugin. Please follow the [ServiceNow Connector](https://marketplace.moveworks.com/connectors/servicenow#how-to-implement) guide to configure the connection.

**Specifically, confirm the following permissions are granted:**

- **Table Access:**
    - `Read` access to the **kb_knowledge** table.
- **Field Access:**
    - `Read` access to the **short_description**, **number**, **workflow_state**, and **knowledge_base** fields.

Once the connector is successfully configured, follow our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for detailed steps on how to install and activate the plugin in **Agent Studio**.

## **Appendix**

### **API #1: Get Knowledge Article By Short Description:**

```bash
curl --location --request GET 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge?sysparm_query=short_descriptionLIKE{{short_desc}}&sysparm_fields=short_description,workflow_state,author.name,sys_updated_on,kb_knowledge_base,number" ' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

`short_desc` :(string) - Filters the short description of the article.

### **API #2: Get Knowledge Article By Number:**

```bash
curl --location --request GET 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge?sysparm_query=number={{article_number}}&sysparm_fields=short_description,workflow_state,author.name,sys_updated_on,kb_knowledge_base,number" ' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Accept: application/json' \
```

**Query Parameter:**

`article_number` :(string) - Filters by article number.

### **API #3: Get Title Of Knowledge Article:**

```bash
curl --location --request GET 'https://<YOUR_INSTANCE>/api/now/table/kb_knowledge_base?sysparm_query=sys_id={{knowledge_base_id}}&sysparm_fields=title' \
--header 'Authorization: Bearer <YOUR_INSTANCE>' \
--header 'Accept: application/json' \
```

**Query Parameter:**

`knowledge_base_id` :(string) - Filters the title of the article using knowledge base value.