---
availability: INSTALLABLE
description: A plugin which reports an error when booking or issuing a quote.
installation_asset_uuid: 1455a963-a93c-4e25-94c6-77cca76210aa
name: Look Up Booking or Quote Failure Reason
purple_chat_link: https://marketplace.moveworks.com/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+having+trouble+booking+a+quote.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+here+to+help+you+with+booking+a+quote.+Can+you+provide+me+with+more+details+about+the+issue%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+not+letting+me+finalize+the+booking+in+Salesforce.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Eretrieving+information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ESalesforce+Quote%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EIt+seems+like+your+quote+cannot+be+finalized+until+it+has+been+approved+by+your+manager.+The+current+status+is%3A+%3Cb%3EQuote+approval+pending%3C%2Fb%3E.+%3Cbr%3E%3Cbr%3EYou+should+message+your+manager%2C+Drew+Downs%2C+to+approve+it+first.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D
solution_tags:
- Sales
systems:
- salesforce
---

# View Booking or Quote Failure Reason

## **Introduction:-**

The **“View Booking or Quote Failure Reason”** Plugin empowers support and operations teams to instantly access detailed failure reasons for booking or quote processes within Salesforce. By providing real-time visibility into error messages or status issues, this plugin enables faster diagnosis, reduces back-and-forth with engineering teams, and improves overall resolution time.

This guide will walk you through installing and configuring the plugin in Agent Studio in just a few minutes. Let’s get started!

## **Prerequisites:-**

• Access to **Agent Studio**

## **What are we building?**

**Agent Design:-**

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat/?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+having+trouble+booking+a+quote.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22I%27m+here+to+help+you+with+booking+a+quote.+Can+you+provide+me+with+more+details+about+the+issue%3F%22%7D%5D%7D%2C%7B%22role%22%3A%22user%22%2C%22parts%22%3A%5B%7B%22richText%22%3A%22It%27s+not+letting+me+finalize+the+booking+in+Salesforce.%22%7D%5D%7D%2C%7B%22role%22%3A%22assistant%22%2C%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22status%22%3A%22success%22%2C%22richText%22%3A%22%3Cp%3E%E2%9C%85+Working+on+%3Cb%3Eretrieving+information%3C%2Fb%3E%3Cbr%3E%E2%8F%B3+Calling+Plugin+%3Cb%3ESalesforce+Quote%3C%2Fb%3E%3C%2Fp%3E%22%7D%5D%7D%2C%7B%22richText%22%3A%22%3Cp%3EIt+seems+like+your+quote+cannot+be+finalized+until+it+has+been+approved+by+your+manager.+The+current+status+is%3A+%3Cb%3EQuote+approval+pending%3C%2Fb%3E.+%3Cbr%3E%3Cbr%3EYou+should+message+your+manager%2C+Drew+Downs%2C+to+approve+it+first.%3Cbr%3E%3C%2Fp%3E%22%7D%5D%7D%5D%7D) shows the experience we are going to build.

## **Installation Steps:-**

We recommend creating the connector for **Salesforce** first, prior to installing this plugin. Please follow the  [Salesforce Connector](https://developer.moveworks.com/marketplace/package/?id=salesforce&hist=home) guide to set up the connector.

After you have configured the connector, Please refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for more details on how to install a plugin in Agent Studio.

## **Customization Process**

We are using a custom field for Quote, if you already have one, you can update the action to use your own field.

Below are the steps you can follow to create a custom field

### **Steps to Create ‘Quote’ Custom Field on Quote Module**

1. **Go to Setup**
    - Click the gear icon and select **Setup**
2. **Open Object Manager**
    - In Setup, select **Object Manager**.
    - Find and click Quote.
3. **Access Fields & Relationships**
    - Click **Fields & Relationships** in the left menu.
    - Click Next
4. **Create Quote Field**
    - Click **New**.
    - Choose **Text Area (Long)** as the field type, then click **Next**.
5. Configure Field Details
    - For **Field Label**, enter: `Status Comment`
    - The **Field Name, enter**: `Status Comment`
    - When you reach the **Field-Level Security** step during the custom field creation, **do not make any changes** to the default selections
    - Then, **click the Next button** to continue.
    - When you reach the **Add custom related lists** step during the custom field creation, **do not make any changes** to the default selections
    - Click the **Save & New** button

## **Appendix:-**

**API #1 : Get Quote by Email**

```bash
curl --location 'https://<API_Server_domain>/services/data/v63.0/query?q=SELECT+Id%2C+Name%2C+Status%2C+Status_Comment__c%2C+Owner.Email+FROM+Quote+WHERE+Owner.Email%3D%27<email>%27+AND+Name%3D%27<quote_name>%27+AND+Status+NOT+IN+(%27Approved%27%2C%27Accepted%27)' \
--header 'Authorization: Bearer <Your Access Token>'
```

**Query Parameters:**

- `email` (string) – The Salesforce user’s email address used to filter quotes by owner.
- `quote_name` (string) – The specific name of the Quote you want to retrieve. This filters the results to only return the quote that exactly matches the provided name.