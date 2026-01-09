---
availability: INSTALLABLE
description: A plugin that creates an account in salesforce.
installation_asset_uuid: d57ca950-bb78-4122-beca-bf1c692153d5
name: Create an Account
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+new+account+in+Salesforce%2C+the+name+is+ABC+Corp+and+their+address+is+1234+Main+Street%2C+San+Jose%2C+CA+95123%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+I+can+help+with+that.+To+confirm%2C+are+you+the+owner+of+the+account%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+create+the+account+with+the+following+details%3A%5Cn%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+account+details%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EAccount+Name%3A%3C%2Fb%3E+ABC+Corp%3Cbr%3E%3Cb%3EAddress%3A%3C%2Fb%3E+1234+Main+Street%2C+San+Jose+CA+95123%3Cbr%3E%3Cb%3EAccount+Owner%3A+%3C%2Fb%3EGwen%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Account+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+ABC+Corp+Account+in+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+created+the+account%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ABC+Corp%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# **Introduction:**

The **Salesforce Create Account** plugin enables users to seamlessly create and manage new account records in Salesforce directly through the Moveworks AI Assistant. This streamlined process eliminates manual data entry, saving time and ensuring accuracy.

This guide will walk you through the installation and configuration of the plugin in Agent Studio, allowing you to automate account creation effortlessly. Let’s begin!

# **Prerequisites :**

- Access to Agent Studio

# **What are we building?**

### **Agent Design**

This [purple chat](ttps://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+need+to+create+a+new+account+in+Salesforce%2C+the+name+is+ABC+Corp+and+their+address+is+1234+Main+Street%2C+San+Jose%2C+CA+95123%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Sure%2C+I+can+help+with+that.+To+confirm%2C+are+you+the+owner+of+the+account%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Yes%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22richText%22%3A%22Okay%2C+I+can+create+the+account+with+the+following+details%3A%5Cn%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3EPlease+confirm+the+account+details%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EAccount+Name%3A%3C%2Fb%3E+ABC+Corp%3Cbr%3E%3Cb%3EAddress%3A%3C%2Fb%3E+1234+Main+Street%2C+San+Jose+CA+95123%3Cbr%3E%3Cb%3EAccount+Owner%3A+%3C%2Fb%3EGwen%3C%2Fp%3E%22%7D%2C%7B%22buttons%22%3A%5B%7B%22buttonText%22%3A%22Create+Account+in+Salesforce%22%2C%22style%22%3A%22filled%22%7D%2C%7B%22buttonText%22%3A%22Edit+Details%22%2C%22style%22%3A%22outlined%22%7D%2C%7B%22buttonText%22%3A%22Cancel%22%2C%22style%22%3A%22outlined%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22Creating+ABC+Corp+Account+in+Salesforce...%22%2C%22status%22%3A%22pending%22%7D%5D%7D%2C%7B%22richText%22%3A%22I+created+the+account%21%22%7D%2C%7B%22citations%22%3A%5B%7B%22citationTitle%22%3A%22ABC+Corp%22%2C%22connectorName%22%3A%22salesforce%22%7D%5D%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) Guide to do so. Once completed, follow our plugin installation documentation to install the **Create Account** plugin in minutes.

## **Required Permissions:**

- **Read**
    - Access to the **Account** object
- **Edit**
    - Ability to modify **Account** fields post-creation

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup

# **Appendix**

## API #1: Create Account.

The Create Account API is used to create a account in salesforce. 

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v62.0/sobjects/Account/' \
--header 'Authorization: Bearer' \
--header 'Content-Type: application/json' \
--data '{
"Name" : ":<Account_Name>",
"BillingStreet": "<Billing_Streeet>",
"BillingCity": "<Billing_City>",
"BillingState": "<Billing_state>",
"BillingCountry": "<BillingCountry>"
}'
```