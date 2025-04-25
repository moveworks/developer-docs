---
description: A plugin that enables an employee to query annual recurring revenue.
fidelity: GUIDE
name: Identify Annual Recurring Revenue
difficulty_level: INTERMEDIATE 
time_in_minutes: 20
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat-builder/?workspace=%7B%22title%22%3A%22My+Workspace%22%2C%22botSettings%22%3A%7B%22name%22%3A%22%22%2C%22imageUrl%22%3A%22%22%7D%2C%22mocks%22%3A%5B%7B%22id%22%3A3252%2C%22title%22%3A%22New+Mock%22%2C%22transcript%22%3A%7B%22messages%22%3A%5B%7B%22from%22%3A%22USER%22%2C%22text%22%3A%22What+is+the+ARR+for+IntelliTech%3F+They%27re+at+risk+of+churn.%22%7D%2C%7B%22from%22%3A%22ANNOTATION%22%2C%22text%22%3A%22Fetches+ARR+for+a+specific+customer+from+the+CRM+system.%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EChecking+ARR+for+IntelliTech+from+the+CRM.%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22from%22%3A%22BOT%22%2C%22text%22%3A%22%3Cp%3EFound+ARR+details+for+IntelliTech.%3Cbr%3E%3C%2Fp%3E%22%2C%22cards%22%3A%5B%7B%22title%22%3A%22%3Cp%3EARR+Information%3Cbr%3E%3C%2Fp%3E%22%2C%22text%22%3A%22%3Cp%3E%3Cb%3ECustomer%3A%3C%2Fb%3E+IntelliTech%3Cbr%3E%3Cb%3EARR%3A%3C%2Fb%3E+%241.2M%3Cbr%3E%3Cb%3EAccount+Manager%3A%3C%2Fb%3E+Alex+Reed%3Cbr%3E%3Cb%3ERisk+Level%3A%3C%2Fb%3E+High%3Cbr%3E%3C%2Fp%3E%22%2C%22buttons%22%3A%5B%7B%22style%22%3A%22PRIMARY%22%2C%22text%22%3A%22More+Actions%22%7D%2C%7B%22text%22%3A%22Refresh+Data%22%7D%2C%7B%22text%22%3A%22Cancel%22%7D%5D%7D%5D%7D%5D%2C%22settings%22%3A%7B%22colorStyle%22%3A%22LIGHT%22%2C%22startTime%22%3A%2211%3A43%2BAM%22%2C%22defaultPerson%22%3A%22GWEN%22%2C%22editable%22%3Atrue%2C%22botName%22%3A%22%22%2C%22botImageUrl%22%3A%22%22%7D%7D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce

---

# **Introduction :**

The **Salesforce_Identify_Annual_Recurring_Revenue**  plugin allows users to retrieve and analyze Annual Recurring Revenue (ARR) data directly from Salesforce through the Moveworks AI Assistant. With this plugin, users can quickly access key revenue metrics and insights.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

# **Prerequisites :**

- Access to Agent Studio
- [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) built in Creator Studio (follow the Salesforce Authentication guide to create your connector)

# **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/marketplace/plugin/?id=salesforce-identify-annual-recurring-revenue&hist=home%2Cbrws) shows the experience we are going to build.

# **Installation Steps**

While you can create a connector during plugin installation, we recommend creating a connector in **Agent Studio** beforehand to streamline the process. Please follow our **Salesforce Connector Guide** to do so. Once completed, follow our plugin installation documentation to install the **Salesforce_Identify_Annual_Recurring_Revenue** plugin in minutes.

After configuring the connector, refer to our installation documentation for more details on completing the setup.

# **Customization Process**

We are using a custom field for ARR, if you already have one, you can update the action to use your own field. 

Below are the steps you can follow to create a custom field 

## **Steps to Create MRR and ARR Custom Fields on Opportunity**

1. **Go to Setup**
    - Click the gear icon and select **Setup**.
2. **Open Object Manager**
    - In Setup, select **Object Manager**.
    - Find and click **Opportunity**.
3. **Access Fields & Relationships**
    - Click **Fields & Relationships** in the left menu.
4. **Create MRR Field**
    - Click **New**.
    - Choose **Currency** as the field type, then click **Next**.
    - Enter **Field Label** as "MRR" (Monthly Recurring Revenue) and adjust the **Field Name** if needed.
    - Complete the required details and click **Next**.
    - Set field-level security and add to page layouts as needed.
    - Click **Save & New** to create another field.
5. **Create ARR Field**
    - Choose **Formula** as the field type, then click **Next**.
    - Enter **Field Label** as "ARR" (Annual Recurring Revenue).
    - Set **Formula Return Type** to **Currency**.
    - In the formula editor, enter:
        
        `textMRR__c * 12`
        
    - Click **Check Syntax**, then **Next**.
    - Set field-level security and add to page layouts as needed.
    - Click **Save**.

# **Appendix**

### **API #1: Identify Annual Recurring Revenue**

The **Salesforce_Identify_Annual_Recurring_Revenue**   API retrieves a ARR(Annual Recurring Revenue) using Account Name.

```bash
curl --location '<YOUR_INSTANCE>.salesforce.com/services/data/v60.0/query?q=SELECT+SUM(ARR__c)+totalARR+FROM+Opportunity+WHERE+Account.Name+like+<Account_Name>' \
--header 'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

**Slots**:

1. Account name.