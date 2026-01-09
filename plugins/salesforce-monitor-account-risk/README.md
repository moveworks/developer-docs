---
availability: INSTALLABLE
description: A plugin that summarizes risks for a specific account.
installation_asset_uuid: c3df603e-bcaf-4614-8458-bde4403614f9
name: Monitor Account Risk
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+the+risks+for+IntelliFresh%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searches+Salesforce+for+the+account+and+associated+risks.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+summary+of+risks+for+IntelliFresh%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ERisk+1%3A+Payment+Delays%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDescription%3A%3C%2Fb%3E+IntelliFresh+has+a+history+of+late+payments.%3Cbr%3E%3Cb%3EImpact%3A%3C%2Fb%3E+High%3Cbr%3E%3Cb%3EProbability%3A%3C%2Fb%3E+Medium%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ERisk+2%3A+Contract+Renewal%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDescription%3A%3C%2Fb%3E+The+current+contract+is+up+for+renewal+in+3+months.%3Cbr%3E%3Cb%3EImpact%3A%3C%2Fb%3E+Medium%3Cbr%3E%3Cb%3EProbability%3A%3C%2Fb%3E+High%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ERisk+3%3A+Competitor+Activity%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Competitors+are+actively+targeting+IntelliFresh+with+similar+solutions.%3Cbr%3E%3Cb%3EImpact%3A%3C%2Fb%3E+High%3Cbr%3E%3Cb%3EProbability%3A%3C%2Fb%3E+High%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
video: https://www.loom.com/share/a9f447190a71408c97176c0d5e965ce8?sid=76d30f18-3dbc-4796-ad10-474f70c89170
---

## **Introduction :**

The **Monitor Account Risk** plugin monitors and summarizes potential risks associated with an Account in Salesforce, providing real-time insights to help teams take proactive action.

This guide will help you install and configure the plugin in Agent Studio within minutes. Let’s get started!

## **Prerequisites :**

- Access to Agent Studio

## **What are we building?**

### **Agent Design**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43%2BAM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22%3Cp%3EWhat+are+the+risks+for+IntelliFresh%3F%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22Searches+Salesforce+for+the+account+and+associated+risks.%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EHere+is+the+summary+of+risks+for+IntelliFresh%3A%3Cbr%3E%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ERisk+1%3A+Payment+Delays%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDescription%3A%3C%2Fb%3E+IntelliFresh+has+a+history+of+late+payments.%3Cbr%3E%3Cb%3EImpact%3A%3C%2Fb%3E+High%3Cbr%3E%3Cb%3EProbability%3A%3C%2Fb%3E+Medium%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ERisk+2%3A+Contract+Renewal%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDescription%3A%3C%2Fb%3E+The+current+contract+is+up+for+renewal+in+3+months.%3Cbr%3E%3Cb%3EImpact%3A%3C%2Fb%3E+Medium%3Cbr%3E%3Cb%3EProbability%3A%3C%2Fb%3E+High%3C%2Fp%3E%22%7D%2C%7B%22richText%22%3A%22%3Cb%3E%3Cp%3ERisk+3%3A+Competitor+Activity%3Cbr%3E%3C%2Fp%3E%3C%2Fb%3E%3Cbr%3E%3Cp%3E%3Cb%3EDescription%3A%3C%2Fb%3E+Competitors+are+actively+targeting+IntelliFresh+with+similar+solutions.%3Cbr%3E%3Cb%3EImpact%3A%3C%2Fb%3E+High%3Cbr%3E%3Cb%3EProbability%3A%3C%2Fb%3E+High%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

While you can create a connector during plugin installation, we recommend setting up the connector in **Agent Studio** beforehand to streamline the process. Please follow our [**Salesforce Connector Guide**](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home%2Cbrws#how-to-implement) for detailed instructions. Once completed, proceed to install the plugin and complete the setup efficiently.

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on completing the setup!

## **Customization Process**

To monitor and associate risk data with specific Accounts, we use a **custom object** named `Risk_Type__c` and create **custom fields** including lookup fields   `Risk_Probability__c`  `Risk_Impact__c`  `Risk_Description__c` 

If you already have similar customizations, you can update the plugin’s action to reference your existing object and fields.

If not, follow the steps below to create the custom object and required fields.

## Steps to Create ‘Risk type’ Custom Object on Accounts module

**1. Go to Setup**

- Click the **gear icon** in the top right corner of Salesforce.
- Select **Setup**.

**2. Open Object Manager**

- In the **Setup** menu, click **Object Manager**.

**3. Create New Custom Object**

- Click the **Create** dropdown and choose **Custom Object**.
- Fill in the details:
    - **Label:** `Risk Type`
    - **Plural Label:** `Risk Type`
    - **Object Name:** `Risk Type`
        - Select:
            
            **Allow Reports**
            
            **Allow Activities**
            
            **Track Field History**
            
- Click **Save**.

Once saved, your custom object `Risk_Type__c` is created and ready for field setup.

## Steps to Create Custom Fields on Risk Type Custom Object

**1. Access the Risk Object**

- In **Object Manager**, search for and select **Risk**.

**2. Add a New Field**

- Click **Fields & Relationships** in the left sidebar.
- Click **New** to create a new field.

**3. Choose Field Type**

- Select **Lookup Relationship**, then click **Next**.

**4. Configure Field Details**

- **Field Label:** `Risk Description`
- **Field Name:** `Risk Description`
    
    (Salesforce will auto-create the API name as `Risk_Description__c`)
    

**5. Field-Level Security**

- Leave the default selections as they are.
- Click **Next**.

**6. Add Custom Related Lists**

- Do not make any changes to this step.
- Click **Save & New** to continue adding the custom fields - `Risk_Probability`  and `Risk_Impact` , following the same steps.

## **Appendix**

### **API #1: Get Risk Details For Account Name**

The  **Monitor Account Risk** API retrieves risk details related to a specific account by account name from the custom object

```bash
curl --location 'https://<YOUR_DOMAIN>/services/data/v60.0/query/?q=SELECT+Risk_Description__c%2C+Name%2C+Account__c%2C+Risk_Impact__c%2C+Risk_Probability__c+FROM+Risk_Type__c+WHERE+Account__r.Name+%3D+%27<account_name>%27' \
--header'Authorization: Bearer <ACCESS_TOKEN>' \
--header 'Content-Type: application/json' \

```

### **Query Parameter:**

- **`account_name`:** Filters and retrieves risks from `Risk_Type__c` for the given Account Name